---
Alias: cache blocking
tags:
- compiler
---

# loop-tiling

Created: 2022-07-20 15:02

##  背景

### 传统 compiler

编译器里的循环优化有两个重要的目标：

1. 提高局部性
2. 提高并行性

loop tiling (aka cache blocking) 是提高数据局部性最重要的优化之一，是传统编译器和深度编译器考虑的重中之重。

### AI compiler

NPU 一般不存在 L0 / L1 等cache，只有片上有限大小的buff，访存的原理也和CPU不一样。传统的 compiler 解不掉这里的 tiling 问题。

需要解决的问题，例如，针对卷积或者矩阵乘法等特殊的运算 pattern，提供了一种融合经验和搜索的方案，去寻找数据的最佳切分计算方案和搬运策略，并输出 tiling 结果。

## Tiling 理论

根据级别不同可以分为 L2tiling、L1tiling。

通过计算cache miss来估算tiling的作用。

### cost model

Tiling 的方案和某个具体硬件紧密相关，好的思路是依据某个基本架构，完善一个tiling的所有情况，并分析指导哪些是主要场景，来进一步推动硬件去优化，以使得实际性能和tiling 的理论性能更一致。为了输出tiling后方案的性能，也需要一个cost model 模型，该模型输入来源有两种，一个是tiling 策略，一个是硬件基本参数。最终会遍历所有tiling后，给出最优的算子切分策略。

### L2 tiling

也可以理解多核的tiling行为，以卷积举例： 通常所说的模型并行和数据并行就是L2 tiling的一种体现； L2的tiling 往往需要考虑多核，以及整网的部署策略达到最优；L2 tiling的结果： 部署在单个core上的数据量大小和位置； 预加载的信息描述等等

### L1 tiling

是单核单算子的tiling 行为，是为了将数据尽量缓存在core内buff上达到性能最优的一种切分策略；在考虑L1 tiling 时可以只考虑搬运数据量的因素，这样就在搜索时暂不会受到L2tiling的影响；L1 tiling 的结果：单次加载的数据量，加载次序，L1 上的内存分配策略等等。

## 案例分析

### 矩阵成的 L1 Tiling

以矩阵乘法为例介绍L1tiling, Left: [M,K], Right: [K, N] ,Out:[M,N] ,L1 大小为：L1_SIZE ;基本架构为

简单可以分为以下几种情形：

Left +Right <L1_SIZE
该情形不涉及tiling
Left +Right_K <L1_SIZE
Right 对N边进行切分，此时遍历顺序将N边放在最外层，保证Left和Right 均加载一次。这里暂没有考虑搬运和计算并行性，没有引入乒乓或者默认硬件支持细粒度同步。
Left_K +Right<L1_SIZE
Left 对M边进行切分，此时遍历顺序将M边放在最外层，保证Left和Right 均加载一次。
Left_K +Right_k<L1_SIZE
Left 对M边进行切分，Right 对K和N 进行切分，此时遍历顺序将M边放在最外层，保证Left加载一次。
Left_k +Right_K<L1_SIZE
Left 对K和M边进行切分，Right 对N 进行切分，此时遍历顺序将N边放在最外层，保证Left加载一次。
Left_k +Right_k<L1_SIZE
Left 对K和M边进行切分，Right 对K和N 进行切分，此时遍历顺序将K边放在最内层。

### 例子 1

使用Fortran语法 (column major)

```fortran
DO I = 1, N
  DO J = 1, M
    A(I) = A(I) + B(J)  
  END DO
END DO
```

计算 cache miss

假设

1. 每个 cache line 能容纳 b 个数组元素
2. associativity 是 fully associative

则
1. A 的 cache miss 次数是 N / b
2. B 的 cache miss 次数是 N * M / b

因此，给定 M 和 N，内层 M 小，总的 cache miss 更低。

loop tiling 的基本思路很简单，把循环重排一下，使得一个 cache line 在被 evict 之前就被再次使用

tile B，得到

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h4df2hk2ruj214g0h0dhd.jpg)

tile 的本质当总的数据量无法 fit in cache 的时候，把数据分成一个一个 tile，让每一个 tile 的数据 fit in the cache。所以tiling一般从最内层循环开始（tile外层循环的话一个tile就包括整个内层循环，这样的 tile 太大）

新循环

```fortran
DO J = 1, M, T
  DO I = 1, N
    DO jj = J, min(J+T-1, M)
      A(I) = A(I) + B(jj)
    END DO
  END DO
END DO
```

当我们tile J层循环的时候，tile以后J层循环就跑到了外层（loop interchange）。这样又会影响A的缓存命中率。该变换又称为strip-mine-and-interchange。

此时的 cache miss 次数

| | A | B | 总 |
| --- | --- | --- | --- |
| tile 前 | N / b | N * M / b | N / b + NM / b |
| tile 后 |(M/T) * (N/b) | T/b * M/T = M/b | MN / (bT) + M / b |

解释: tile 后，每一轮 J 层循环，B miss 一次。

结论：M 和 N 相当，且远大于 T 时，tile 使 cache miss 缩小 T 倍

## Reference

1. 循环优化之循环分块 (loop tiling) https://zhuanlan.zhihu.com/p/292539074
2. 循环优化之循环分块 (loop tiling) 二 https://zhuanlan.zhihu.com/p/301905385
