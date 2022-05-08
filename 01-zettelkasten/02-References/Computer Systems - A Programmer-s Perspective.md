# Computer Systems - A Programmer-s Perspective

Created: 2022-05-03 10:17

## 基本信息

- 中文: 深入理解计算机系统
- Pub Time: 2004
- 豆瓣: https://book.douban.com/subject/1230413/

## 重点内容

1. Chap 4 - CPU 体系结构
	- 理解 Y86 指令集 & sequential 的 CPU 实现

## CPU 体系结构(Y86)

一句话总结：
1. ISA 提供了程序执行的顺序说明。
2. CPU 用组合逻辑 + 时序控制，pipeline 起来表象为乱序执行。

CPU 设计上，感受上，遇事不决加电路。

PDF 版详细笔记：[Sequential Y86-64 Implementation](../../04-pdf/files/Sequential%20Y86-64%20Implementation.pdf)

- 理解 CISC ISA 指令设计：[understanding of Y86 ISA](understanding%20of%20Y86%20ISA.md)
- 设计 CPU 的基础：[CPU logic design and HCL](CPU%20logic%20design%20and%20HCL.md)
	- 硬件：组合电路，存储(时钟寄存器 & 寄存器堆)
	- 软件：HCL 语言
- Sequential 的 CPU 实现: [Y86 seq impl notes](Y86%20seq%20impl%20notes.md)
	- 指令分 6 个执行阶段
	- 组合逻辑，值在里面传播，不用存储
	- 时序（timing）控制写-存储
	- 电路重定时（circuit retiming）
- CPU Pipeline 设计: 讲的很一般，不是本书精髓。直接看 [MIPS CPU Pipeline Introduction](../05-Notes%20Block/MIPS%20CPU%20Pipeline%20Introduction.md)

## 存储器的层次结构

- [Principle of Locality](../05-Notes%20Block/Principle%20of%20Locality.md)
- [CPU Cache](../05-Notes%20Block/CPU%20Cache.md)

## Reference

1. [csapp-talk-3e](../../04-pdf/files/csapp-talk-3e.pdf) lab(练习题) 不错
2. [Formal Verification of Pipelined Y86-64 Microprocessors with UCLID5](../../04-pdf/files/Formal%20Verification%20of%20Pipelined%20Y86-64%20Microprocessors%20with%20UCLID5.pdf) Y86 pipeline 的形式验证 paper
3. [Guide to Y86 Processor Simulators](../../04-pdf/files/Guide%20to%20Y86%20Processor%20Simulators.pdf) 看一下 Y86 模拟器长什么样
