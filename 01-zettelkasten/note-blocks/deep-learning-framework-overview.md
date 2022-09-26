# Deep Learning Framework Overview

Created: 2022-08-19 21:59

## 训练框架

- TensorFlow, Google
- Pytorch, FaceBook
- MxNet, Amazon
- Caffe, Caffe2
- CoreML，苹果，代码保密
- Paddle, 百度。徐伟，百度第一位 T11。后任地平线AI首席科学家。
- MegEngine, 旷视
- Mindspore, 华为
- OneFlow, 一流科技

## 推理框架

- OpenVINO, Intel
- ARM NN, ARM
- TensorRT, nvidia
- ONNXRuntime. ONNX 节点粒度较细，推理速度有时候比其他推理框架.
- ncnn(腾讯) 手机端推理框架。
- MNN（阿里）手机端推理框架。
- MMDeploy。 OpenMMLab 的框架。

#TODO 主流框架是如何支持 tensorRT 的，做了哪些工作，API 设计细节，迁移成本。

## TFRT - tensorflow 运行时

2020.04.30 开源

其最大的特点还是其“compiler friendly"，甚至我觉得这是一款纯粹为编译器而生的运行时

谷歌公司在compiler（MLIR）和 runtime(TFRT)上深度结合的一个大胆的尝试。

TFRT 的其他 Rational: 无锁、全异步执行.

TF1.0的API非常难用，本质还是在于谷歌开始还是想把TF按照一个编程语言的方向去做的，因此可以看到基本所有python语法层的东西tf都搞了一套对应的（典型就是tf.cond和tf.while_loop用于表示条件和循环）；但是事实上对于一个完整的PL来说，这一层API是不够的，因此TF1.0的做法是把tf的python API转成一张图也就是GraphDef，这张图是data-flow driven的，然后由runtime做为一个图执行器来用手写的C++的代码（也就是当前tf runtime中的Executor)来执行这张图，这是一个非常经典的模式，可以说大数据的很多框架也是这么做的，执行一个DAG图，每个节点的tensor都ready了开始执行，背后放一个threadpool来做inter op的并行。这种方法其实也还算比较高效加上这么长时间代码的优化，整体的执行效率还是可以的，但是如果 这套框架放在inference端，还是有一定的overhead；

这东西本质 上还是一个dag的图执行器。如果从一个编程语言来讲，应该最终通过AST->IR的各种转换生成一个binary交给执行端才是一个完整PL的套路；所以其实这两年有好几个项目都在打造自己的IR，试图把GraphDef翻译成一个统一的IR，然后再从IR往下走编译执行去做；一个典型就是谷歌自己做的XLA。但是XLA实际上还是没有脱离图执行的框架，XLA只能做到在graph cluster后把一部分子图通过HLO的转换走JIT执行，实际上还是包在一个XlaRunOp下，和图的其它节点一起执行

## Bluesky 创始人 Mingsheng Hong

翻译: https://mp.weixin.qq.com/s/5XeIimiag-AFyjAf1pWtgQ
原文: 没找到。
发表时间: 2022.3 - 2022.5 之间

五年ML Infra生涯，我学到最重要的3个教训

### 1. 标准的力量

PyTorch、TensorFlow（有或没有Keras）、Jax和MxNet 框架都有某些不同的编程模型和抽象（例如PyTorch支持可变张量，而Jax是面向函数式编程设计的），这使得用户很难从一个框架迁移到另一个框架。

不仅仅是面向用户编程ML模型的API，还有其他重要的API，例如用于再训练或服务（比如TF SavedModel) 的可序列化的、经过训练的抽象模型，还有让硬件供应商将加速器集成到ML框架中的API，都非常需要标准。

### 2. 了解并聚焦客户

模型研究人员，正要撰写关于新神经网络体系结构的研究论文？如果是的话，那就不要吹捧ML Infra产品是多么“封装良好”和“一键启用”。许多研究人员本身也是强大的软件黑客，他们善于发现新的、有趣的使用（或“滥用”）低层级Infra的方法，以实现他们的创新（例如AlexNet就源自一个聪明的GPU黑客）。

