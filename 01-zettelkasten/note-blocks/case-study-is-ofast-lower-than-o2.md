---
tags:
- compiler
- cpp
---

# Case Study - Is OFast Slower Than O2

Created: 2022-05-01 10:31

## 问题现象

测试 push_back vs emplace_back 时，结果不符合预期。
对比 2 图，开 Ofast 的，push_back 比 O2 的还要慢

测试环境：[https://quick-bench.com/q/8BE_4RgtUrY_lCj_uUiEeDl7LJs](https://quick-bench.com/q/8BE_4RgtUrY_lCj_uUiEeDl7LJs)


开 O2 优化
![](https://tva1.sinaimg.cn/large/e6c9d24egy1h1r2r8y68kj21h70onae7.jpg)

开 Ofast，push_back 比 O2 的还要慢
![](https://tva1.sinaimg.cn/large/e6c9d24egy1h1r2px2vlgj21hg0of42h.jpg)

## 问题分析

存在 2 个问题：

1. push_back 里少了 DoNotOptimize，导致结果不稳定的概率偏高。
2. 以为反复测试了，实际网站都在显示 cache

加了 DoNotOptimize，并把循环的次数都从 32 改成 64 避免了 cache，这次都合理了，都在误差范围内。

理论上 -Ofast 主要只影响浮点数计算的。真要精心调的话，自己用文档里的细节的优化选项，而不是用这些一个顶几十个的优化选项。

## References

1. [[cpp-push-back-vs-emplace-back]]
2. [[clang-optimization-levels]]
