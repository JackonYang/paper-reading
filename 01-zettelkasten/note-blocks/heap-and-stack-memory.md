# heap and stack memory

Created: 2022-04-29 23:15

## Notes

stack 是自动管理的内容，连续，编译时就知道 data 的内存大小。

heap 是 malloc 和 free 手动管理的内容。编译时可以不知道 data 的内存大小。c++ 里面，还有 new 和 free。

因为 stack 是自动管理的连续内存，当函数返回时，很多变量就被自动清理了，如果要在外面使用，需要 copy 一份才可以。拷贝的机制，取决于编程语言的语法设计。

如果编译器没搞黑魔法，函数不能返回 stack variable 的指针，但 heap memory 里的，可以。

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
