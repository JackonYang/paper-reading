# Quick-bench Dot Com

Created: 2022-05-01 11:19

## Notes

在线测 c++ 代码的 benchmark

例子：

[vector reserve benchmark](https://quick-bench.com/q/WHAVxKybeeNMP6-fdEeW8r6_m0M)

## 注意事项

1. `benchmark::DoNotOptimize(v);` 很重要
2. 重复运行时，默认使用 cache。可以勾选 Clear cached results 禁用 cache：

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h1sqonrau0j21h40oxwi0.jpg)

## Case Study

[[Case Study - Is OFast Slower than O2]]

## References

1. https://quick-bench.com/
