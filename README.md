成为一个合格的“算法工程师”
===

good good study, day day up

# 定义“算法工程师”

比做算法的懂工程落地，比做工程的懂算法模型。

技术视角上，无非是 2 件事：

1. 提高代码的运行速度 -- 高性能计算
2. 提高代码的开发效率 -- 工程效率

产品视角，暂不讨论。

一些有代表性的具体工作：

1. 通用矩阵乘（GEMM）优化与卷积计算
2. 高性能的数学运算库：openblas, MKL etc
3. 深度学习框架：Caffe, MxNet, TensorFlow etc
4. 分布式的深度学习训练平台：各家公司自建为主
5. 深度学习的推理框架：TensorRT, OpenVINO
6. 模型自动部署和测试：各家公司自建为主
7. 存训练数据的分布式小文件存储：ceph 等


# Plans

> [WIP]: work in progress, 进行中

- [ ] [WIP] 初始化提纲目录
- [ ] 明确此文档的长期维护机制
- [ ] 定义技能等级和衡量标准
- [ ] 画一张总体局面图
- [ ] 定义学习的优先级
- [ ] 我的学习计划
- [ ] 给出每个技能的学习路径
- [ ] 完善优质的学习材料
- [ ] re-org 文档目录结构


# algorithm(深度学习算法)

## 通用模型与基础理论

NLP、CV、语音等都要解决的通用问题。

#### 技能要点

包括但不限于：

- CNN 模型
- RNN 模型
- 轻量模型：MobileNet 等
- 模型量化
- 无监督学习

#### 笔记

- [[Paper Reading] 经典 CNN model -- 从 AlexNet 到 ResNet](topic-reviews/CNN-models--From-AlexNet-to-ResNet.md)

    三大经典实用模型：AlexNet、VggNet、ResNet

- [[Paper Reading] Learning with Noisy Label -- 深度学习落地](topic-reviews/learning-with-noisy-labels.md)

    当前研究热点，semi-supervised learning 流派越来越抢眼

## CV

#### 技能要点

图片、视频相关。包括但不限于：

- 识别
- 检测
- 分割
- 生成

#### 笔记

TODO

#### code

_Face Detection_

- [face detection using opencv](src/face-detection/face-detection-using-opencv.ipynb)
- [face detection using Deep Learning](src/face-detection/face-detection-using-deep-learning.ipynb)

## NLP

#### 技能要点

包括但不限于：

- 文本分类
- 阅读理解
- 机器翻译
- 文本相似度计算
- 文本生成
- 对话系统

#### 笔记

TODO

#### papers

_Basic Models_

- Speech and Language Processing | [pdf](pdf/speech-and-language-processing-ed3.pdf)
- A Stochastic Parts Program and Noun Phrase Parser for Unrestricted Text | [pdf](pdf/a-stochastic-parts-program-and-noun-phrase-parser-for-unrestricted-text.pdf)
- A Statistical Approach to Machine Translation | [pdf](pdf/a-statistical-approach-to-machine-translation.pdf)
- Spam Filtering with Naive Bayes – Which Naive Bayes? | [pdf](pdf/spam-filtering-with-naive-bayes-which-naive-bayes.pdf)

_Undirected Graphical Model_

alias: Markov network, Markov Random Field (MRF)

HMM, MEMM, CRF

- introduction to Hidden Markov Model [pdf](pdf/speech-and-language-processing-ed3.pdf) Chap.8 Part-of-Speech Tagging
- Conditional Random Fields - Probabilistic Models for Segmenting and Labeling Sequence Data | [pdf](pdf/conditional-random-fields-probabilistic-models-for-segmenting-and-labeling-sequence-data.pdf)

_Near-duplicate Detection_

- N-gram Similarity and Distance | [pdf](pdf/n-gram-similarity-and-distance.pdf)
- A Closer Look at Skip-gram Modelling | [pdf](pdf/a-closer-look-at-skip-gram-modelling.pdf)
- Similarity Estimation Techniques from Rounding Algorithms | [pdf](pdf/charikar-estim.pdf)
- Detecting Near-Duplicates for Web Crawling | [pdf](pdf/simhash-detecting-near-duplicates-for-web-crawling.pdf)

## 语音

#### 技能要点

包括但不限于：

- 语音识别
- 语音合成
- 声纹识别
- 语音唤醒
- 说话人分离

#### 笔记

TODO


# 芯片与硬件

TODO


# coding(开发)

## 编程语言

#### 技能要点

