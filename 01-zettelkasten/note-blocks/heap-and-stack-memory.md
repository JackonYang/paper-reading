---
tags:
- cpp
---

# heap and stack memory

Created: 2022-04-29 23:15

## Notes

函数不能返回 stack variable 的指针(? TODO)，但 heap memory 里的，可以。

new 和 delete，管理 heap memory。

实际上，stack memory 里不只是存 local variable，还有别的。详见 OS 的基础课。

stack memory 是连续分配的。heap memory 不是，所以，产生了很多 memory 分配算法。

## c++ Memory Layout

Memory layout of a c++ program:
- `stack`: stores local variables
- `heap`: dynamic memory for programmer to allocate
- `data`: stores global variables, separated into initialized and uninitialized
- `text`: stores the code being executed

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h1ix8jnq9aj209y0a83yf.jpg)

## References

1. https://courses.engr.illinois.edu/cs225/sp2022/resources/stack-heap/
