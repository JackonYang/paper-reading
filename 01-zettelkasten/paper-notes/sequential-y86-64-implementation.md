---
title: Sequential Y86-64 Implementation
filesize_readable: 734.3 KB
meta_key: sequential-y86-64-implementation
meta_relpath: paper-extra-data/pdf-meta/sequential-y86-64-implementation.yaml
pdf_relpath: paper-repo/pdfs/Sequential%20Y86-64%20Implementation.pdf
reading_status: DONE
tags:
- y86
url_slug: Sequential%20Y86-64%20Implementation
---

[pdf(local)](../../paper-repo/pdfs/Sequential%20Y86-64%20Implementation.pdf)

# Sequential Y86-64 Implementation

1. 处理指令分 6 个阶段
2. 控制指令执行：
	- 用时钟控制状态元素的更新
	- 值通过组合逻辑来传播
3. 用时序（timing）控制写 - 存储。使得所有状态更新同时发生

# 处理指令的 6 个阶段

- 取指（fetch）：从存储器读，地址是 PC。2 个 4 bit 部分，inode & ifunc，以及 rA, rB, valC, 计算新 PC 的 valP（正常跳转时）
- 译码（decode）：从寄存器读最多 2 个。得到 valA, valB. 一般是从 rA, rB 读。有的从 %esp 读。
- 执行（execute）：ALU，得到 valE。增加或减少栈指针的计算，也是 ALU。另外，可能设置条件码，或者处理跳转指令。
- 访存（memory）：从存储器（不是寄存器），读写、写。读出的是 valM。
- 写回（write back）：最多 2 个结果，写会寄存器堆。
- 更新 PC（PC update）：将 PC 设置成下一个指令地址

# 实现的硬件

- 组合逻辑
- 存储设备
	- 时钟控制的硬件寄存器：PC（程序计数器），CC（条件码）
	- 随机访问存储器：寄存器堆，指令存储器，数据存储器

# SEQ 的时序（timing）

不需要时序或控制的：

1. 组合逻辑。只要输入变化了，值就通过逻辑门网络传播。
2. 读-随机访问存储器。根据地址输入产生输出字。可以看成与组合逻辑一样的操作。
3. 指令存储器。只用来读指令。

需要时序控制的：

1. PC（程序计数器）
2. CC（条件码寄存器）
3. 数据存储器
4. 寄存器堆

通过一个时钟信号控制。所有的状态更新，实际同时发生，且只在时钟上升开始下一个周期时。

# 电路重定时

circuit retiming

把 PC update 提前到指令开始时。

平衡各部分的延迟，方便后面设计 pipelining。
