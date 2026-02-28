Title: 芯片的新黄金时代 (1) -- 芯片发展历史回顾
Date: 2020-01-20 22:08
Category: 芯片
Tags: 芯片, 炼丹
Summary: 芯片领域即将进入新的黄金时代。尝试回答 4 个问题: 1. 为什么新时代来了？2. 方向是什么，重点在哪里？3. 机遇和挑战是什么？4. 如何进入？

这是多篇相关 paper 的阅读笔记，尝试回答 4 个问题：

1. 为什么新时代来了？
2. 方向是什么，重点在哪里？
3. 机遇和挑战是什么？
4. 如何进入？

paper list 见文末的参考文献


## 发展历史回顾

芯片的历史，可以归结为：

1. 从分到合，通用芯片成为主流。
2. 通用芯片急速发展。
3. 通用芯片的发展趋于缓慢。

分久必合，合久必分。


#### 1960s, IBM 统一 ISA

注：ISA 是指令集的缩写 instruction set architecture

1960 年代初期，IBM 有 4 条互不兼容的计算机系列，针对不同市场。small business, large business, scientific, and real time.

IBM 押注统一 ISA 能改变行业，并成功了。55 年后的今天，每年还能获得 $10 billion 收益。


统一 ISA 的关键是设计处理器的核心组件：the control hardware。新思路是用 2 维数组形式的 control store。

- 一列是 1 个 control line,
- 一行是 1 个 微指令（microinstruction）.

control store 里包含微指令开发的 ISA interpreter。所以，执行一条传统指令需要多个微指令完成。

control store 用内存实现，比使用逻辑门的成本要低得多。


#### 集成电路（Integrated circuits）与复杂指令集（CISC）

摩尔定律意味着 control storage 越来越大，能存放的指令越来越多。

微处理器仍处于8位时代，各家公司不断加入新的指令来超越竞争对手，并通过汇编语言展示他们的优势。

戈登·摩尔雄心勃勃的打造下一代指令集，32 bit，面向对象，可变长。最终未能成功。
折衷版本，1978 年发布了 16bit 的 8086 指令集。


#### 从 CISC 到 RISC(精简指令集)

1970 年代末，AT&T 授权外部可以使用 UNIX。UNIX 的成功证明 OS 也能用高级语言开发。
影响了芯片界的研究方向，并引发了软硬件接口的新一轮革命。

- 新方向: What instructions would compilers generate?
- 老方向: What assembly language would programmers use? 

这引发了大家对 CISC 指令集的反思。

1. Emer and Clark 发现 20% 的 VAX 常用指令用了 60% microcode，但只占 0.2% 执行时间。
2. DEC 工程师表明，RISC 的速度是 CISC 的 4x。

计算机性能公式：

Time/Program = Instructions / Program x (Clock cycles) / Instruction x Time / (Clock cycle)

1. 第 1 项，每程序的指令数，CISC 是 RISC 的 75%
2. 第 2 项，每指令的时钟周期数，CISC 是 RISC 的 5-6 倍。
3. 因此，总的提升倍数，~4x

同时，几个研究生做出 2 款比产业界更出众的处理器，进一步展示了 RISC 指令集的优势。

- RISC-I, Berkeley, 1982
- MIPS, Stanford, 1983


#### 试图更快的 VLIW & EPIC

ISA 的下一代，旨在提升指令级并行(ILP)。预期 RISC 和 CISC 都能收益。

2 个有代表性的指令集：

- VLIW: Very long instruction word
- EPIC: explicitly parallel instruction computer

核心思路是：
1 条指令包含 6 个独立操作。 2 data transfers, 2 integer operations, and 2 floating point operations
并行优化的任务从 hardware 转移到了 software（compiler）。

Donald Knuth 评价：
"The Itanium approach ... was supposed to be so terrific—until it turned out that the wished-for compilers were basically impossible to write."
（设想非常棒，但无人能写出这种编译器。）

EPIC 的实际表现：

- 浮点运算，高度结构化，性能较好。
- 整形计算，less predictable cache misses or less-predictable branches，难以实现高性能。

作为通用计算的 ISA，是失败的。


#### Post-PC Eras 的 CISC & RISC

2007 年，Apple 设计 iPhone 处理器，启动了 post-pc 时代。

- 移动设备上，对芯片面积（die area）、能效比的重视程度，与处理性能相当。 CISC 劣势。
- 海量 IoT 设备，还看重成本。CISC 进一步劣势。

