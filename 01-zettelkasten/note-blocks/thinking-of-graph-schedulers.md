---
tags:
- graph-scheduler
- thinking
---

# Thinking of Graph(Pipeline) Schedulers

Created: 2022-05-13 02:36

## Notes

1. data platform. batch compute(map-reduce), Stream (kafka etc)
2. Argo in k8s
3. cpu pipeline
4. compiler LLVM
5. tensorrt

本质是一个 DAG。如何调度。

1. 有哪些有意思的问题 & 解决方案

这是一个 NP-hard 问题。

1. 通常要兼容一些 legacy code，限制了 scheduler 的发挥空间
2. hazard 影响吞吐量，解决方案，讨论最深入的是 CPU pipeline。
3. pipeline 是异步编程，高性能的实现，需要 buffer / channel 机制，需要减少内存拷贝。如果用 c++，如何实现。
4. IO 传输可能带来的巨大 overhead
5. 如果有 global memory，需要锁的场景，用什么锁。
6. 保序。乱序执行提高吞吐量，有序输出降低用户使用难度。
