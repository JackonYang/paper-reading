---
tags:
- computer-system
- hpc
---

# SIMD and MIMD

Created: 2022-05-09 10:29

## 摘要

根据 指令和数据 steams 的数量，分 4 类计算机。SIMD 和 MIMD 是最常用的

注意：
1. 是 streams 的数量，不是 指令/data 本身的数量。
2. GPU，用的 SIMD 的改进版。
3. 现代 CPU 一般是 MIMD

## 费林分类法

Flynn’s Taxonomy,
proposed in 1966 and extended in 1972.

根据并行的 instruction streams 和 data streams 数量，定义 4 种计算机类型：

- SISD：一般不用
- SIMD
- MISD：少见，used for fault tolerance，比如航天用的
- MIMD

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h21yoaxb45j20u00x6n0n.jpg)

## SIMD

1972 年的时候，补充定义了 3 种 SIMD

### Array Processor

阵列处理器

each parallel processing unit has its own separate and distinct memory and register file

英伟达的 GPU，基于 Array processor，引入了多线程的概念。叫 SIMT

### Pipelined Processor

流水线处理器

Read Data From a Central Resource. Flynn 在 1972 年写论文时，还都是内存。

现代 CPU 里一般都是 Register file。也叫 packed SIMD

例如：[Altivec](https://en.wikipedia.org/wiki/Altivec "阿尔泰维克")、[NEON](https://en.wikipedia.org/wiki/NEON_(instruction_set) "NEON（指令集）")和[AVX](https://en.wikipedia.org/wiki/Advanced_Vector_Extensions "高级矢量扩展")。

### Associative Processor

关联处理器

in Each Parallel Processing Unit, an _independent_ Decision is Made. Based on Data _local_ to the Unit.

Known as "predicated" (masked) SIMD。

示例包括 [AVX-512](https://en.wikipedia.org/wiki/AVX-512 "AVX-512")

## MIMD

As of 2006, all of the top 10 and most of the [TOP500](https://en.wikipedia.org/wiki/TOP500 "TOP500") [supercomputers](https://en.wikipedia.org/wiki/Supercomputer "Supercomputer") are based on a MIMD architecture.

## References

1. https://en.wikipedia.org/wiki/Flynn%27s_taxonomy
