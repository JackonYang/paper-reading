# Learning PyTorch Framework

Created: 2022-09-04 10:30

## 目标

1. 搞懂 Pytorch Framework，能够去 hack Pytorch 框架。
2. 理解高级的框架 feature，比如动态图、静态图、Dynamic Axis 等。
3. 会写自定义算子 & 解决自定义算Notes子转 Onnx 的问题

## 零基础入门 Pytorch

材料: 经典的 60 分钟入门 pytorch
https://pytorch.org/tutorials/beginner/deep_learning_60min_blitz.html

学习总结:

1. 如果熟悉其他框架，十几分钟就能看完 & 理解原理。
2. 4 个模块的 jupyter 的 notebook 约等于课程本身。
3. 复习的话，好像用处不不大。毕竟，讲的东西太少了。

讲了但理解不深的几个核心概念：

1. 自动微分
2. DAG 里面的自动微分

4 个 notebook，我的备份地址如下
- [01_tensor_tutorial.ipynb](../../02-tutorial-code/06-deep-learning-frameworks/01-pytorch-60min-blitz/01_tensor_tutorial.ipynb) tensor 入门
- [02_autograd_tutorial.ipynb](../../02-tutorial-code/06-deep-learning-frameworks/01-pytorch-60min-blitz/02_autograd_tutorial.ipynb) 自动微分，DL 框架的核心之一。讲的略粗，只能理解个思路， 不太能理解来龙去脉的细节。
- [03_neural_networks_tutorial.ipynb](../../02-tutorial-code/06-deep-learning-frameworks/01-pytorch-60min-blitz/03_neural_networks_tutorial.ipynb)
- [04_cifar10_tutorial.ipynb](../../02-tutorial-code/06-deep-learning-frameworks/01-pytorch-60min-blitz/04_cifar10_tutorial.ipynb)

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h5unbvbivjj20oo0gc75o.jpg)

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h5uvjrydi6j218m0fmmz2.jpg)

## Pytorch Under the Hood

[pytorch-under-the-hood](../paper-notes/pytorch-under-the-hood.md)

对于 deep learning 的工程调优，帮助较大。

## using PyTorch in node.js

https://blog.christianperone.com/2018/10/pytorch-1-0-tracing-jit-and-libtorch-c-api-to-integrate-pytorch-into-nodejs/

## To Read

- [2017-automatic-differentiation-in-pytorch](../paper-notes/2017-automatic-differentiation-in-pytorch.md)
- [2019-pytorch-an-imperative-style-high-performance-deep-learning-library](../paper-notes/2019-pytorch-an-imperative-style-high-performance-deep-learning-library.md)

## Install PyTorch

2022.08.19 mac 需要 build from source。

官方 doc: https://caffe2.ai/docs/getting-started.html?platform=mac&configuration=compile