从数量上看，

- x86 出货量，2011 年是峰值，以后每年下降 10%
- RISC 出货量，2018 年已经猛增到 20 billion. 99% of 32-bit and 64-bit 处理器是 RISC.


#### 总结

- CISC 赢了 PC 时代的最后一段。
- RISC 赢了 post-PC 时代。
- 通用处理器的最佳 ISA 设计原则，依旧是 RISC


## 目前的挑战

#### 摩尔定律 & 登纳德缩放效应 -- 已失效

摩尔定律(Moore's Law)

- 1965 年，首次提出。预测芯片密度每年 1 倍
- 1975 年，修正为 2 年 1 倍。
- 2000 年，开始放缓。
- 2018 年，实际密度只有预测值的 1/15。已失效。

![Transistors per chip of Intel microprocessors vs. Moore's Law](http://deliveryimages.acm.org/10.1145/3290000/3282307/f2.jpg)

登纳德缩放定律(Dennard scaling)

内容：

1. 芯片上的晶体管密度增加，但每个晶体管的能耗会降低，所以，每 mm^2 芯片上的功耗不变。
2. 因为单位芯片面积的算力在不断提升，所以，电脑会更加节能。

趋势：

1. 1974 年，提出。《Design of ion-implanted MOSFETS with very small physicaldimensions》
1. 2007 年，开始下降。
2. 2012 年，已失效。

![Transistors per chip and power per mm^2](http://deliveryimages.acm.org/10.1145/3290000/3282307/f3.jpg)


#### 1986-2002，ILP 提升性能的时代

从 1986 到 2002 年，ILP 技术是提升性能的主要架构手段。

Dennard scaling 失效，意味着需要其他手段提升 parallelism。因为，ILP 越高，能效比越差。

consider a modern processor core like those from ARM, Intel, and AMD. Assume it has a 15-stage pipeline and can issue four instructions every clock cycle. It thus has up to 60 instructions in the pipeline at any moment in time, including approximately 15 branches, as they represent approximately 25% of executed instructions. To keep the pipeline full, branches are predicted and code is speculatively placed into the pipeline for execution. The use of speculation is both the source of ILP performance and of inefficiency. When branch prediction is perfect, speculation improves performance yet involves little added energy cost—it can even save energy—but when it "mispredicts" branches, the processor must throw away the incorrectly speculated instructions, and their computational work and energy are wasted. The internal state of the processor must also be restored to the state that existed before the mispredicted branch, expending additional time and energy.
To see how challenging such a design is, consider the difficulty of correctly predicting the outcome of 15 branches. If a processor architect wants to limit wasted work to only 10% of the time, the processor must predict each branch correctly 99.3% of the time. Few general-purpose programs have branches that can be predicted so accurately.

On average, 19% of the instructions are wasted for these benchmarks on an Intel Core i7. 

#### 多核时代

#### 被忽视的安全问题

DSA
DSL


# 为什么新时代来了


2 关键的现象：

1. 通用计算发展的速度明显放缓，摩尔定律（Moore's Law）和登纳德缩放定律（Dennard Scaling）基本失效。我们看到，CPU 的性能提升越来越不明显。
2. 专用加速芯片的兴起。AI 芯片层出不穷。

意味着 


End of Moore's Law and Dennard Scaling
We began our Turing Lecture June 4, 201811 with a review of computer architecture since the 1960s. In addition to that review, here, we highlight current challenges and identify future opportunities, projecting another golden age for the field of computer architecture in the next decade, much like the 1980s when we did the research that led to our award, delivering gains in cost, energy, and security, as well as performance.


## 参考文献

1. A New Golden Age for Computer Architecture, 2018.06.04, 图灵奖得主的 talk, [英文版](https://cacm.acm.org/magazines/2019/2/234352-a-new-golden-age-for-computer-architecture/fulltext),[中文版](http://www.eeworld.com.cn/mp/leiphone/a60669.jspx)
2. The Decline of Computers as a General Purpose Technology, 2018.11.05, Neil Thompson, [英文版](http://ide.mit.edu/sites/default/files/publications/SSRN-id3287769.pdf), [中文笔记](https://mp.weixin.qq.com/s?__biz=MzI3MDQ2MjA3OA==&mid=2247484962&idx=1&sn=c9fb09a3fa174146a8a6b5f4ce1ddd0a)
