---
tags:
- chip
---

# Training and Inference GPU Cards

Created: 2022-05-01 12:43

训练卡 和 推理卡

## Notes

NVIDIA在人工智能领域已经形成了:

- 以 Tesla P100 和 DGX-1 为核心的训练系统
- 以 P4/P40 和 Tensor-RT 为核心的数据中心推理系统
- 以 DRIVE PX 2 与 Driveworks 为核心的智能驾驶体系

P4 专为加速 1U OCP 服务器而设计，功率仅为50W；
P40专为最大吞吐量而设计，能将 CPU 推理加速 40 倍
V100 的 TensorCore 是很重要的优化。

TensorCore 对于深度学习用途很大，需要到计算能力 7.0 的 Volta 才有，而 Tesla P100 是计算能力 6.0 的 Pascal。

因为散热方式的问题，Tesla 卡是用在机架服务器上，而 Titan V 是可以用在工作站上的.

## GPU 卡对比

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h1st3gdl28j20kg08dmxp.jpg)

Comparison of Tesla T4, P100, and V100 benchmark results:
![](https://tva1.sinaimg.cn/large/e6c9d24egy1h1st3q4y8oj20i20cimxt.jpg)

## References

1. [https://www.microway.com/hpc-tech-tips/nvidia-turing-tesla-t4-hpc-performance-benchmarks/tesla_comparison_t4-p100-v100/](https://www.microway.com/hpc-tech-tips/nvidia-turing-tesla-t4-hpc-performance-benchmarks/tesla_comparison_t4-p100-v100/)
2. [一文详解英伟达刚发布的 Tesla V100 究竟牛在哪？](https://www.leiphone.com/category/yanxishe/jjgpHtCj6ClvFWUO.html)