语言之争，仁者见仁。

我的选择：

1. 指令集：x86, arm 的精简指令集
2. 高性能计算语言：c++
3. 脚本语言：python。深度学习框架普遍支持
4. 工具类：shell


#### 笔记

TODO


## 开发环境

以用为目的，不深究原来和实现

- Linux
- git, vim, docker 等


## debug

遇到这些问题怎么办：

- 内存泄露
- stack over flow
- segment fault
- 我的代码 work 了，但不知道为什么
- 我的代码不 work 了，但不知道为什么

工具：

- gdb

## CPU 性能优化

#### 技能要点

todo

#### 笔记

TODO


#### CUDA 编程与性能优化

TODO

# 框架

## 深度学习框架

Caffe, MxNet, TensorFlow etc

## 推理框架

TensorRT, OpenVINO

# 专业技能

## 音视频处理

- 编码器、解码器
- 图片编码格式
- 视频格式
- 音频格式
- 常用工具：FFmpeg，RTSP

## 高性能计算

GEMM, openblas, MKL etc


# DevOps

## 集群

- docker
- k8s
- argo/airflow

- 会用。普遍需要
- 会运维。大部分人不需要。

## 存储

#### 技能要点

- NFS
- OSS
- 开源系统：ceph

## Pipeline & Graph

好像不应该单列，但现在的框架，名字不是 xxxFlow，就是 yyyFlow。
底层模型，非 Pipeline 即 Graph。
与时俱进，把这个也单列出来。


# others

随便看看的有趣内容

## 搜索引擎

- Web search for a planet: The Google cluster architecture | [pdf](pdf/googlecluster-ieee.pdf)


## 图理论

- Finding and evaluating community structure in networks | [pdf](pdf/finding-and-evaluating-community-structure-in-networks.pdf)
- Fast algorithm for detecting community structure in networks | [pdf](pdf/fast-algorithm-for-detecting-community-structure-in-networks.pdf)

## 数据库系统

#### 笔记

- [hbase 一日游 -- 从入门到放弃](https://zhuanlan.zhihu.com/p/113393004)

    爬虫从 html 变成了 json API 为主。hbase 很好，但时代变了，继续用 Mongo

#### papers

- Bitcask - A Log-Structured Hash Table for Fast Key/Value Data | [pdf](pdf/bitcask-intro.pdf) | [notes](notes/bitcask-intro.md)
- The Google File System | [pdf](pdf/gfs-sosp2003.pdf) | [notes](notes/gfs-sosp2003.md)
- Bigtable: A Distributed Storage System for Structured Data | [pdf](pdf/bigtable-osdi06.pdf)
- The Chubby lock service for loosely-coupled distributed systems | [pdf](pdf/chubby-osdi06.pdf)


## 分布式系统

#### 技能要点

todo

#### 笔记

TODO

#### papers

_分布式理论_

- Brewer’s Conjecture and the Feasibility of Consistent, Available, Partition-Tolerant Web | [pdf](pdf/brewers-conjecture-sigact.pdf) | [notes](notes/brewers-conjecture-sigact.md)
- BASE: An Acid Alternative | [pdf](pdf/base-an-acid-alternative.pdf) | [notes](notes/base-an-acid-alternative.md)
- Eventually consistent | [pdf](pdf/eventually-consistent.pdf)
- Conflict-free Replicated Data Types | [pdf](pdf/conflict-free-replicated-data-types.pdf)
- The Byzantine Generals Problem | [pdf](pdf/lamport82.pdf)
- The Part-Time Parliament | [pdf](pdf/The-Part-Time-Parliament.pdf)
- Paxos Made Simple | [pdf](pdf/paxos-simple.pdf)

_MapReduce_

- MapReduce: Simplified Data Processing on Large Clusters | [pdf](pdf/mapreduce-simplified-data-processing-on-large-clusters.pdf) | [notes](notes/mapreduce-simplified-data-processing-on-large-clusters.md)

# 文档管理与更新机制

## 内容组织结构

TODO

## 工作流程

TODO

1. 不改动内容框架的前提下，更新内容
	1. 增加 toc，更新 toc
2. 改动内容框架
	- 增加新的类目
	- 类目关系重新组织
	- 更新总体局面图


# 我的 timeline

| 开始时间   |      事项      |      输出      | 耗时 | 评价 |
| --------- |:------------ |:-------------- |:---:|:---|
| 2021.5.26 | 学 c++ 基本功 |      TODO      | 4d | 满意 |
