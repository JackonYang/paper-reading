# Y86 Pipelining

Created: 2022-05-04 19:17

这个讲的不好，推荐看 [MIPS CPU Pipeline Introduction](MIPS%20CPU%20Pipeline%20Introduction.md)

## 流水线的局限性

1. 不一致的 step 划分。时钟周期卡在最慢的 step 上。ALU 和 存储器，一般没法拆分。
2. 深度流水线，收益反而下降。现代 CPU 一般 15 或更深。挑战：
	1. 流水线寄存器的延迟，尽可能小。
	2. 时钟传播网络，尽可能在整个芯片上同时。
3. 带反馈：
	1. 数据相关 data dependency
	2. 控制相关 control dependency, 主要是分支跳转

## 预测下一个 PC

为了每个时钟周期都发射（issue）一条新指令，需要预测 PC。

- 条件跳转：难预测。全选择，60% 命中率
- call & jmp：就在指令里的常数字 valC
- ret：调用和返回成对出现，用额外的硬件栈，在调用时存入 ret 地址

## References

1.
