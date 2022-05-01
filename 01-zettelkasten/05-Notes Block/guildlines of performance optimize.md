# Guildlines of Performance Optimize

Created: 2022-05-01 22:01

## Notes

## 优化的基本定理

### Amdahl's Law

阿姆达尔定律，针对并行计算

1. 不能被并行加速的部分，限制了最大加速比。the overall performance improvement gained by optimizing a single part of a system is limited by the fraction of time that the improved part is actually used
2. 单模块的加速，对系统总体速度的影响，越来越小。

提升并发数对整体速度的影响曲线
![](https://tva1.sinaimg.cn/large/e6c9d24egy1h1t95eo0z2j20zk0rsn01.jpg)

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h1t956q5q5j20kb08ajru.jpg)

### Gustafson's Law

Amdahl's Law 的改进版。

Amdahl's Law 假定了问题的规模（计算量）不变，实际上，随着资源利用率的改善，工程师们总是会增加新的计算需求进来，提升了问题规模。

因此，不能被并行优化的部分，随着问题规模的增长，对系统总体速度的影响，越来越小。

公示：

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h1t9udrvvpj20q4083gm9.jpg)

注意，斜率越高，表示可以被并行加速的计算占比越高，对应的，加速效果（空间）也就越大。
![](https://tva1.sinaimg.cn/large/e6c9d24egy1h1t9sdzetbj20qz0j0ac6.jpg)

## Roofline Model

估算加速效果的模型。考虑的因素，包括：

1. 硬件限制
2. 优化措施的效果和优先级
3. locality
4. bandwidth
5. 并行模型
6. 等

## 方法论

### Streetlight Pattern

A policeman sees a drunk looking under a streetlight,
and asks what he is looking for.
The drunk says he has lost his keys.
The policeman can't find them either,
and asks if he lost them under the streetlight.
The drunk replies:
"No, but this is where the light is best."

总结：只做会的，不做对的。

## References

1. https://en.wikipedia.org/wiki/Amdahl%27s_law
2. https://en.wikipedia.org/wiki/Gustafson%27s_law
3. https://en.wikipedia.org/wiki/Roofline_model
