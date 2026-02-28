# Designing Data-Intensive Applications - Martin Kleppmann

## Meta Info

- douban: https://book.douban.com/subject/26197294/

## 第 1 次阅读 2018.04.28 ~ 2018.4.30

#### 为什么读

最近很火，好评如潮的一本书。

为了重新梳理、完善自己知识体系，从阅读这本书开始。


#### notes

**chap. 11 Stream Processing**

先阅读了这一章。

前不久，用 Stream Processing 重构了公司的一个 project。
踩了不少坑，也积累了不少的实践经验。
从这里开始，既熟悉，又能更好的评估这本书的价值。

1. 知识点覆盖很全面，我们在实践中踩过的坑，书里基本都分析到了。
2. 知识体系很健壮，来龙去脉、演变过程，介绍的很清楚。一步一步设计出一个完善的体系。
3. reference 很不错，提到了很多关键 paper 以及他们的价值。很好的扩展阅读。

在 processing 时，如何完成数据统计，提出了很多不错的方法。

Stream joins 一节，需要再读。

**chap. 10 Batch Processing**

主要为了跟 stream processing 做对比。

从 Unix Pipeline 理念出发，以 simple log analysis 作为切入点，大赞。

对 map-reduce 有了更全面对认识，尤其是 distributed filesystem。

顺着 reference 又一次读了 Google GFS 的 paper。
以前理解不了这些看似平常的思路，为何具有如此大的影响力。
现在，能够体会到了。

**Chap. 3 Storage and Retrieval**

趁热打铁。

既然品出了 GFS 和 HDFS 的味道，深化一下对 storage 的理解。

用不到 10 行 bash 实现了一个最简单的 database，
并由此展开，讨论了 log-structured storage, Index, B 树等 database 底层设计的基本概念和演进过程，
一气呵成，读起来畅快淋漓。

更赞的是，讲解每一个设计理念d的时候，都说明了哪一个知名数据库是基于他的。
