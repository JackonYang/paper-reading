# 处理性能优化地图

## 优化的基本定理

- [Amdahl-s Law](../05-Notes%20Block/Amdahl-s%20Law.md)
- [Gustafson-s Law](../05-Notes%20Block/Gustafson-s%20Law.md)
- [Roofline Model](../05-Notes%20Block/Roofline%20Model.md)

## 优化方法论

- [Streetlight Pattern](../05-Notes%20Block/Streetlight%20Pattern.md): 只做会的，不做对的。
- 先 profile 再分析。不要相信直觉。
- top down: 架构设计 -> 代码实现 -> 硬件指令级
- bottom up: 救火队使用
- [性能调优的方法分类](../05-Notes%20Block/Levels%20of%20Performance%20Optimization.md) 4 级： 硬件级、运行级、编译器级和代码级。

## 性能推演

- [Key Performance Indicator](../05-Notes%20Block/Key%20Performance%20Indicator.md)
- [useful-benchmarks](../05-Notes%20Block/useful-benchmarks.md)
- [矩阵乘法的极限理论性能推演](../05-Notes%20Block/performance%20estimate%20demo%20-%20General%20Matrix%20Multiplication.md)

## 工具

1. [perf-tools-and-docs](perf-tools-and-docs.md)
