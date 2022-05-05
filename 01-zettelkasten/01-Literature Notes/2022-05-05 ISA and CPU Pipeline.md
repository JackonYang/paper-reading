# ISA and CPU Pipeline

## 阅读材料

- [深入理解计算机系统](../02-References/Computer%20Systems%20-%20A%20Programmer-s%20Perspective.md) Chap4 用 Y86 的例子，理解 ISA 和 CPU 的 sequence 实现。
- [计算机体系结构 - 量化研究方法](../02-References/Computer%20Architecture%20-%20A%20quantitative%20Approach.md) CPU Pipeline 讲的毕竟清楚
- [Y86-ISA PDF](../../04-pdf/files/Y86-ISA.pdf)
- Y86 SEQ 实现 PDF：[Sequential Y86-64 Implementation](../../04-pdf/files/Sequential%20Y86-64%20Implementation.pdf)

## 一句话总结

1. ISA 提供了程序执行的顺序说明。
2. CPU 用组合逻辑 + 时序控制执行 ISA
3. CPU Pipeline 提高吞吐量以后，表象为乱序执行。

## 脉络梳理

 - CISC ISA 指令设计：[understanding of Y86 ISA](understanding%20of%20Y86%20ISA.md)
	 - 了解寄存器需求，区分寄存器堆和硬件寄存器。
	 - 理解指令的字节编码方法
- 设计 CPU 的基础：[CPU logic design and HCL](CPU%20logic%20design%20and%20HCL.md)
	- 硬件：组合电路，存储(时钟寄存器 & 寄存器堆)
	- 软件：HCL 语言
	- 概念：
		- 寄存器堆读写端口的数量，影响设计。
		- 时钟控制，上升沿，值从寄存器的输入到输出
- Sequential 的 CPU 实现: [Y86 seq impl notes](Y86%20seq%20impl%20notes.md)
	- 指令分 6 个执行阶段
	- 组合逻辑，值在里面传播，不用存储
	- 时序（timing）控制写-存储
	- 电路重定时（circuit retiming）
- CPU Pipeline 设计: [MIPS CPU Pipeline Introduction](../05-Notes%20Block/MIPS%20CPU%20Pipeline%20Introduction.md) hazard & 条件跳转的分支预测
	- 数据冒险的消除：forwarding（转发）/ 流水线互锁
	- 静态分支预测。假设全中、全不中。
	- 动态分支预测。分支预测缓冲区。2 位预测机制，预测错 2 次，反转 cache。4k 的缓冲区，SPEC89 的最终错误率 1-18%

## 主要知识点

### Harvard Architecture

冯诺伊曼结构里，instruction 和 data memory 不分离。

Y86 是分离的设计。现代服务器也是分离的。指令和 data 用独立的 L1 cache。

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h1x031av01j20k40ctt96.jpg)

### 寄存器类型

分 2 大类
- 寄存器堆。8 个寄存器，`%esp` 是栈指针
- 硬件寄存器：
	- PC 程序计数器
	- CC 跳转寄存器

### RISC 五级流水线

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h1xcuti6zkj20lj087mxs.jpg)

### 分支预测

难点主要是条件分支(if..else, for-loop, switch)的预测。

非条件跳转，jump/call/ret 等，硬件做的很好了，软件开发者可以忽略。

静态分支预测，编译时，利用之前运行过程收集的一览数据。

动态分支预测。分支预测缓冲区，又叫分支历史表。2 位预测机制，预测错 2 次，反转 cache。4k 的缓冲区，SPEC89 的最终错误率 1-18%

整数程序的分支率，一般更高。预测精度低于科学运算。错误率 11% : 4%

## Code & Perf Example

用 [perf](../05-Notes%20Block/perf_events.md) 可以看分支预测成功率

优化方法：for 循环展开，减少 if...else

## References

1. https://en.wikipedia.org/wiki/Harvard_architecture
2. https://en.wikipedia.org/wiki/Classic_RISC_pipeline
