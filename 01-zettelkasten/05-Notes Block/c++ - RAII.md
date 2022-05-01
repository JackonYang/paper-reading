# c++ - RAII

Created: 2022-04-29 23:09

## Notes

1. 是一种 The principle
2. principle 是 objects own resources. 用 Object 生命周期，管理资源分配。

Object lifetime and resource management 的缩写

具体的实现技术，详见 [A Tour of C++ - 03.Class](A%20Tour%20of%20C++%20-%2003.Class.md) 中的各种 constructor 注意事项

Object 自身在 stack memory 上。管理的是 heap memory、连接数、磁盘等其他 resource. [heap and stack memory](heap%20and%20stack%20memory.md)

现代 c++，尽量避免使用 heap memory，用了就要释放。释放时，可能 block 后续的计算。尽量用 stack variable.

When a resource is too large for the stack, then it should be owned by an object. As the object gets initialized, it acquires the resource it owns. The object is then responsible for releasing the resource in its destructor. The owning object itself is declared on the stack.

A C++ program is responsible for returning all acquired resources to the operating system. garbage collection in C++ is closely related to object lifetime, and is deterministic.

## References

1.
