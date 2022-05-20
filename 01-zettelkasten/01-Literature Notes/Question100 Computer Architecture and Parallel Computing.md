# 计算机体系结构与并行计算 100 问

Created: 2022-05-08 09:31

## CPU & 指令集

### 1. 什么是计算机流水线

在单核上实现指令级并行。

指令处理过程拆分为多个步骤，每个时钟周期都发射一条指令，pipeline 执行，提高吞吐率。但每个指令的 latency 会略微提升。

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h2drjscmjmj20bo0aagms.jpg)

### 2. 什么是 SIMD

Single Instruction Multiple Data 单指令流多数据流。需要并行寄存器。

例如一个128位的加法器可以同时做 4 个 int32 加法，或者 2 个 double 的加法，因而提高了计算的效率。

现在的 CPU 一般都支持 SIMD 指令，比如 Intel 的 SSE、AVX 以及 ARM 的 NEON 指令。

### 3. 什么是超标量(super scalar)

即 MIMD 模式。CPU中有一条以上的流水线，一个时钟周期发射多条指令。

处理器具体的能力需要自行查阅处理器的手册，以下图为例，ARM Cortex A72 的单元结构如下
- [https://www.anandtech.com/show/10347/arm-cortex-a73-artemis-unveiled/2](https://www.anandtech.com/show/10347/arm-cortex-a73-artemis-unveiled/2)
![](https://tva1.sinaimg.cn/large/e6c9d24egy1h2drjyj3n5j20iu07c3zc.jpg)

### 4. 什么是乱序执行(out of order)

In computer engineering, out-of-order execution (or more formally dynamic execution) is a paradigm used in most high-performance central processing units to make use of instruction cycles that would otherwise be wasted by a certain type of costly delay. In this paradigm, a processor executes instructions in an order governed by the availability of input data and execution units,rather than by their original order in a program.In doing so, the processor can avoid being idle while waiting for the preceding instruction to complete to retrieve data for the next instruction in a program, processing instead the next instructions that are able to run immediately and independently.

流水线执行时，指令的执行不是有程序中原始数据决定。动态调整指令执行顺序，减少 hazard 导致的 CPU 等待。

### 5. 什么是 Prefetch

指令预取到 L1 指令集 Cache 中，CPU 读指令时，减少等待时间。

### 6. 什么是分支预测，为什么需要

汇编代码存在分支跳转语句，会破坏指令的连续性，导致流水线停顿。

分支跳转语句的来源比较多，if...else / jump / call / ret 等。

条件预测，是在指令结果出来之前，预测它的结果。如果预测成功，则提前执行了几条指令，减少流水线停顿。

非条件跳转，硬件做的很好了，软件开发者可以忽略。条件分支的预测，比如 if else, for-loop，更难更复杂一些。

[2022-05-05 ISA and CPU Pipeline](2022-05-05%20ISA%20and%20CPU%20Pipeline.md)

### 7. 条件分支预测的的手段有哪些？

- 静态预测，编译时执行。由于程序中一般都存在着大量的循环语句，所以，这种策略的命中率一般会远远高于50%以上。
- 动态预测，使用分支历史表。2 位预测机制，预测错 2 次，反转 cache。4k 的缓冲区，SPEC89 的最终错误率 1-18%

### 8. 数据冒险的消除方法有哪些

在硬件层面做了，程序员一般不用关心。2 个方法：转发，加硬件，把输出直接写入流水线寄存器。流水线互锁，解决 load/use hazard。

### 9. 什么是 CPI 或者 IPC？影响指标的因素是什么？

cycle per instruction。硬件层面一般用 CPI。软件优化时用 IPC。

一般来说，CPI 越小越好。

影响因素：

1. 不同指令有不同的 throughput
2. 各种 hazard。比如，内存访问，错误的分支预测。

### 10. 如何测 CPI

用 `perf stat`

code example: [branch-prediction](../../02-tutorial-code/02-profile-examples/03-branch-prediction/README.md)

### 11. 指令的 Latency 和 Throughput 会怎样影响程序的执行效率？

latency对于影响的是单条指令的运行速度，程序的指令级并行比较差的情况下，latency会显著地影响速度。

throughput影响的是程序指令的执行速度上限，即在指令级并行做到极致的情况下，程序的指令最大执行速度。

## 内存 & Cache

### 1. 为什么需要缓存？

1. 访问内存太慢。有效地将内存移到更靠近处理器的地方。
2. 设计良好的程序，一般具有很好的空间局部性和时间局部性。可以 cache

### 2. 为什么设计 L1 / L2 / L3 三级缓存？

访问内存的 Latency 太高。越快的 cache，成本越高。
3 级设计，在降低 Latency 和成本之间平衡。

[Wikichip](https://en.wikichip.org/wiki/intel/microarchitectures/skylake_(server))提供了不同 CPU 型号的 cache 延迟，单位一般为 cycle，通过简单的运算，转换为 ns。以 skylake 为例，CPU 各级 cache 延迟的基准值为：

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h2dtwruxh3j20rh09t3yq.jpg)

CPU Frequency:2654MHz (0.3768 nanosec/clock)

### 3. 什么是组相联、全相联、直接映射，优缺点

核心是：内存中的某个地址，如何映射到 cache 中的对应地址。

- 全相联映射，在 cache 中每个位置可以保存任何位置内存的数据。优点：对 cache 的使用率较高，缺点是单次访问 cache 较慢。
- 直接映射，内存中每个地址在 cache 中只能保存在对应的位置，例如使用内存地址对 cache 大小取模得到的位置。这种做法的优点是每次访问 cache 的速度很快，但是对 cache 的利用率较差，并且容易出现 cache line 换出。
- 组相联映射，介于另外两者之间。每一块内存地址对应多块 cache line，这样就可以降低多个内存映射到相同 cache line 导致换出的概率了，cache 的访问速度快且不容易频繁发生换出。

### 4. 什么是 Cache line，Cache line对于内存访问的影响是什么

cache line 是一次缓存的单位。

缓存不命中时，会写入这条数据及其前后的一组数据，而不是只 Cache 当前数据。在局部性友好的代码里，后续数据访问的命中率会明显提升。

cache line 可以优化连续的内存访问性能，可能会降低随机的内存访问性能。

### 5. 怎么看机器上 Cache Line 的大小。

```bash
getconf -a | grep CACHE
```

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h2dtdv1mfmj20jk0fiq4o.jpg)

### 6. Cache Trash 是什么，如何避免

cache 颠簸。同时循环访问 2 个变量 x 和 y，二者映射到相同的 cache 组，缓存冲突，反复相互覆盖导致命中率很低。

避免方法：数组长度加填充，避免使用 2 的幂次方。

### 7. 什么是 Cache Coherence

缓存一致性。一般是指多核架构下，每个核独占的 cache (L1 Cache) 之间的数据一致性问题。其中一个 CPU 写数据时，另一个 CPU 读，数据可能不一致。

通常，处理器都实现了 Cache 一致性 (Cache Coherence）协议解决不一致问题。

### 8. Cache Line 伪共享问题

多核架构下发生，是 Cache Coherence 问题的衍生品。由多个 CPU 上的多个线程同时修改自己的变量引发的。表面上是不同的变量，但是实际上却存储在同一条 Cache Line 里。

### 9. 什么是 NUMA 架构

多核架构下，每个核都有本地内存，访问速度更快。主要是为了应对多处理器下总线竞争的问题。

一个 SMP 系统，按照其 CPU 和内存的互连方式，可以分为 UMA (均匀内存访问) 和 NUMA (非均匀内存访问) 两种架构。

以 x86 为例，早期的 x86 就是典型的 UMA 架构。例如下图，四路处理器通过 FSB (前端系统总线) 和主板上的内存控制器芯片 (MCH) 相连，DRAM 是以 UMA 方式组织的，延迟并无访问差异

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h2du6gz0zgj20nm0fkgmc.jpg)

然而，这种架构带来了严重的内存总线的性能瓶颈，影响了 x86 在多路服务器上的可扩展性和性能。

因此，从 Nehalem 架构开始，x86 开始转向 NUMA 架构，内存控制器芯片被集成到处理器内部，多个处理器通过 QPI 链路相连，从此 DRAM 有了远近之分。

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h2du6xds19j210o0skju0.jpg)

