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


## 综述

1. 改 loss function

主要是 weighted sum 类的方法

2. semi-supervised learning

3. 置信学习 与 HMM 的关系

用 transition matrix 建模 noisy label 的分布


## 理论基础类

### understanding deep learning requires rethinking generalization -- 2017

- https://arxiv.org/abs/1611.03530
- Chiyuan Zhang, Samy Bengio
- 2017
- 阅读价值：高

Google brain Samy Bengio 组里的工作

提出的观点并用实验证明：Deep neural networks easily fit random labels.

这个观点几乎是 2017 年之后 noisy label 相关文章必引观点。

这篇文章之前，introduction 都在介绍众包 & 错误不可避免，SOTA 模型表现差。这篇文章之后，理论焦点突出为解决 noisy label 导致的 overfitting。

文章也提出了一个非常有意义的问题：

神经网络的参数量大于训练数据的量，generalization error 有的模型好，有的模型差，区别在哪里？

__Deep neural networks easily fit random labels__

实验方案：

1. 用真实的数据，label 改为随机生成。
2. model 使用标准模型，不加任何修改。
3. 训练的效果：training error = 0，test error 与随机选的结果相同。

对结果的解释：

1. 因为 test label 也是完全随机生成的，无法预测。test error 符合预期。
2. training error = 0，模型参数多，有能力记住所有 dataset 点。
3. 随机数据导致模型的 generalization error 明显增加了。


__对比试验__

1. 基于原始真实数据集，label 不变，image pixel 改成全随机，依旧可以 0 training error
2. 用 random + 原始数据混合测试，random 比例提升，generalization 错误率提升。说明，在 random data 混淆的情况下，依旧有能力学到部分真实特征。
3. regularization 能降低 testing error，但对 generalization error 影响不直接。

__记住所有 training data 的最小模型__

two-layer ReLU network with p=2n+d parameters can express any labeling of any sample of size n in d dimension.

2 层的模型，就能记忆全部训练数据。

explicit regularizers:

- dropout
- weight decay

regularization is required to ensure small generalization error

### Convexity, Classification, and Risk Bounds

- https://www.stat.berkeley.edu/~jordan/638.pdf
- Bartlett
- 2006
- 阅读价值：

most loss functions are not completely robust to label noise

## Transition matrix 跃迁矩阵

### Training deep neural-networks using a noise adaptation layer -- 2017

- https://openreview.net/references/pdf?id=Sk5qglwSl
- Jacob Goldberger
- 2017
- 阅读价值：高

借鉴通信的信道模型，用 EM 算法。

建模思路：

- The correct unknown label can be viewed as a hidden random variable
- Model the noise processes by a communication channel with unknown parameters.

用 EM 算法找 network 和 correct label。这个思路 2012，2016 年都有不错的文章发出。

典型的流程如下：

- E-step, estimate the true label
- M-step, retrain the network.

缺点是，每次预测完 label 都要重新 train model。改进的思路是，能不能用 1 个 neural network 端到端的做完 2 步。

2014 年 Sukhbaatar & Fergus 提出在最后面加一个 constrained linear layer。在部分有强假设的场景下，能够较好的模拟出 transition matrix 的效果。

本文的贡献是，加 softmax 连接 correct label and noisy label，不用 linear layer。

1. 模型可以扩展到 the case where the noise is dependent on both the correct label and the input features.
2. 适用于 noisy distribution 未知的数据集。

### Confident Learning: Estimating Uncertainty in Dataset Labels -- 2019

- https://arxiv.org/abs/1911.00068
- Curtis G. Northcutt
- 2019
- 阅读价值：高

cleanlab 库的算法原理

cleanlab code: https://github.com/cgnorthcutt/cleanlab

假定，noise 只与 true label 有关，与 feature 相互独立。

核心思路：

1. 通过 prune, count, rank 3 步可以高效率算出 joint probabilities（true and predicted labels)
2. 根据 joint probabilities 识别 label error。建模预测 complete matrix Q

理论基础是 Angluin 1988 的 CNP。

本文的核心贡献: we prove CL exactly estimates the joint distribution of noisy and true labels with exact identification of label errors under realistic sufficient conditions.

The resulting CL procedure is a model-agnostic family of theory and algorithms for characterizing, finding, and learning with label errors. It uses predicted probabilities and noisy labels to count examples in the unnormalized confident joint, estimate the joint distribution, and prune noisy data, producing clean data as output.
