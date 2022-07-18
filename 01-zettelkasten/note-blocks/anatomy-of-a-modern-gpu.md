---
tags:
- gpu
- hpc
---

# Anatomy of a Modern GPU

Created: 2022-05-10 11:29

## The Basic Format

核心是 FP ALU & INT ALU。分别负责浮点和 int 计算。

Control Unit(?)：管理 ALU 指令的 decoding and issuing。
用户无法编程控制，硬件换代升级更容易，不需要前后兼容，只要 compiler 兼容即可。

存储，至少需要 2 类，on-chip 的高速 cache（SRAM），以及普通的 local memory（DRAM）。GPU 用的一般是 GDDR DRAM

另外一些是做图形渲染的：

- TA: texture addressing
- TF: texture fetch
- The block beneath it writes the color values for the pixels in the frame, as well as sampling them back (PO) and blending them (PB)

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h235jyr4c7j20uk0chwf3.jpg)

## 增加 ALU 提高并行能力

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h23agfug92j20uk09kjs0.jpg)

## 多 Block 进一步提升并行

每个 block 里都有一个 Control Unit。
多个 control unit，可以进行跟复杂任务的并行计算。

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h23ajqy39cj20uk0a5mxy.jpg)

## 2080ti - Turing 架构

#TODO

## References

1. https://www.techspot.com/article/1874-amd-navi-vs-nvidia-turing-architecture/