### 10. NUMA 架构下对于性能计算加速的影响

NUMA 架构下 CPU 访问内存存在 local 和 remote 的区别，访问 local memory 的速度较快，访问 remote memory 的速度较慢。

在程序设计时，需要尽可能的访问 local memory，必要时需要采用绑核、绑定memory 等手段。

### 11. 什么是虚拟内存？TLB的作用是什么

TODO

### 12. 什么是 Page Fault

虚拟地址找物理地址，但是访问不了 TODO

### 13. 哪些情况会导致 Page Fault

TODO

1. 访问权限不够
2. 映射关系没建立
3. 页面在交换空间中

## GPU

### 1. GPU 和 CPU 的主要区别

GPU 降低了 cache 和 Flow Control 的需求，针对几千个线程的并行计算设计。

[GPU vs CPU](../05-Notes%20Block/GPU%20vs%20CPU.md)

### 2. 什么是OpenCL，和 CUDA 的关系

TODO

### 3. Tesla P4 的标称 FLOPS 为 5.5TFLOPS，该数据是怎么来的

TODO

公式：`浮点性能参考指标 (xFLOPS) = 处理器频率 * 总运算核心数 * flops/cycle`

### 4. NVIDIA GPU 计算和存储分为哪几层？怎么和 CUDA 对应

