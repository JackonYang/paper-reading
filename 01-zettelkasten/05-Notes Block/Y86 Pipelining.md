# Y86 Pipelining

Created: 2022-05-04 19:17

## Notes

实现上，需要引入流水线寄存器。（pipeline register）。会略微增加单条指令的 latency。

## 流水线的局限性

1. 不一致的 step 划分。时钟周期卡在最慢的 step 上。ALU 和 存储器，一般没法拆分。
2. 深度流水线，收益反而下降。现代 CPU 一般 15 或更深。
	1. 流水线寄存器的延迟，尽可能小。
	2. 时钟传播网络，尽可能在整个芯片上同时。
3. 带反馈：
	1. 数据相关 data dependency
	2. 控制相关 control dependency

## 预测下一个 PC

为了每个时钟周期都发射（issue）一条新指令，需要预测 PC。

- 条件跳转：难预测。全选择，60% 命中率
- call & jmp：就在指令里的常数字 valC
- ret：调用和返回成对出现，用额外的硬件栈，在调用时存入 ret 地址

## 流水线冒险 Hazard

看的不太仔细，大概的意思，记一记。可能有理解错误。

反馈引起的，所有，2 类冒险：

1. data hazard：前面写的寄存器，后面立即读。间隔的时钟周期数不够。
	1. 暂停（stalling）：加 nop 指令，空跑几个周期。
	2. 前递（data forwarding）：加个 forward 硬件模块，直接传到流水线寄存器里用起来
	3. nop + forward
	4. 加载互锁，解决 load/use harzard
2. control hazard，大部分在预测 PC 的时候解决

## References

1.