### 3. 加速ML执行

以下加速ML执行的示例技术很有趣，并且与其他领域（如数据库查询优化）相关：

a) 使用像“Eigen”这样的软件库（https://eigen.tuxfamily.org/）实现繁重的代码，以优化CPU执行，或调用硬件供应商库（如CuDNN）来执行加速器。

b) 执行Python生成“计算图”（类似于SQL查询计划），对其进行优化，然后执行。它还有其他技术名称，比如“跟踪jit（tracing jit）”和“惰性张量（lazy tensors）”。

c) 在ML模型服务时使用特殊的背景知识，如模型权重为常数，这样就可以在模型执行之前进一步优化模型（类似于SQL优化，如果我们知道FK-PK约束，可以将一些LEFT JOINs转化为INNER JOINs）。

## 2022 - 袁进辉更新认识

- 原文: https://zhuanlan.zhihu.com/p/474324656
- 标题: 更新一下我对深度学习编译器和框架的认识
- 发表时间:  2022-03-01 21:01

### 个人观点

1. 文章比较干货，我能看懂的细节不多。
2. 几个关键词需要深入看一下：多面体编译器，auto placement，auto parallelism。
3. 推崇 Google 的东西。尤其是 Google AI compiler 最近发的文章，需要精读一下，特别是 Related work 点评同行，一般写的透彻、有价值。

### 作者的概述

深度学习基础软件里最hard core的问题有两个，一个是微观层次的auto codegen，即用领域特定语言 DSL 描述一个算法的逻辑，自动生成在各种后端上最高效的代码；另一个是宏观层次的自动分布式并行，也就是用户面向单卡写一个神经网络模型，框架自动生成在特定拓扑结构连接的多机多卡上运行的分布式代码。

-- 大佬目前依旧是推崇解决性能导向的问题。

### 分布式深度学习框架

（一堆的参考文献）
宏观层次上，Google GSPMD （GSPMD: General and Scalable Parallelization for ML Computation Graphs）和 OneFlow SBP （OneFlow: Redesign the Distributed Deep Learning Framework from Scratch） 这样的抽象方式其实为auto placement和auto parallelism 定义了足够通用的解空间，在这个解空间下有很多种可能的办法去自动搜索出来还不错的解，譬如伯克利一个团队最近的一篇文章 Alpa (Alpa: Automating Inter- and Intra-Operator Parallelism for Distributed Deep Learning)。 我相信，在问题定义比较清楚之后（如何评价Google的GShard论文？），以后还会涌现出来在效果和效率上更好的解决办法。

这个问题不仅仅在深度学习框架这样的软件层次非常重要，实际上也是探索新一代硬件架构的AI芯片行业也非常重要。国外有两家在思路上比较新锐的芯片企业，一家叫SambaNova。另一家是因硅仙人 Jim Keller 加入而声名大振的Tenstorrent，他们实际上也是在实现数据流计算机。

从这个角度理解，分布式深度学习框架在基于市场上的通用硬件，譬如GPGPU和以太网卡，实现一种粗粒度可重构计算，深度学习框架来完成控制面（control plane）的事，通用硬件GPU和以太网卡做数据面（data plane）的事。当然，使用通用硬件的能效比应该比不上那种专用硬件的做法，但应该通用性和灵活性更胜一筹。

### 深度学习编译器

我的理解是，深度学习编译器大的思路和架构应该是收敛了，应该是本文所描述的那样，具体实现体现在IREE这个项目，IREE有非常好的文档（iree/docs at main · google/iree），IREE的开发者之一张磊也写过好几篇非常好的博客，强烈推荐。

### 文章下的评论

@mackler: 编译器哪有那么乐观呀[捂脸]能乐观hpc领域几十年前就解决了，现在就是炒冷饭，poly解决不了自动切块，自动切块又是性能最敏感的，因为决定了cache利用。看起来一堆编译器的进展，其实都是Pluto算法+暴搜

