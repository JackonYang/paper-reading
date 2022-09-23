# 为什么需要 AI-compiler

Created: 2022-08-19 21:03

## Summary

陈天奇的入门课 [machine-learning-compilation-tianqi-chen](machine-learning-compilation-tianqi-chen.md)
课程里，叫 machine learning compiler，简称 MLC。

## 传统编译器的 Milestone

### 史前混乱期

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h5cdo1xhubj20wu0nwaai.jpg)

### 基于 IR 的大一统时代

IR（Intermediate Representation） 是 compiler 的关键术语。

代表性的工作是 LLVM [llvm-cookbook](../paper-notes/llvm-cookbook.md)

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h5cdrs0g8zj20zk06vaab.jpg)


| 模块 | 输入 | 输出 | 功能 |
| --- | --- | --- | --- |
| 前端(frontend) | C / C++ / Fortran 等 | IR | AST 解析 |
| 中端(pass) | 原始的 IR | 优化后的 IR | 各种 IR 优化。如，死代码消除，循环优化 |
| 后端(codegen) | 优化后的 IR | 编译的目标文件 | 硬件的平台相关优化与硬件指令生成 |

## Inference 框架的大一统

### 目标

现状，一家硬件公司一套 inference 框架。详细清单 [deep-learning-framework-list](deep-learning-framework-list.md)

| 公司 | 框架 |
| --- | --- |
| Intel | OpenVINO |
| ARM | ARM NN |
| nvidia | TensorRT |

大一统设想

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h5ce48cbfqj20zk0oa0tk.jpg)

因为 deep learning 是 compute graph。所以，中间的 IR 又叫 graph IR

细化后的 inference framework 如下：

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h6cdg3z17dj21400dy751.jpg)

### 主要的工作

1. TVM
2. MILR
3. NCNN

## TVM 简介

### TVM 处理流程

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h5cekoy28oj20zk0b774p.jpg)

### TVM 架构图

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h5cfn42d27j21av0o4jsx.jpg)

## TVM 演进历史

### 版本概述

1. TVM Stack: 2017-08-17 发布
2. NNVM: 2017-10-06(一个月后) 发布，定位是 compiler。
3. Relay: NNVM 的下一代
4. Auto TVM: 自动调参数
5. Relax: Relay 的下一代(2022.08.19 尚未发布)

当前，对 Relay/Relax 的定位，更多的是一种语法，用来描述计算图 (compute graph)。

### NNVM release Notes

With the help of TVM stack, NNVM compiler can:

1. Represent and optimize the common deep learning workloads in high level graph IR
2. Transform the computation graph to minimize memory utilization, optimize data layout and fuse computation patterns for different hardware backends.
3. Present an end to end compilation pipeline from front-end deep learning frameworks to bare metal hardwares.

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h5cfymn4c7j21gb0lqtae.jpg)

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h5cgkodvhxj21ay0hldh6.jpg)

### Relay Release Notes

TODO

# 意义

1. 针对不同硬件的加速优化，自动化水平更高。
2. 一处加速优化，不同硬件都能用。
3. training 框架也可以上 AI-compiler。比如，训练数据敏感，需要在端上设备做 training。

# Reference

图片主要来自: [手把手带你遨游TVM-知乎-蓝色](https://zhuanlan.zhihu.com/p/50529704)

1. https://tvm.apache.org/2017/10/06/nnvm-compiler-announcement
2. [手把手带你遨游TVM-知乎-蓝色](https://zhuanlan.zhihu.com/p/50529704)
3. [【从零开始学深度学习编译器】一，深度学习编译器及TVM 介绍](https://mp.weixin.qq.com/s/sZLWjYebbHjCgQ6XAZCiOw)
