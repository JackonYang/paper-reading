---
tags:
- computer-system
- gpu
- hpc
---

# What is SIMT in GPU

Created: 2022-05-09 17:14


SIMT 是 [SIMD](simd-and-mimd.md) 的改进版

# 为什么基于 SIMD

GPU 做的运算，就是重复的在大量的数据上运行相同的数学方程。

- 指令：数学方程。
- data：就是 data。

完美的符合 SIMD 的定义。

simply running the same mathematical function over and over again at scale

many processors running the same instruction on multiple data sets is ideal.

CAD 是多个离散的数学运算，适合用 MIMD。MIMD is most effective in applications that call for multiple discrete computations to be executed such as computer-aided design (CAD).

# 什么是 SIMT

在 SIMD 的基础上，加了多线程。

TODO 减少了指令 fetch 的 overhead

The SIMT architecture is akin to SIMD (Single Instruction, Multiple Data) vector organizations in that a single instruction controls multiple processing elements. A key difference is that SIMD vector organizations expose the SIMD width to the software, whereas SIMT instructions specify the execution and branching behavior of a single thread. In contrast with SIMD vector machines, SIMT enables programmers to write thread-level parallel code for independent, scalar threads, as well as data-parallel code for coordinated threads.

# References

1. https://docs.nvidia.com/cuda/cuda-c-programming-guide/index.html#simt-architecture
