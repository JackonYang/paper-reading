# [Paper Reading] Learning with Noisy Label -- 深度学习落地

目的：获取解决问题的主要思路，预判未来的主要研究方向。

预期收益：在项目的技术选型、复杂问题的解决时，提供 high level 的可靠输入。

Paper List(需要爬墙)

Google Sheets: [[PaperReading] Learning with Noisy Labels](https://link.zhihu.com/?target=https%3A//docs.google.com/spreadsheets/d/130oiMLRnYHE0YFmULx_SMrHxc3i2CxtGbdxayt4avDc/edit%3Fusp%3Dsharing)

pdf 汇总版本：[GitHub: Learning with Noisy Labels 论文 pdf 汇总](https://github.com/JackonYang/papers/tree/master/pdf/learning-with-noisy-label)


## 阅读背景

这是一个很热门，但很多人不熟悉的研究方向。

大的背景是：

深度学习依赖大量高质量的标注数据 -- 时间成本、人力成本都很高。

如何用半（弱）监督学习、无监督学习实现与监督学习水平相当的效果，是非常热门研究方向。

这次的 paper reading，聚焦 Learning with noisy label：

1. 有一定量的标注数据。-- 通过搜索引擎、公开数据集等，很容易拿到。
2. 标注数据的质量不高，存在或高或低的标注错误。

不会覆盖无监督类学习。

相比于无监督学习，learning with noisy label 更贴近深度学习在工业界的落地。
典型的状态如下：

1. 初始阶段有一定量的标注质量未知的数据。
2. 一般会有持续的人工投入，不断提升标注质量。人工投入的形式，可能是付费众包，可能是借助用户反馈。
3. 对某些 label、某些错误的关注度，高于其他，需要针对性的优化。


## 总体观点

不管什么方法，都在回答一个问题：如何区分 clean label 和 noisy label。

1. 直接用概率论模型去识别，比如基于 EM 算法的模型、置信学习模型等。
2. 根据模型预测的 loss 粗选，反复迭代。
3. 隐式的，模型自身对 noise 的容忍度更高。核心思路是改成 weighted sum loss，noisy 的权重低，clean 的权重高。问题转化为如何找 weight。

TODO：分析 MixUp 做 Data Argumentation 的思路。

## 理论基础类

### paper: understanding deep learning requires rethinking generalization -- 2017

- https://arxiv.org/abs/1611.03530
- Chiyuan Zhang, Samy Bengio
- 2017
- 阅读价值：高

Google brain Samy Bengio 组里的工作

提出观点并用实验证明：Deep neural networks easily fit random labels.

这个观点几乎是 2017 年之后 noisy label 相关文章必引观点。

这篇文章之前，introduction 都在介绍众包 & 错误不可避免，SOTA 模型表现差。这篇文章之后，理论焦点突出为解决 noisy label 导致的 overfitting。

文章也提出了一个非常有意义的问题：

神经网络的参数量大于训练数据的量，generalization error 有的模型好，有的模型差，区别在哪里？

关于 Deep neural networks easily fit random labels 的实验细节如下。

实验方案：

1. 用真实的数据，label 改为随机生成。
2. model 使用标准模型，不加任何修改。
3. 训练的效果：training error = 0，test error 与随机选的结果相同。

对结果的解释：

1. 因为 test label 也是完全随机生成的，无法预测。test error 符合预期。
2. training error = 0，模型参数多，有能力记住所有 dataset 点。
3. 用了随机数据后，模型的 generalization error 明显增加了。


对比试验

1. 基于原始真实数据集，label 不变，image pixel 改成全随机，依旧可以 0 training error
2. 用 random + 原始数据混合测试，random 比例提升，generalization 错误率提升。说明，在 random data 混淆的情况下，依旧有能力学到部分真实特征。
3. regularization 能降低 testing error，但对 generalization error 的影响不直接。

paper 的第 2 个重要贡献是：2 层的模型，就能记忆全部 training data。

two-layer ReLU network with p=2n+d parameters can express any labeling of any sample of size n in d dimension.

提出问题，但没有结论：质疑 regularization is required to ensure small generalization error

常用的 explicit regularizers:

- Dropout
- Weight decay
- Data Argumention

### paper: Convexity, Classification, and Risk Bounds -- 2006

- https://www.stat.berkeley.edu/~jordan/638.pdf
- Bartlett
- 2006
- 阅读价值：

most loss functions are not completely robust to label noise

## 基于概率模型 estimate noisy label

包括 EM-based 模型、置信学习等。

基本的数学模型是：

1. noise 与 label 有关，狮子容易被分类成猫，但不容易被分类为轮船。
2. 找 noisy label 和 true label 之间联合概率分布矩阵 / 转移矩阵。
3. 用概率矩阵识别 clean label 或 noise label，修正数据集。


### paper: Training deep neural-networks using a noise adaptation layer -- 2017

- https://openreview.net/references/pdf?id=Sk5qglwSl
- Jacob Goldberger
- 2017
- 阅读价值：高

借鉴通信的信道模型，用 EM 算法。
有点像 NLP 里的 HMM 模型。

建模思路：

- The correct unknown label can be viewed as a hidden random variable
- Model the noise processes by a communication channel with unknown parameters.

求解思路：

用 EM 算法找 network 和 correct label。这个思路 2012，2016 年都有不错的文章发出。

典型的流程如下

- E-step, estimate the true label
- M-step, retrain the network

缺点是，每次预测完 label 都要重新 train model。
改进的思路是，用 1 个 neural network 端到端的做完 2 步。

2014 年 Sukhbaatar & Fergus 提出在最后面加一个 constrained linear layer 连接 correct label and noisy label。在部分有强假设的场景下，可行。

本文的贡献是，把 Sukhbaatar 加的 linear layer 换成 softmax layer，提高了模型的普适性。

作者的观点：

1. 改模型可以扩展到 the case where the noise is dependent on both the correct label and the input features.
2. 适用于 noisy distribution 未知的数据集。

### paper: Confident Learning: Estimating Uncertainty in Dataset Labels -- 2019

- https://arxiv.org/abs/1911.00068
- Curtis G. Northcutt
- 2019
- 阅读价值：高

cleanlab 库的算法原理

cleanlab code: https://github.com/cgnorthcutt/cleanlab

假定，noise 只与 true label 有关，与 feature 相互独立。

核心思路：

1. 通过 prune, count, rank 3 步可以高效率算出 joint probabilities（true and predicted labels)
2. 根据 joint probabilities 识别 label error。

理论基础是 Angluin 1988 的 CNP 理论。

![](../images/confident-learning-process.png)

本文的核心贡献: we prove CL exactly estimates the joint distribution of noisy and true labels with exact identification of label errors under realistic sufficient conditions.

The resulting CL procedure is a model-agnostic family of theory and algorithms for characterizing, finding, and learning with label errors. It uses predicted probabilities and noisy labels to count examples in the unnormalized confident joint, estimate the joint distribution, and prune noisy data, producing clean data as output.

## 迭代的学习

- curriculum learning
- semi-supervised learning
- co-training
- self-training
- ...

这种模型太多了，大同小异，文章看不完了。。。

核心思路：

1. 先用大量/全部数据 training 一个 model，或者用公开的 model。
2. 用 model 预测一遍 dataset，根据 loss 等参数，选出大概率为 true 的 label。
3. 用 true label 重新或继续 training model。
4. 重复 2-3 步。

不同之处在于，

1. 如何分组。curriculum learning 一次把 dataset 分成 N 组，从易到难的训练。其他大方法，大多每次只选出简单的 1 组，然后简单的组越来越壮大。
2. 重复 training 的时候，比如，学习的目标能否更复杂（全面）一点，把上一轮学到的参数也纳入新模型的学习目标里。

总的来说，semi-supervised learning 相对更热门一些。

### paper: MentorNet: Learning Data-Driven Curriculum for Very Deep Neural Networks on Corrupted Labels -- 2018

- https://arxiv.org/abs/1712.05055
- Lu Jiang, Li Fei-Fei
- 2018
- 阅读价值：高

code: https://github.com/google/mentornet

Li Fei-Fei Google 组里的文章。

curriculum learning，课程学习，借鉴人类的学习模式。
按照先容易后复杂的顺序，学习效果更好，学习速度更快。
想象一下，给一个小学生随机丢 100 以内的加法和微积分学习任务。

难点在于，curriculum（课程）怎么选？

最早可以追溯到 Bengio 2009 年提出 curriculum learning。使用 predefined fixed curriculum。

本文的主要贡献：

1. 自动学习 data-driven 课程。MentorNet learns a data-driven curriculum to supervise the base deep CNN, naely StudentNet.
2. 根据 StudentNet 的反馈，更新 Curriculum。

论文里也给出了 Curriculum Learning 比较严谨的数学模型，是不错的参考资料。

简单总结：目标函数里，有 3 个参数 w, v, lambda。

其中，

- w 就是一般 CNN 要学习的权重。
- lambda 是超参数，表示学习难度。
- v 是 curriculum learning 引入的权重， v_i < lambda, 表示第 i 条数据 "easy"，参与本次训练。

可见，lambda 和 v 共同定义了“课程”。

学的过程是：依次固定 v，w，优化另外一个参数。

随着学习的进行，逐步调大 lambda，引入越来越多的学习数据。

## TODO

1. MixUp -- 2018
2. MixMatch -- 2019
3. DivideMix -- 2019
4. co-teaching -- 2018

## 总结

1. noise 分布就在那里，不管你是否绕开。预测准了就能一路开挂。
2. 当前的几个研究方向都不冲突，融合 & 暴力出奇迹是趋势。
3. 2017 年之后，论文数量激增，体现研究热度很高。semi-supervised learning 相对更火一些。
