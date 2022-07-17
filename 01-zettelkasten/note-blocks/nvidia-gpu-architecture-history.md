---
tags:
- chip
- computer-system
---

# Nvidia GPU Architecture History

Created: 2022-05-09 18:44

## Summary

1. 大面上，越来越多的 core，越来越大的显存。
2. GPU 和 GPU 直连，从 Kepler 2012 开始，Pascal 2016 有了 nvlink，然后 nvlink 越来越快。
3. 近几年开始增加行业相关的优化。比如，deep learning 的 TensorCore，游戏和仿真的 Ray Tracing Core
4. Fermi 之前还有还多代，比如，Tesla。太老了，不看了。

## Fermi - 2010

- Support for 512 CUDA cores
- 64KB of RAM and the ability to partition L1 cache/shared memory
- Support for Error Correcting Code (ECC)

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h21827o9slj20sg0nbtbq.jpg)

## Kepler - 2012

没有后续改进架构的一代，讨论的似乎也不多。

- Support for GPUDirect which allowed GPUs - both in the same computer or with network access to one another - to communicate without accessing the CPU
- A new streaming multiprocessor architecture known as SMX，大同小异
- An increase in CUDA cores to 1536

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h21a78tn5fj20qk0sgdj4.jpg)

## Maxwell - 2014

基于 2010 的 Fermi 架构，而不是 2012 年的 Kepler 架构。

- More efficient multiprocessors as a result of enhancements related to control logic partitioning, clock-gating, instruction scheduling, and workload balancing
- 64KB of dedicated shared memory on each streaming multiprocessor
- Native shared memory atomic operations that offered performance improvements when compared to the lock/unlock paradigm used by Fermi
- Dynamic parallelism support

SM改叫SMM，Core更多了，也更强大了

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h21a9427bej20pj0nttbp.jpg)

## Pascal - 2016

引入 NVLink

- Support for NVLink communications, which can offer a significant speed advantage over PCIe
- High bandwidth Memory 2 (HBM2)- a 4096-bit memory bus that offered a memory bandwidth of 720 GB
- Compute preemption
- Dynamic load balancing to enable optimization of GPU resource utilization

## Volta - 2017

Volta GPUs were marketed strictly for professional applications. Volta was also the first microarchitecture to use Tensor Cores.

从Volta开始，提高了对多进程并发使用GPU的支持。在Pascal及之前，多个进程对单一GPU的使用是经典的时间片方式。从Volta开始，多个用不满GPU的进程可以在GPU上并行.

完全以Deep Learning为核心

单个区块还多个两个 Tensor Core。TensorCore就是只做GEMM计算的单元，可以看到，从这里开始，NVIDIA从SIMT走到了SIMT+DSA的混合。

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h21afmbeq5j20u008dmyg.jpg)

A, B, C, D都是4x4的矩阵，且A和B是FP16矩阵，C和D可以是FP16或者FP32. 通常，更大的矩阵计算会被拆解为这样的4x4矩阵乘法。

## Turing - 2018

给游戏或者仿真用的, 增加了一个 RT Core，全名是 Ray Tracing Core

includes a number of consumer-focused GPUs as well. Turing is the microarchitecture used by Nvidia’s popular Quadro RTX and GeForce RTX series GPUs. These GPUs support real-time ray tracing (a.k.a. RTX) which is vital to computationally heavy applications such as virtual reality (VR).

- RTX 2080 Ti

## Ampere - 2020

除了在 Volta 中的 FP16 以及在 Turing 中的 INT8/INT4/Binary，这个版本新加入了 TF32, BF16, FP64 的支持。

细粒度的结构化稀疏。深度学习模型压缩领域，除了量化，稀疏也是一个大方向，只是稀疏化模型难以利用硬件加速，这个版本的GPU则为稀疏提供了一些支持，当前的主要目的则是应用于 Inference 场景。

3rd generation NVLink and Tensor cores, structural sparsity (the conversion of unneeded parameters to zeros to enable AI model training), 2nd generation ray tracing cores, multi-instance GPU (MIG) to enable partitioning of A100 GPUs into individual logically isolated and secure GPU instances.

## References

- https://images.nvidia.com/aem-dam/en-zz/Solutions/geforce/ampere/pdf/NVIDIA-ampere-GA102-GPU-Architecture-Whitepaper-V1.pdf
- https://images.nvidia.com/aem-dam/en-zz/Solutions/design-visualization/technologies/turing-architecture/NVIDIA-Turing-Architecture-Whitepaper.pdf
- https://images.nvidia.com/content/volta-architecture/pdf/volta-architecture-whitepaper.pdf
- https://images.nvidia.com/content/pdf/tesla/whitepaper/pascal-architecture-whitepaper.pdf
- https://www.microway.com/download/whitepaper/NVIDIA_Maxwell_GM204_Architecture_Whitepaper.pdf
- https://www.nvidia.com/content/PDF/product-specifications/GeForce_GTX_680_Whitepaper_FINAL.pdf
- https://www.hardwarebg.com/b4k/files/nvidia_gf100_whitepaper.pdf
- https://developer.nvidia.com/content/life-triangle-nvidias-logical-pipeline
- https://blog.nowcoder.net/n/4dcb2f6a55a34de9ae6c9067ba3d3bfb
- https://jcf94.com/2020/05/24/2020-05-24-nvidia-arch/
- https://docs.nvidia.com/cuda/cuda-c-programming-guide/index.html
- https://en.wikipedia.org/wiki/Bfloat16_floating-point_format
