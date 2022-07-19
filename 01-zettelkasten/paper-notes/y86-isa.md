---
title: Y86 ISA
filesize_readable: 86.8 KB
meta_key: y86-isa
meta_relpath: paper-extra-data/pdf-meta/y86-isa.yaml
pdf_relpath: paper-repo/pdfs/Y86-ISA.pdf
reading_status: DONE
tags:
- y86
url_slug: Y86-ISA
---

[pdf(local)](../../paper-repo/pdfs/Y86-ISA.pdf)

# Y86 ISA

## ISA 介绍

- 8 个寄存器，与 x86 一样。%esp 是栈指针
- movl 指令，分成了 4 个，根据源 & 地址类型不同。不同于 x86.
- OPl 是整数操作。addl, subl, andl, xorl. 只能对寄存器操作，所以需要先 movl 再 OPl。x86 里能对存储器操作，只需要 1 条指令。
- call 指令把返回地址入栈，然后跳到目的地址。ret 从这样的过程调用中返回。
- PC 程序计数器，存放当前正在执行指令的地址
- 3 个 1 位的 condition code
	- ZF：零
	- SF：符号
	- OF：溢出

## Y86 字节编码

字节编码必须具有唯一的解释。

指令
```bash
rmmovl %esp 0x12345(%edx)
```

编码结果：404245230100

编码过程：

1. rmmovl: 40
2. %esp + %edx: 42
3. 0x12345: 补 0 并按字节（8 bit）反序，45 23 01 00