计算
- thread
- thread blocks
- kernel grid

memory
- register
- read only memory
- L1 cache
- L2 cache
- global memory

分为一个任务控制核心和很多流控制器，每个流处理器有自己的1级缓存，和共用的2级缓存

[CUDA Hierarchy Computing Model](../05-Notes%20Block/CUDA%20Hierarchy%20Computing%20Model.md)

### 5. Pinned Memory 与 GPU 传数据，为什么比 Pageable Memory 快。

硬件上，可以并发的拷贝，而不用担心出错。

### 6. 怎么用 Pinned Memory

申请 host 内存时，用 cudaMallocHost 代替 malloc

### 7. GPU 上是否有 Cache Line

有。原理同 CPU Cache Line

### 8. 什么是 TensorRT，TensorRT 的优化技巧都有哪些

todo

### 9. GPU 任务调度中，同一个 CUDA Stream 的 Kernel 的执行顺序遵循什么原则

todo

### 10. GPU 任务调度中，不同 CUDA Stream 中的的 Kernel 的执行遵循什么原则

todo

## OS

TODO

## 编译器

### 1. 什么是 Intrinsic

编译器内在函数，介于汇编 & c 语言之间，提供更高的速度和处理器功能。

与特定指令共享一对一或多对一关系。 这允许使用高级编程构造来编写特定指令，并使开发人员不必担心调用约定，寄存器分配和指令调度。

[what are intrinsics](../05-Notes%20Block/what%20are%20intrinsics.md)

## 并行计算的基础理论

### 1. 什么是 Amdahl 定理

1. 不能被并行加速的部分，限制了最大加速比。the overall performance improvement gained by optimizing a single part of a system is limited by the fraction of time that the improved part is actually used
2. 单模块的加速，对系统总体速度的影响，越来越小。

[Amdahl-s Law](../05-Notes%20Block/Amdahl-s%20Law.md)

### 2. 如何评估并行计算的加速效果

使用 [Roofline Model](../05-Notes%20Block/Roofline%20Model.md)

### 3. 什么是 AOS 和 SOA

AOS和SOA是用来存储一系列记录结构的方式。

- AOS(Array of Structures)是指将各个结构用数组存储。
- SOA（Structure of Arrays)是指将结构中的各个部分用数组存储。

一般来说 SOA 对优化更友好

### 4. 什么是指令级并行 (ILP)

指令级的并行，有 2 大类，对应 3 个常见的概念：

1. multi issue: 多发射
	1. 软件管理：VLIW（非常长指令字）
	2. 硬件管理：superscalar（超标量 ）
