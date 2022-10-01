---
tags:
- cuda
---

# Learning CUDA

Created: 2022-05-08 23:56

## 学习材料

入门 code:

- [Hands On CUDA](../../02-tutorial-code/03-hands-on-cuda/README.md)

书:

- [cuda_by_example](../paper-notes/cuda_by_example.md)
- [cuda_application_design_and_development](../paper-notes/cuda_application_design_and_development.md)

## 笔记

The CUDA parallel programming model is designed to overcome this challenge while maintaining a low learning curve for programmers familiar with standard programming languages such as C.

At its core are three key abstractions - a hierarchy of thread groups, shared memories, and barrier synchronization - that are simply exposed to the programmer as a minimal set of language extensions.

These abstractions provide fine-grained data parallelism and thread parallelism, nested within coarse-grained data parallelism and task parallelism. They guide the programmer to partition the problem into coarse sub-problems that can be solved independently in parallel by blocks of threads, and each sub-problem into finer pieces that can be solved cooperatively in parallel by all threads within the block.

A GPU is built around an array of Streaming Multiprocessors (SMs)

Unlike CPU cores, they are issued in order and there is no branch prediction or speculative execution.

The term warp originates from weaving, the first parallel thread technology

When a multiprocessor is given one or more thread blocks to execute, it partitions them into warps and each warp gets scheduled by a warp scheduler for execution. The way a block is partitioned into warps is always the same; each warp contains threads of consecutive, increasing thread IDs with the first warp containing thread 0. [Thread Hierarchy](https://docs.nvidia.com/cuda/cuda-c-programming-guide/index.html#thread-hierarchy) describes how thread IDs relate to thread indices in the block.

 all 32 threads of a warp

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h24antvj4qj20bz09c3yn.jpg)

## GPU 代码的运行流程

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h21fs6k70zj20oh0b5wev.jpg)

## 线程排布

grid，block，和thread

<<<gird, block>>>指定GPU启动线程的数量和其在GPU上的大致分布。

其中block和硬件层面的SM对应。

实际上，为了更好的和程序结合，CUDA的线程可以成三维排列。虽然没有很大的用处，但是可以减少用户把thread的uid自己重新在空间中排列的工作。

two_d_kernel<<<dim3(2,2),dim3(3,3)>>>(a_device, b_device, c_device, dim);

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h21gxmypx8j20gd0ec3za.jpg)

## 优化

1. IO优化（提高cache命中、使用share memory、register等）
	1. cache友好的访问模式。
	2. 使用shared memory暂存频繁读写的数据。
2. 并行规划（让计算与IO、IO与IO、计算与计算互相overlap）

## GPU 的 Memory 布局

GPU有两级cache，其中L1 cache每个SM都有一个
硬件上，每个SM有一个shared memory。具有接近register的速度。
软件上，所有一个block内的thread共享一个shared memory的数据。
![](https://tva1.sinaimg.cn/large/e6c9d24egy1h21h0m13s2j211t0k9wgr.jpg)


nvidia_samples/1_Utilities/deviceQuery/deviceQuery.cpp，查看你的机器以上储存器的容量。

如果是cuda10.1以上版本，请使用nvidia_samples_10.1+/Samples/deviceQuery/deviceQuery.cpp make编译

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h21h61u7wmj21ns0iy0xy.jpg)

## 并行管理 Stream

stream：kernel 互相 overlap

请注意 memcpy 是阻塞的还意味着，他必须等 stream 上的其他工作做完，然后在开始自己，然后结束自己，然后把控制权交回 CPU。
