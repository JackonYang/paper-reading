---
tags:
- gpu
---

# GPU Architecture

Created: 2022-05-08 19:16

## GPU Intro

每一行有多个Core，却只有一个Control，这代表着多个Core同一时刻只能执行同样的指令，这种模式也称为 SIMT (Single Instruction Multiple Threads)

GPU通过Host Interface读取CPU指令，GigaThread Engine将特定的数据从Host Memory中拷贝到内部的Framebuffer中。随后GigaThread Engine创建并分发多个Thread Blocks到多个SM上。多个SM彼此独立，并独立调度各自的多个Thread Wraps到SM内的CUDA Cores和其他执行单元上执行。

- SM: 对应于上图中的SM硬件实体，内部有很多的CUDA Cores
- Thread Block: 一个Thread Block包含多个线程（比如几百个），多个Blocks之间的执行完全独立，硬件可以任意调度多个Block间的执行顺序，而Block内部的多个线程执行规则由程序员决定，程同时程序员可以决定一共有多少个Blocks
- Thread Warp: 32个线程为一个Thread Warp，Warp的调度有特殊规则，本文后面会继续深入

上图存在16个SMs，每个SM带32个Cuda Cores，一共512个Cuda Cores. 这些数量不是固定的，和具体的架构和型号相关。

每个CUDA Core含有一个Integer arithmetic logic unit (ALU)和一个Floating point unit(FPU). 并且提供了对于单精度和双精度浮点数的FMA指令。

一个 SM 如下
![](https://tva1.sinaimg.cn/large/e6c9d24egy1h2192nxtmwj20h60pwt9y.jpg)

SM内还有16个LD/ST单元，也就是Load/Store单元，支持16个线程一起从Cache/DRAM存取数据。

4个SFU，是指Special Function Unit，用于计算sin/cos这类特殊指令。每个SFU每个时钟周期只能一个线程执行一条指令。而一个Warp(32线程)就需要执行8个时钟周期。SFU的流水线是从Dispatch Unit解耦的，所以当SFU被占用时，Dispatch Unit会去使用其他的执行单元。

Dual Warp Scheduler

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h219nstgqsj20s90iwdhb.jpg)

## References

1. [Navi vs. Turing: An Architecture Comparison](https://www.techspot.com/article/1874-amd-navi-vs-nvidia-turing-architecture/) 2019.12.19, AMD's 7nm Latest vs. Nvidia's RTX Tech
2. https://www.cherryservers.com/blog/everything-you-need-to-know-about-gpu-architecture 2021，写到了 Ampere 架构。
3. https://developer.nvidia.com/cuda-zone
