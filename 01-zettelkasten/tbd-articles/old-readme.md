# X 的 100 问

- [Question100 Computer Architecture and Parallel Computing](01-zettelkasten/01-Literature%20Notes/Question100%20Computer%20Architecture%20and%20Parallel%20Computing.md) 计算机体系结构与并行计算 100 问
- [WIP-Question100 Deep Learing](01-zettelkasten/05-Notes%20Block/Question100%20Deep%20Learing.md)

# AI Infra 设计

- [Research CI o11n Design](01-zettelkasten/01-Literature%20Notes/Research%20CI%20o11n%20Design.md)
- [DevOps Data Infa Design](01-zettelkasten/01-Literature%20Notes/DevOps%20Data%20Infa%20Design.md)
- 数据管理 [DVC-usage](01-zettelkasten/05-Notes%20Block/DVC-usage.md)

# Deep Learning

## Papers

- [Paper Reading - Object Detection](01-zettelkasten/01-Literature%20Notes/Paper%20Reading%20-%20Object%20Detection.md)
- [Paper Reading - Face Detection](01-zettelkasten/01-Literature%20Notes/Paper%20Reading%20-%20Face%20Detection.md)

# 计算机体系结构

## CPU & Memory

- [深入理解计算机系统](01-zettelkasten/note-blocks/computer-systems-a-programmer-s-perspective.md) 入门编译器级的性能优化。理解 CPU 体系结构、存储器层次结构，了解进程间通信。
- [计算机体系结构 - 量化研究方法](01-zettelkasten/note-blocks/computer-architecture-a-quantitative-approach.md) 并行优化的理论体系。存储的层级结构，指令级优化，SIMD 数据并行，线程级并行等。
- [计算机组成与设计 - 硬件/软件接口](01-zettelkasten/02-References/Computer%20Organization%20and%20Design%20-%20The%20Hardware%20and%20Software%20Interface.md) 更偏硬件设计。软件开发者需要理解的，基本都在前两本里讲得更透彻。可以不读。

全都用大量篇幅讲存储器的层次结构。

我的笔记：

- [2022-05-05 ISA and CPU Pipeline](01-zettelkasten/01-Literature%20Notes/2022-05-05%20ISA%20and%20CPU%20Pipeline.md)

## GPU & CUDA 编程

**Reading List**

- [CUDA_by_Example](04-pdf/files/CUDA_by_Example.pdf) - And Introduction to General-Pirpose GPU Programming
- [CUDA_Application_Design_and_Development](04-pdf/files/CUDA_Application_Design_and_Development.pdf)
- [CUDA_C_Programming_Guide_11_6](04-pdf/files/CUDA_C_Programming_Guide_11_6.pdf)

我的笔记

- [GPU Architecture](01-zettelkasten/06-Content%20Maps/GPU%20Architecture.md)

**Nvidia Docs**

- [S4158-cuda-streams-best-practices-common-pitfalls](04-pdf/files/S4158-cuda-streams-best-practices-common-pitfalls.pdf)
- [Tesla-P4-Product-Brief](04-pdf/files/Tesla-P4-Product-Brief.pdf)
- [T4 Product Brief](04-pdf/files/T4%20Product%20Brief.pdf)
- [NVIDIA_Fermi_Compute_Architecture_Whitepaper](04-pdf/files/NVIDIA_Fermi_Compute_Architecture_Whitepaper.pdf)

## C++ 开发

**Reading List**

- [A Tour of C++](01-zettelkasten/02-References/A%20Tour%20of%20C++.md): by [Bjarne Stroustrup](01-zettelkasten/04-Ref%20Authors/Bjarne%20Stroustrup.md), an idea of what constitutes modern C++. 针对有经验的开发者
- [cpp-pointers-by-herb-sutter](01-zettelkasten/note-blocks/cpp-pointers-by-herb-sutter.md): 把 c++ 指针讲清楚的男人
- [GotW - Guru of the Week](../03-Ref%20Sources/GotW%20-%20Guru%20of%20the%20Week.md) a regular series of C++ programming problems created and written by [Herb Sutter](01-zettelkasten/04-Ref%20Authors/Herb%20Sutter.md)
- [CppCon](../03-Ref%20Sources/CppCon.md) 在 YouTube 上找 video，GitHub 上找 slides.

我的笔记地图 [Cpp Notes Map](01-zettelkasten/06-Content%20Maps/Cpp%20Notes%20Map.md)

# 性能优化

- [cgroups 详解](pdf/linux-kernel-and-perf/cgroups-intro.pdf)

# 架构设计

- [Pipeline Schedulers](01-zettelkasten/01-Literature%20Notes/Pipeline%20Schedulers.md)

# NLP

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

# 图理论

- Finding and evaluating community structure in networks | [pdf](pdf/finding-and-evaluating-community-structure-in-networks.pdf)
- Fast algorithm for detecting community structure in networks | [pdf](pdf/fast-algorithm-for-detecting-community-structure-in-networks.pdf)

# 数据库系统

papers

- Bitcask - A Log-Structured Hash Table for Fast Key/Value Data | [pdf](pdf/bitcask-intro.pdf) | [notes](notes/bitcask-intro.md)
- The Google File System | [pdf](pdf/gfs-sosp2003.pdf) | [notes](notes/gfs-sosp2003.md)
- Bigtable: A Distributed Storage System for Structured Data | [pdf](pdf/bigtable-osdi06.pdf)
- The Chubby lock service for loosely-coupled distributed systems | [pdf](pdf/chubby-osdi06.pdf)

# 分布式系统

<https://github.com/misc-codes/software-architecture-books>

papers

- Brewer’s Conjecture and the Feasibility of Consistent, Available, Partition-Tolerant Web | [pdf](pdf/brewers-conjecture-sigact.pdf) | [notes](notes/brewers-conjecture-sigact.md)
- BASE: An Acid Alternative | [pdf](pdf/base-an-acid-alternative.pdf) | [notes](notes/base-an-acid-alternative.md)
- Eventually consistent | [pdf](pdf/eventually-consistent.pdf)
- Conflict-free Replicated Data Types | [pdf](pdf/conflict-free-replicated-data-types.pdf)
- The Byzantine Generals Problem | [pdf](pdf/lamport82.pdf)
- The Part-Time Parliament | [pdf](pdf/The-Part-Time-Parliament.pdf)
- Paxos Made Simple | [pdf](pdf/paxos-simple.pdf)
- MapReduce: Simplified Data Processing on Large Clusters | [pdf](pdf/mapreduce-simplified-data-processing-on-large-clusters.pdf) | [notes](notes/mapreduce-simplified-data-processing-on-large-clusters.md)
