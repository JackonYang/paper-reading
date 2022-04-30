# 2022-04-30 Smart Pointer - cpp notes

Created: 2022-04-30 20:37

## 要点

crucial to the [[c++ - RAII]] programming idiom

1. 不用手动 new / delete
2. 避免了常见的重复 delete 问题

4 个智能指针. 除了 auto_ptr 外，c++11 都支持。

- auto_ptr 已废弃, 用 unique pointer
- shared_pt
- weak_ptr
- unique_ptr

auto_ptr: 赋值构造或拷贝构造以后，新的 ptr 会夺权内存管理权，容易重复 delete。
shared_ptr: 没有必要的拷贝，会导致 counter 加加减减。造成 performance 问题。

## References

1. [[GotW-89 - Smart Pointers]]
2. [[GotW-91 - Smart Pointer Parameters]]
3. cnblogs: [C++智能指针总结](https://www.cnblogs.com/wuyepeng/p/9741241.html)