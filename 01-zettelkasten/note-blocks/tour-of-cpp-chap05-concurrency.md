---
tags:
- cpp
- reading-notes
---

# C++ Concurrency

阅读笔记 [a-tour-of-cpp](../paper-notes/a-tour-of-cpp.md)

Created: 2022-04-27 17:33

Layers:

1. hardware 支持
2. OS API
3. c++ std lib API，OS API 的 c++ wrapper, target at 0 overhead
4. 并发模型的 API

Lock-free 的并发模型

std lib 支持原子的同时加多个锁，避免死锁。

用 shared object，处理性能可能不如 copy args & resist：

1. 现代计算机，拷贝内存，非常快。尤其是连续内存。
2. locking & unlocking，很贵。尤其是 unlocking。

## C++ Std lib

- thread
- mutex, lock
- packaged_task
- future & promise
- async

## Events

<chrono> 库

## future & promise

无锁的

把 value 放入 promise，通过 future.get 获取执行结果

若没执行完，future.get 会 sleep 等待。

## References

1.
