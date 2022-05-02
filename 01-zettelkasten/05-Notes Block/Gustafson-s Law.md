# Gustafson's Law

Created: 2022-05-02 10:18

## Notes

Amdahl's Law 的改进版。

Amdahl's Law 假定了问题的规模（计算量）不变，实际上，随着资源利用率的改善，工程师们总是会增加新的计算需求进来，提升了问题规模。

因此，不能被并行优化的部分，随着问题规模的增长，对系统总体速度的影响，越来越小。

公示：

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h1t9udrvvpj20q4083gm9.jpg)

注意，斜率越高，表示可以被并行加速的计算占比越高，对应的，加速效果（空间）也就越大。

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h1t9sdzetbj20qz0j0ac6.jpg)

## References

1. https://en.wikipedia.org/wiki/Gustafson%27s_law
