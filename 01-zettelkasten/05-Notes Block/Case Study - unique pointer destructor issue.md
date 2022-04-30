# Case Study - unique pointer destructor issue

Created: 2022-04-30 20:50

## Notes

演示代码：[[02-tutorial-code/01-cpp-basics/02-unique-pointer-destructor/README]]

现象：

1. frame class 的 destructor 没有执行，
2. frame class 的 print 函数正常执行了。

解释：

问题 1：为什么没执行 frame 的 destructor

1. 调用了 unique_ptr 的析构函数，
2. 根据 unique_ptr 的 API，如果 own no object，也就不会调用 class 的 destructor。
3. 此处的 unique_ptr 没有用 make_unique 或其他方法初始化，所以 own no object

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h1s1ujc0onj20u00gm786.jpg)

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h1s1ux0gyhj20u00g3n0k.jpg)

问题 2: 即使没初始化，为什么 print 函数正常执行

1.  此处函数调用不需要访问 this 指针。因为，成员函数在代码区且没有访问对象成员

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h1s209ct3bj20hl0jx0u2.jpg)

## References

1. [一道非常经典C++面试题|大厂面试](https://mp.weixin.qq.com/s/896GLy_nBEnLlorPgZJ8BA)
2. 