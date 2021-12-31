Paper Reading
===

面向 deep learning 算法落地的 engineering 工作。

比做算法的懂工程落地，比做工程的懂算法模型。

# Scope 定义

1. 找到一个适合 deep learning 解决的问题

	- 自动驾驶
	- 安防领域的人脸识别
	- 自动写文章, 虚拟主播

2. 工程效率高. 开发效率高, 迭代速度快

	- 深度学习框架: Caffe, MxNet, TensorFlow 等
	- 分布式的深度学习训练平台：各家公司自建为主

3. 代码跑的更快, 更省钱.

	- 通用矩阵乘（GEMM）优化与卷积计算
	- 高性能的数学运算库: openblas, MKL 等
	- 深度学习的推理框架: TensorRT, OpenVINO 等
	- 模型量化. inference 时使用 int8 而非 float32
	- 芯片: 推理芯片, 训练芯片, 算法定制芯片, 通用芯片

4. 其他基础知识

	- Computer Architecture
	- 分布式存储: ceph 等
	- 编程语言: Python, c++

# Topic Readings 专题阅读笔记

以专题阅读的形式, 系统的阅读新领域 / 新方向

| 日期 | 分类 | 笔记 link | 简介 |
| --- | --- | --- | --- |
| | deep learning | [[Paper Reading] 经典 CNN model -- 从 AlexNet 到 ResNet](topic-reviews/CNN-models--From-AlexNet-to-ResNet.md) | 三大经典实用模型：AlexNet、VggNet、ResNet |
| | deep learning | [[Paper Reading] Learning with Noisy Label -- 深度学习落地](topic-reviews/learning-with-noisy-labels.md) | 当前研究热点，semi-supervised learning 流派越来越抢眼 |

# reading list

零散收集的阅读材料, 不乱即可, 无需结构化整理.

## NLP

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

## 性能优化与并发编程

主要是几个 topic

- Linux perf 工具的使用
- CPU 上的并发编程, 比如, OpenMP 模型, Cache 与 Numa 类问题
- GPU 上的并发编程. 主要是 cuda

#### Cache 与 Numa

- [CPU Cache Line伪共享问题的总结和分析](https://mp.weixin.qq.com/s/y1NSE5xdh8Nt5hlmK0E8Og) 阿里云 杨勇

#### OpenMP

- [OpenMP tutorial](https://hpc.llnl.gov/tuts/openMP) one of the eight tutorials in the 4+ day "Using LLNL's Supercomputers" workshop

#### CUDA

- [CUDA tutorial with code](cpp-notes/cuda-tutorial/README.md)

## 搜索引擎

- Web search for a planet: The Google cluster architecture | [pdf](pdf/googlecluster-ieee.pdf)


## 图理论

- Finding and evaluating community structure in networks | [pdf](pdf/finding-and-evaluating-community-structure-in-networks.pdf)
- Fast algorithm for detecting community structure in networks | [pdf](pdf/fast-algorithm-for-detecting-community-structure-in-networks.pdf)

## 数据库系统

papers

- Bitcask - A Log-Structured Hash Table for Fast Key/Value Data | [pdf](pdf/bitcask-intro.pdf) | [notes](notes/bitcask-intro.md)
- The Google File System | [pdf](pdf/gfs-sosp2003.pdf) | [notes](notes/gfs-sosp2003.md)
- Bigtable: A Distributed Storage System for Structured Data | [pdf](pdf/bigtable-osdi06.pdf)
- The Chubby lock service for loosely-coupled distributed systems | [pdf](pdf/chubby-osdi06.pdf)


## 分布式系统

papers

- Brewer’s Conjecture and the Feasibility of Consistent, Available, Partition-Tolerant Web | [pdf](pdf/brewers-conjecture-sigact.pdf) | [notes](notes/brewers-conjecture-sigact.md)
- BASE: An Acid Alternative | [pdf](pdf/base-an-acid-alternative.pdf) | [notes](notes/base-an-acid-alternative.md)
- Eventually consistent | [pdf](pdf/eventually-consistent.pdf)
- Conflict-free Replicated Data Types | [pdf](pdf/conflict-free-replicated-data-types.pdf)
- The Byzantine Generals Problem | [pdf](pdf/lamport82.pdf)
- The Part-Time Parliament | [pdf](pdf/The-Part-Time-Parliament.pdf)
- Paxos Made Simple | [pdf](pdf/paxos-simple.pdf)
- MapReduce: Simplified Data Processing on Large Clusters | [pdf](pdf/mapreduce-simplified-data-processing-on-large-clusters.pdf) | [notes](notes/mapreduce-simplified-data-processing-on-large-clusters.md)


# 项目笔记
## 常用命令

TODO

## Wishing List

- 画一个知识地图, 定义技能等级和评价标准

## 我的 timeline

| 开始时间   |      事项      |      输出      | 耗时 | 评价 |
| --------- |:------------ |:-------------- |:---:|:---|
| 2021.5.26 | 学 c++ 基本功 |      TODO      | 4d | 满意 |
