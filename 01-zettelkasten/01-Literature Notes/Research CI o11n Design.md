# Research CI Scheduler Design

Created: 2019-12-25 21:04

## 文档目的

介绍 Research CI 编排与调度组件的演进历史（踩过的坑）、架构设计和未来规划。

命名为 o11n，orchestration 缩写。约等于 k8s 之于 kubernetes。

## 为什么又一个 CI Scheduler

现代 CI 都是 pipeline 的，更抽象的说，都是 DAG （有限无环图）。

Jenkinsfile、Airflow、Argo 等开源组件，都不同程度的回答了 pipeline 的编排与调度。为什么还要做 CI Scheduler？

开源组件都没有回答“如何满足业务需求”，比如：

1. 回归测试、发布测试、日常测试的分别需要哪些 stages 和 substages，以什么顺序运行。
2. 每个 stage，比如编译/测试，恰当的运行流程是什么，需要做哪些容错处理。编译 step 报错直接终止 pipeline，测试 step 报错 pipeline 其他 step 继续。
3. 功能测试、速度测试、算法性能测试等，每个 step 分配哪些计算资源(CPU / GPU / memory 等)。
4. 如何调度，使得大任务、小任务、高优先级任务的用户，都能满意。
5. 如何端到端的提高 CI 稳定性，比如：增加 retry 策略、cache 已成功的 step、有随机性的任务自动多分发等。

CI Scheduler 组件，负责回答以上问题。

模块位置如下

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h2f6g29746j216s0ds0ue.jpg)

## Research CI Pipeline 介绍

一个典型的 CI 任务，是一个 pipeline。为了易于用户理解 & 开发，我们对 Pipeline 模型进行了抽象。

1. 一个 pipeline 由多个 **串联（sequential）stage** 构成，比如 编译、UT、test、钉钉通知。
2. 一个 stage 由多个**并行（parallel)  substage** 构成。比如 同时编译多个不相干的 project，并发运行一个 project 的多个独立测试用例。

CI Pipeline 的信息流模型如下

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h2f6iiy1m5j21600dsgmh.jpg)

小白用户看到的流程如下：

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h2f6j0z756j20kv08n0sx.jpg)

## 设计目标

1. 发布物是 docker image。支持裸机、k8s 环境执行，也可以在代码中通过 shell 命令触发 docker 运行。
2. 典型的 API 是，docker image 通过环境变量接收用户输入参数，返回(echo to stdout)可用的 taskbook。
3. taskbook 的输出，支持多种工具的 schema 语法。比如，Jenkins、k8s、Argo 等。
4. 可扩展性，支持快速开发和集成新的 pipeline。
5. 可观测性好，用户支持的人力成本低。关键数据打点详实，可以支撑各种报表和数据分析的需求，使得用户有能力自助解决问题。

**不做什么**：

1. 不负责 taskbook 如何执行。执行取决于底层 infra 的构成和拓扑结构，无法统一实现。可以使用 Jenkins、Argo、airflow 等各种引擎解决。

## 术语定义

- Taskbook: 执行的输出物。描述一个任务该如何执行的数据结构，下文有 taskbook 的详细 schema。
- Pipeline: Jenkins 术语。一个 Jenkinsfile 对应的场景，比如回归测试、切阈值、模型打包
- workflow：Argo 术语，对应于 Jenkins 的 pipeline。
- job: Jenkins 术语，Jenkins webUI 上，一个 build 入口，是一个 job。一个 job，可以通过 event 机制，触发多个 pipeline
- build: job 执行一次是 1 个 build，一个 build 有唯一的 build_id 标识。
- stage: 1 个 build 由多个 stage 构成。相同 job 的不同 build，可能有不同的 stage。
- substage：1 个 stage 可以拆分为多个 substage，通过 parallel 关键词并行执行 substages

## Taskbook 数据结构设计

```javascript
{
    "err_no": <int>,  # 0 means no error
    "msg": <string>,  # success, or global error message
    <stage_name: string>: {
        "err_no": <int>,  # 0 means no error
        "msg": <string>,  # success, or error message of the stage
        "substages": [
            {
                "substage_name": <string>,
                "label": <string>,
                "hardware_mode": <string>,
                "project_name": <string>,
                "stage_key": <string>,  # shortcut name of stage_name
                "build_cate": <string>,  # JOB_NAME in Jenkins
                "build_id": <int>,  # BUILD_ID in Jenkins
                "use_k8s": <boolean>,
 
 
                # optional if use_k8s==false
                "cloud": "k8s-cloud-name",
                "container_name": "docker-container-name",
                "gpu_count": <int>,
                "resource_template_name": <string>,
                "resource_template": {
                    key: value<string, list, int>
                }
                "yaml": <string>,
 
 
                # optional. only used in test stage
                "test_level": <string>,
                "test_type": <string>,
                "case_list": [
                    {
                        "case_name": <string>,
                        "case_info_xxx": <string>
	                }
                ],
                "encrypt_type": <string>,
                "test_method": <string>
            },
    ]
}
```

## 方案演进

### Jenkins + CI Scheduler

主要流程：

1. CI Scheduler 提供了常用 API 封装，并暴露唯一的 shell 入口 + 不同的参数组合
2. 编排阶段，Jenkinsfile 以 docker 命令调用 CI Scheduler，拿到 json 格式的 taskbook
3. 运行阶段，比如 compile stage，从 taskbook 中拿到 substages，组装为 Jenkins 的 jobs，然后 parallel 发射给执行器。

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h2f6t75oghj20mk0pvmyg.jpg)

### Argo + CI Scheduler

主要的变化是，把 Jenkins Pipeline 换成了 Argo Workflow。提升 CI 的稳定性是主要目的。

Jenkins k8s 不稳定的原理分析：

1. jenkins 与 k8s 之间是长连接
2. Jenkins Master 节点单点故障

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h2f6ufj79nj20gz0e9t91.jpg)

## CI Scheduler 内的工作流程

设计要点：

1. 入口和出口的数据打点，要保证正确性。方便后续做 replay、测试报表等关键功能。
2. 全部 on k8s 运行，包括 CI Scheduler、编译、测试等流程。
3. 在 Argo 流程中，如何引入 非 k8s 运行的 step，未思考过。

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h2f6v8x4dgj20fi0ligm0.jpg)

## Dry Run 能力

原理：

1. 耗时的代码段，运行前检查环境变量，确定是否真实运行。
2. 如果不真实运行，根据环境变量，返回模拟结果。
3. 环境变量的默认值，针对 dry run 场景。
4. 在 CI 或需要真实运行时，手动设置环境变量并运行。比如: `FAKE_COMPILE_RETCODE=1 python compile_project.py`

## References

1.
