# Levels of Parrell Computing

Created: 2022-05-02 10:30

## Notes

简单分 4 类：

1. 位级（bit）- 经历了 8bit, 16bit, 32bit, 64bit。
2. ILP 指令级 (instruction) - 编译器和硬件都是隐式开发 ILP。RISC 并行，先搞了流水线，然后是多指令发射。
3. DLP 数据级 (data) - SIMD(单指令多数据), GPU。向量化，常见于图像处理、深度学习。
4. TLP 线程级：
5. RLP request 级

DLP, TLP, RLP 是显式并行的。需要调整应用程序的结构。

其他：任务级 (task) - 多处理器。内存模型很关键。共享内存，或分布式内存。

前 3 类的优化，非常基础，需要懂 hardware & Linux kernel。

任务级，可以进一步细分为：

1. 线程级并行（Thread-Level Parallel）
2. 请求级并行（Request-Level Parallel）

References

1. [Computer Architecture - A quantitative Approach](../02-References/Computer%20Architecture%20-%20A%20quantitative%20Approach.md)
2. 《七周七并发模型》
