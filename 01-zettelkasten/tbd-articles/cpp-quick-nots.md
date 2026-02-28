# Cpp Quick Notes

Created: 2022-04-22 23:12

## TODO

- [ ] heap memory 的分配算法对 coding 有哪些具体影响？
- [ ] model of memory and computation
- [ ] c++ 学什么？技能等级标准
- [ ] 使用ld的--warp 来hook memcpy函数并在入口处使用boost/stacktrace来在LOG中打出调用栈

## Random Notes

C++11标准才开始规定 static变量是线程安全的

"C++ cache aware programming". For instance:
- [CPU Caches and why you Care](https://www.aristeia.com/TalkNotes/codedive-CPUCachesHandouts.pdf)
- [Writing cache friendly C++ (video)](https://www.youtube.com/watch?v=Nz9SiF0QVKY)

**Small String Optimization (SSO)**. 减少内存分配

stl 里，存储和计算分离，container 是存储。
stl container 线程不安全

vector 的 clear() 不会清内存, 释放内存用  swap 或 shrink_to_fit
vector 析构慢, 可以采用多线程 swap 析构 (在较大的项目中这一点很重要)

unordered_map 的 size 一般为质数, 因为string的hash值容易出现倍数,因此用素数 mod 一下, 分散冲突

hash 冲突的情况下, c++是用 list 查找, java 则是用 map 查找

unordered_map 是 hash table，倍增扩容

如果用 string 做 key，map 可能很慢，要一位位比对。建议用unordered_map
如果 key 是 int，不推荐 unordered_map，因为 hash 一般没用。

Lower_bound(a) 和 Upper_bound(b). 时间复杂度 O(log n)
	1. 1 2 3 4 5 查 2 a=2, b=3
	2. 1 2 4 5 6 查 2 a=3, b=3
	3. map自带这两个算法,内部实现有优化

### C ++的设计目标

高效地使用硬件
- 保持与C语言兼容，C++代码与C代码运行时应具有相似（或更好）的性能；
- 将内置操作和类型直接映射到硬件，以提供有效的内存使用和有效的低级操作；

零成本的抽象机制
- 低成本的灵活抽象机制，可为用户定义的类型提供与内置类型相同的符号支持，用途范围和性能；
- 类，继承，模板，概念，别名等；

### C++ 的最佳实践

- 尽量使用现代C++（C++11 以上）进行C++编程，开发效率，性能，安全性都有极大提高；
- 尽量使用智能指针，用RAII模式管理对象生命周期；
- 理解C++对象的内存模型和布局，方便定位和解决各种C++内存问题；
- 异常是一个即安全又危险的特性，请谨慎使用；
- 熟悉常见的设计模式和C++特有的设计范式，帮助自己设计构建更好的系统，对代码进行必要的重构；
- 代码一定要做单元测试，测试代码尽量覆盖所有的分支（覆盖率尽量高），可以采用GoogleTest单元测试框架；
- 代码最好用valgrind等工具跑一遍，检查代码有没有内存泄漏和异常；
