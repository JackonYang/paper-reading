---
tags:
- ai-compiler
---

# Machine Learning Compilation - Tianqi Chen

course: https://mlc.ai/summer22/schedule

MLC: machine learning compilation

## Course summarys

course 1 - Overview: https://www.youtube.com/watch?v=Oc_wVXdnrrM

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h4xibm2seoj21eg0ry422.jpg)

course 2 - Tensor Program Abstraction: https://www.youtube.com/watch?v=H0UrECDLHMc

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h5108dpawij20tz0chabi.jpg)

## Why study MLC

从一种 IR 到另一种 IR。

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h4xhnw099xj21ks0u0q8b.jpg)

training process 也可以 compile。比如，出于数据安全的考虑，需要发布到客户的机器上做 training。客户机器，可能是 edge device。

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h4xhvag5f2j21lm0u00zu.jpg)

## Key elements in MLC

basic element:

1. tensor
3. tensor function

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h4xi0qtt9zj21ok0tw0xx.jpg)

个人理解：

1. tensor 层面，MLC 可优化 shape，split（tiling）
2. tensor function 层面，可以做的很多。比如，算子融合，结合硬件指令的高性能实现。

example, 做了一次算子融合。

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h4xi762rs5j21kn0u0jw8.jpg)

## Course Plans

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h4xi8pnygfj21pb0u0agg.jpg)

## Primitive Tensor Function

元张量函数，tensor function 的一种。

个人理解：这是很重要的桥梁。

1. 作为积木，可以组合出算法人员能理解的 graph
2. 作为被分析物，种类数量可控，拆开后有较多相似特征。方便 HPC 做优化。

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h4xit4xlrij21iq0u0djr.jpg)

primitive functions 可以有多种实现方式。
In practice, primitive functions are implemented in low-level languages such as C/C++ with sometimes a mixture of assembly code.

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h4xj1cwycwj21gg0u0aez.jpg)

MLC 可以换个计算更高效的 primitive functions 实现方案。

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h4xj3nytdjj21jj0u0797.jpg)

Tensor Program Abstraction

抽象了 3 个东西：

1. (Multi-dimensional) buffers，主要是 input/output
2. Loop nests。循环内是 computations
3. computations：实际的计算逻辑。

个人理解：跟 HPC 差不多的，核心就是发现了：计算以大量循环为主，并行加速，一招鲜。

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h4xjairm2mj21fn0u0wj0.jpg)

一个例子：

1. 如果最小抽象是 add，sub，2 个函数需要分别优化。拆开后就是同一类优化。
2. 典型的优化套路：split，parallelize，vectorize，reorder。

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h51038ruxqj20s00ftgnr.jpg)

extra 的结构信息标注：告诉优化器，这里是 xxx 的简单场景，可以安全的使用更激进的优化算法。

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h5106q9ocej20s70fh0uy.jpg)
