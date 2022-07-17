---
tags:
- computer-system
- hpc
---

# 高速缓存

Created: 2022-05-06 11:07

## Readings

- Scott Meyers: Cpu Caches and Why You Care https://www.youtube.com/watch?v=WDIkqP4JbkE

## Cache 类型

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h1yjhdrlinj20st0ey0wk.jpg)

## 高速缓存

m - 总地址长度，分 s 个 cache set(缓存组)，每组 e 个 cache line. 每个 cache line 是 b 个字节的 block。另外有 1 个 valid bit，t 个标记位

t 表示，组内的第几个 cache line。当 valid bit 有效时，生效。

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h1yoyqq9ikj20z50o3jvq.jpg)


![](https://tva1.sinaimg.cn/large/e6c9d24egy1h1yrj5oruxj20fw0bpmxm.jpg)

对称多处理器 (SMP)

1 个 x86 CPU 有 4 个物理 Core，每个 Core 有两个 HT (Hyper Thread)