作者回复: 组合microkernel进行卷积算子优化 https://mp.weixin.qq.com/s/OCP1RGTJ0A3WcwNY_oCiPQ

@Yuxin Wu 这篇编译器文章的几个主要作者都是当年做tensor comprehension的, 一做出来立刻就就被google挖走了

## 2020 北京智源大会

AI框架专题论坛

### 人

- 陈文光，清华大学教授，智源学者
- 胡事民，清华大学教授（编者注：其团队推出深度学习框架“计图”）
- 张峥，亚马逊云服务（AWS）上海AI研究院，上海纽约大学教授（学术休假），曾同他人提出图神经网络框架 DGL
- 白俊杰，阿里巴巴（PyTorch和Caffe2的核心开发者）
- 刘道福，寒武纪副总裁
- 田忠博，旷视研究院高级技术总监（天元开源框架项目负责人）
- 袁进辉，一流科技CEO（其公司研发OneFlow框架）
- 董豪，北京大学前沿计算中心（曾主导开源TensorLayer）

### 观点

- 陈文光：PyTorch 通过动态图翻身，打破了 tensorflow 的地位。
- 胡事民。框架最本质是计算图的问题。利用算子融合把计算图整合起来是个机会，不是唯一的机会。PyTorch 已经联系我们聊过很多技术细节，它下一代框架就会用统一计算图。
- 陈文光。伯克利做了好几个系统软件都非常成功。
- 董豪。生态反而是我们应该更加要关注的一点。
- 白俊杰。接下来框架上比较重要的两个点，一个是表达能力更趋向于完完整整可导的语言，第二个是从研究到落地怎么能更快速。
- 袁进辉。在效率上有很多可做的点。一个是在宏观层面，怎么解决网络墙的问题。还有一个是在微观层面，现在有很多学者、公司在研究自动代码生成，你用数学的逻辑描述这个运算是什么，然后它能自动生成GPU或CPU上最快的，这个很活跃，我觉得这是一个非常挑战的问题。
- 刘道福。训练强调开发效率（易用性），推理强调执行效率（性能）。未来 2 个框架会慢慢的分开。
- 白俊杰。有些用户为什么喜欢Keras，比如有人提到一点是能自动bach，Keras是现存框架做得最完善的。PyTorch也会加入这个功能，最早PyTorch有尝试过，只不过我们没有意识到这个功能对用户很重要。

### 个人看法

1. 核心关注点：其他的AI框架还有没有机会？后续最重要的技术创新可能是什么？
2. 张峥。在框架的论坛上，大讲原动力在模型和数学上面，有点抓不住重点。
4. 袁进辉 在 2020 年还是强调效率，但 2022 年的 OneFlow 则更强调易用性。我觉得，这体现了大佬底层认知的调整。
5. 刘道福。title 是寒武纪副总裁，看起来最不技术，但，从 2022 年会看，他还是看的最透彻，最准的。赢在产品导向的思维方式，懂市场懂用户。
6. AWS 和 旷视的人，思考的层次，预判能力，个人认为，明显弱于其他人。
7. 清华和阿里，有着明显更深刻的技术判断。寒武纪懂产品，理解市场。

### 总结

1. ( #TODO ) PyTorch 下一代框架就会用统一计算图，是哪一个版本？应该指的是 JIT/Tracing/Scripting 相关。
2. 框架的创新，需要人才，需要偶然性。
3. 框架的关键趋势之一，表达能力更趋向于完完整整可导的语言。
4. 在未来相当长的时间里，训练和推理 2 个框架分开，可能跑得更快。训练强调开发效率（易用性），推理强调执行效率（性能）

## 百度飞桨登顶中国市场应用规模第一

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h6jo6altgij20u00ewdio.jpg)

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h6jo95yj8bj20u00df0tv.jpg)

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h6jo9evgpwj20n00cmmzd.jpg)

## Brief History

