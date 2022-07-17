---
tags:
- compiler
- reading-notes
---

# Machine-Independent Optimizations

Created: 2022-05-14 01:26

阅读笔记 [Dragon Book](../paper-notes/2009-compilers-dragon-book.md)

## 保持语义不变的转化

- 公共子表达式消除。common subexpression。引入复制语句。
- 复制传播。会制造出死代码。
- 死代码消除
- 常量折叠。也是消除死代码用的
- 代码移动。code Motion。把结果不变的表达式移到循环外。比如 `while (i < limit-2)`, 先算 `t=limit - 2`
- 归纳变量和强度消减 strength reduction
	- 归纳变量，每次循环都增加或减少 constant 值
	- 依赖，乘法运算比加法/减法慢很多。

## 数据流分析简介

### 数据流抽象

todo

这是本章的重点内容，比较数学化。

## References

1.
