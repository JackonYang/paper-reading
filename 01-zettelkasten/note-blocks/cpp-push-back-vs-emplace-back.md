---
tags:
- cpp
---

# c++ - push_back Vs emplace_back

Created: 2022-04-29 23:51

## emplace_back 优化了什么

- push_back: 插入时是 move / copy. 没有 move constructor 则用 copy
- emplace_back: constructed in place

详细的流程，看代码演示：
[[02-tutorial-code/01-cpp-basics/01-push_back_vs_emplace_back/README]]

push_back:
1. construct
2. move
3. destructor

emplace_back:
1. construct

总结：emplace_back 优化掉的，只是 move(or copy) & destruct，会有性能提升，但影响一般可以忽略

## 性能实测

测试环境：[https://quick-bench.com/q/vbXC5sFAY5an9c8Iz157ErvBs44](https://quick-bench.com/q/vbXC5sFAY5an9c8Iz157ErvBs44)

1. 快了 1.6 倍，提升比例还不错。
2. 实际项目里，push_back 本身耗时预期很小，即使全部优化掉，可能也影响不到整个系统 performance。

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h1sr28k6otj21hb0obwir.jpg)

## 为什么不能全用 emplace_back

1. emplace_back 有缺点。比如：存在隐式的类型转换而不报错。
2. 加速很微弱，且不稳定。没必要过早的开始优化性能。

比如，结果是在一个 1,000,000 元素的 vector 并插入。如果 push_back 会报错。在代码重构时，这种隐式的改变而不报错，很难查。

```cpp
std::vector<std::vector<int>> vec1;
vec1.emplace_back(1000000);
```

## References

1. [https://yasenh.github.io/post/cpp-diary-1-emplace_back/](https://yasenh.github.io/post/cpp-diary-1-emplace_back/)
2. [CLANG-TIDY - MODERNIZE-USE-EMPLACE](https://clang.llvm.org/extra/clang-tidy/checks/modernize-use-emplace.html)
2. [C++ difference between emplace_back and push_back function](http://candcplusplus.com/c-difference-between-emplace_back-and-push_back-function)
3. [Tip of the Week #112: emplace vs. push_back](https://abseil.io/tips/112)
