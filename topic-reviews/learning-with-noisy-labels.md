# [Paper Reading] Learning with Noisy Label -- 深度学习落地

获取解决问题的主要思路，未来的主要研究方向。

在项目的技术方案选型、解决复杂问题时，提供 high level 的可靠输入。

Paper List(需要爬墙)

Google Sheets: [[PaperReading] Learning with Noisy Labels](https://docs.google.com/spreadsheets/d/130oiMLRnYHE0YFmULx_SMrHxc3i2CxtGbdxayt4avDc/edit#gid=0)


## 阅读背景

这是一个很热，但很多人不熟悉的研究方向。

深度学习依赖大量高质量的标注数据 -- 时间成本、人力成本都很高。

如何用半（弱）监督学习、无监督学习实现与监督学习水平相当的效果，是非常热门研究方向。

这次的阅读，主要聚焦 Learning with noisy label：

1. 有一定量的标注数据。-- 通过搜索引擎、公开数据集等，很容易拿到。
2. 标注数据的质量不高，存在或高或低的标注错误。

相比于无监督学习，learning with noisy label 的目标场景更贴近深度学习在工业界的落地。

1. 初始阶段有一定量的标注质量未知的数据。
2. 一般会有持续的人工投入，不断提升标注质量。
3. 对某些 label、某些错误的关注度，高于其他，需要针对性的优化。


## 理论基础类

#### understanding deep learning requires rethinking generalization -- Zhang 2017

- https://arxiv.org/abs/1611.03530
- Chiyuan Zhang, Samy Bengio
- 2017
- 阅读价值：高

Google brain Samy Bengio 组里的工作

提出观点：Deep neural networks easily fit random labels，几乎是 2017 年之后 noisy label 文章必引观点。

这篇文章之前，introduction 都在介绍众包 & 错误不可避免，SOTA 模型表现差。这篇文章之后，理论焦点突出为 noisy label 导致的 overfitting。Zhang