2. pipelining: 流水线

[Compiler - Instruction-Level Parallelism](../05-Notes%20Block/Compiler%20-%20Instruction-Level%20Parallelism.md)

### 5. 什么是线程级并行 (TLP)

分成可以并行的能够单独处理的工作任务

### 6. 什么是数据级并行 (DLP)

同时操作许多数据项等。一般是 SIMD

### 7. 循环展开为什么有效，需要注意什么

1. 减少了 loop control 的 overhead
2. 一般来说可以提高 loop 内数据的关联性

假设，add 的指令 latency 是 4， throughput 是 1（实际上，add 的 latency 一般是1），那么，需要循环展开成 4 份才能掩盖住循环体之间数据依赖的 latency

```cpp
// code 1
int sum = 0;
for (int i = 0; i < 10000; i++)
{
    sum += a[i];
}
 
// code 2
int sum = 0, sum1 = 0, sum2 = 0, sum3 = 0, sum4 = 0;
for (int i = 0; i < 10000; i+=4)
{
    sum1 += a[i];
    sum2 += a[i+1];
    sum3 += a[i+2];
    sum4 += a[i+3];
}
sum = sum1 + sum2 + sum3 + sum4;
```

## 手动实践

### 1. CPU 占用达到100%，不修改算法，是否还能优化？

能。包括：

1. CPI 很高，导致实际大部分 CPU 时间在 STALL
2. spin lock 等

## 平台相关 - Intel

### 1. Intel 近年来的架构都有什么，为了提高计算能力，都有哪些改进

[Intel CPU Architecture History](../05-Notes%20Block/Intel%20CPU%20Architecture%20History.md)

架构的升级可能带来的影响（仅考虑和计算有关的部分）：

1. 新的指令集的支持，比如从 SSE 到 AVX 到 AVX2 到 AVX512 ，计算能力是不断提升的，包括：
	1. 向量长度增加 (128bit → 256bit → 512bit)
	2. 乘加指令的支持 (AVX → AVX2)
	3. 数据类型的支持 (SIMD 是否支持 int8)
2. 多核架构上的新技术，比如从 ring 到 mesh 的数据环路，比如 QPI 等技术。
3. 缓存结构的变动，比如，inclusive 的 L2 到 exclusive 的 L2 等

### 2. 简述 SSE、AVX、AVX2 指令集，以及它们的区别。

- SSE ： 128 bit
- AVX ： 256 bit ， 不支持乘加指令。
- AVX2 ： 256 bit，支持乘加指令

注意：

1. AVX 本质上是 2 个 128 bit 的向量拼在一起的 256bit 操作，所以有些操作，比如 hadd 等是不支持的
2. AVX 和 SSE 混用会带来性能上的下降
3. AVX 指令会带来额外的功耗，处理器会自动降频，注意，在计算时不要使用自动降频操作。

## 平台相关 - ARM

### 1. 什么是 NEON 指令集

ARM 指令集下的 SIMD 指令集，用于提高浮点计算的 GFLOPS，包括：

- 向量的存取
- 向量的乘、加

### 2. 简述 ARM-v7 和 ARM-v8 的区别

（只考虑计算性能相关的升级）

TODO

### 3. 给定一款 ARM 的核心，比如 Cortex-A72，假设只能运行在 1.6GHz，其峰值计算能力是多少？怎么计算得到？

乘加指令的 ThroughPut 为 1，视作 2 次 Float 操作；

则 fp32 的 GFLOPS = 1.6G × 4 × 2 = 12.8 GFLOPS

公式：`浮点性能参考指标 (xFLOPS) = 处理器频率 * 总运算核心数 * flops/cycle`

### 4. NEON 中乘加对应的 Intrinsic 是什么？加法和乘法呢？

乘加：vfma，加法：vadd，乘法：vmul

注意：vfma 和 vadd、 vmul 的 throughput 相同。

## 其他

TODO

1. 线程与进程相关概念
2. OpenMP，如何使用 OpenMP
3. Linpack 是什么 ？

## References

1. https://en.wikichip.org/wiki/intel/microarchitectures/skylake_(server)
