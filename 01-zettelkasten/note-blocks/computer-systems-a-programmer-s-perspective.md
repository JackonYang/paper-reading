---
Alias: CSAPP
title: Computer Systems - A Programmer s Perspective
title_cn: 深入理解计算机系统
douban: https://book.douban.com/subject/1230413/
tags:
- book
- computer-system
year: 2004
---

# Computer Systems - A Programmer's Perspective

## Summary

重点内容: Chap 4 - CPU 体系结构。理解 Y86 指令集 & sequential 的 CPU 实现

## CPU 体系结构(Y86)

一句话总结：
1. ISA 提供了程序执行的顺序说明。
2. CPU 用组合逻辑 + 时序控制，pipeline 起来表象为乱序执行。

CPU 设计上，感受上，遇事不决加电路。

- 理解 CISC ISA 指令设计: [y86-isa](../paper-notes/y86-isa.md)
- 设计 CPU 的基础：[cpu-logic-design-and-hcl](cpu-logic-design-and-hcl.md)
	- 硬件：组合电路，存储(时钟寄存器 & 寄存器堆)
	- 软件：HCL 语言
- Sequential 的 CPU 实现: [sequential-y86-64-implementation](../paper-notes/sequential-y86-64-implementation.md)
	- 指令分 6 个执行阶段
	- 组合逻辑，值在里面传播，不用存储
	- 时序（timing）控制写-存储
	- 电路重定时（circuit retiming）
- CPU Pipeline 设计: 讲的很一般，不是本书精髓。直接看 [mips-cpu-pipeline-introduction](mips-cpu-pipeline-introduction.md)

## 存储器的层次结构

- [principle-of-locality](principle-of-locality.md)
- [cpu-cache](cpu-cache.md)

## More Reaings

- [formal-verification-of-pipelined-y86-64-microprocessors-with-uclid5](../paper-notes/formal-verification-of-pipelined-y86-64-microprocessors-with-uclid5.md) Y86 pipeline 的形式验证 paper
- [guide-to-y86-processor-simulators](../paper-notes/guide-to-y86-processor-simulators.md) Y86 模拟器