- 原文: https://syncedreview.com/2020/12/14/a-brief-history-of-deep-learning-frameworks/
- 翻译: https://mp.weixin.qq.com/s/abLNMnT6X-GXM6_ANT3OHAs
- 发表时间: 2020-12-14

### 石器时代（21 世纪初）

MATLAB、OpenNN、Torch 等

### 青铜时代（~2012 年）

Caffe、Chainer、Theano

- Caffe 和 Theano: 声明式编程风格
- Chainer: 命令式编程风格

### 铁器时代（2015 ~ 2016）

- TensorFlow, Google, 声明式
- Caffe2, Facebook
- PyTorch, Facebook AI 研究（FAIR）团队。命令式。
- CNTK, 微软。声明式。2019 年左右，凉了
- MXNet，AWS 收编。命令式 & 声明式，都支持。
- Keras，模型的高级抽象。

### 罗马时代（2019 ~ 2020）

tensorflow & pytorch 2 个巨头垄断。

### 工业时代（2021+）

大家都想整个新的更牛逼的框架出来，但生态普遍做的一般。

主流趋势：

1. 基于编译器的算⼦(operator)优化。AI compiler，支持多硬件。
2. 统一的 API 标准。tensor 的操作，普遍与 numpy 对齐。
3. 数据搬运作为一等公民。将数据通信作为 compute graph 的一部分（独立的算子？）。框架不再需要维护多套训练策略（单机、分布式），具体实现，参考 OneFlow

## 不是疯子，就是骗子

- 原文: https://mp.weixin.qq.com/s/PQLQ0nN0fM4PPkhEUXfOmw
- 亲爱的数据 出品人: 谭婧
- 主编微信号: 18611208992
- 发表时间:  2021-02-26 08:00

深度学习框架=深度学习操作系统。

把全球AI顶级精英俱乐部的会员分成两类：一类是原创AI算法的发明者, 一类是AI框架的发明者。

其一，谷歌和亚马逊是计算图的拥趸。两者都以更高的、令人赞叹的工业级工程质量把计算图抽象推向新高度，把表达能力推向新的里程碑。

其二，脸书公司在计算过程中没有计算图的概念。但在解决易用性上，超常发挥。

2019年2月，一流科技获得千万级Pre-A轮投资，袁进辉是创始人兼CEO。此事之后，才有些小道消息传出，早在2017年初，快手创始人宿华就投了一流科技，天使轮。

谁都会挑用起来顺手的锤子。框架在一家公司内部很难统一。

百度内部 “军令如山”，必须统一使用飞桨。

旷视科技内部可以用任何开源框架，员工中自发使用天元框架者居多。

微软亚研院的情况是：很多工程实现是实习生完成，干活时会让同学们继续用熟悉的框架干活，很难强行统一用CNTK。

2020年，国产深度学习框架井喷。

3月20日，清华大学计图（Jittor）。

3月25日，旷视科技天元（MegEngine） 。

3月28日，华为MindSpore。

7月31日，一流科技OneFlow。

袁进辉博士的总结是：“OneFlow有两个创新点：一会自动安排数据通信。二把数据通信和计算的关系协调好，让整体效率更高。”

2020年，多节点和多设备的训练成为深度学习的主流，这一趋势符合袁进辉创业之初的判断，而这一思路可追溯到2014年他在微软亚研院的思考。

袁进辉团队的短板明显存在，AI研发投入“壕无人性”，直白一点：创业公司穷。不过，2021年春节前，高瓴创投独家领投一流科技A轮融资，总额5000万元人民币。

## 其他

微软的 Project Volterra

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h5dosjegccj20u00h7dgq.jpg)

## References

1. TensorFlow、PyTorch之后，“国产”AI框架还有没有机会？ https://mp.weixin.qq.com/s/sg6TxjAL86fqxQVPccoapg
2. National-AI-RD-Strategy-2019 https://www.nitrd.gov/pubs/National-AI-RD-Strategy-2019.pdf
3. 李沐：《为什么强大的MXNet一直火不起来？》
4. 贾扬清：《如何看待亚马逊 AI 李沐团队大批人员离职?》
