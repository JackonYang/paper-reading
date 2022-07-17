---
tags:
- cpp
- reading-notes
---

# c++ Class

阅读笔记 [a-tour-of-cpp](../paper-notes/a-tour-of-cpp.md)

Created: 2022-04-23 19:50

abstraction & resource management (RAII)

RAII: Resource Acquisition Is Initialization

理解 vtbl

## Class

### 基本概念

3 类主要的 class:
- concrete class，具体类。behave just like built-in types。
- abstract class，抽象类。有 pure virtual function
- classes in class hierarchies，继承类

concrete class 默认分配在 stack memory 上。但 member 可以是指向 heap memory 的指针，在 stack memory 上只需要存储 member 的指针。

abstract class，不知道他的 representation，甚至不知道 size，所以必须把对象分配到 heap memory 里，然后用 reference / pointer 访问。不能直接用对象访问。

hierarchy class 的 父类调用子类的方法时，并不确定当前父类是哪个子类的实例化。先用 dynamic_cast 转子类，如果转失败，返回 nullptr。dynamic_cast 的输入是引用，或 ptr 解引用。

### 资源管理

推荐 RAII 模式管理资源。

良好的设计，意味着用对 4 种 constructor：
- construction
- copy，分 constructor 和 assignment
- move，分 constructor 和 assignment。入参是 && (右值引用)。
- destruction

每个分配的 resource，都要有一个 owner，用 owner 的生命周期唯一控制资源的申请和释放。

resource 的 owner，避免使用裸指针，用 smart pointer 帮助管理生命周期。非 owner 对象，可以用裸指针，代码更简洁。From
[CppCon 2014 - Herb Sutter - Back to the Basics - Essentials of Modern C++ Style](../02-References/CppCon%202014%20-%20Herb%20Sutter%20-%20Back%20to%20the%20Basics%20-%20Essentials%20of%20Modern%20C++%20Style.md)

resource can be moved from scope to scope using move semantics or smart pointers.

1. 如果 constructor 申请了资源，就要有 destructor 去释放。
2. 如果自定义 destructor，一般也要自定义、或禁用 move/copy constructor
3. 自定义 destructor 后，不会生成默认 move constructor。默认的一般做不对了。
4. 如果 class 里有 pointer 或 reference 成员，可能需要设计 destructor, copy operations。
5. 抽象类，不需要 constructor，因为，不支持自己需要申请什么资源。
6. 有 virtual function 的类，destructor 也应该 virtual。

### Best Practice

主要是关于 class 设计的 tips

1. 用 concrete class 表示简单的概念、性能敏感的模块。
2. 用 const 关键词，声明不修改 object state 的成员函数。
3. 用 override 关键词，显式指定 function 用于覆盖父类的函数。
4. 用 =delete 声明禁用函数。一般用于 copy & move constructor。
5. 用 =default 关键词，显式声明启用的构造函数以后，没被声明的，不会默认生成。
6. virtual function 用 = 0, 声明纯虚函数。
7. 多态 object 的访问，需要用 reference 或 pointer。
8. 默认的，单参数的 constructor 声明 explicit，防止 = 时隐式类型转换。

### 处理性能

1. 简单的成员函数，尽可能 inline。即，生成的 machine code 里没有函数调用。
2. return container by value，依赖高效的 move constructor

## Virtual Function & Vtbl

vtbl (virtual function table), 一张表（数组），维护类的所有虚函数指针。

每个类一个 vtbl。

compiler 在编译时，把虚函数的函数名转成 vtbl 里面的 index。

caller 只需要知道 vtbl 的地址 & 虚函数的 index，就可以调用。

相比于普通的函数调用，性能损失低于 25%。空间的 overhead 是每个 object 一个 pointer & 每个 class 一个 vtbl。

Q: vtbl 性能损失，是否主要来自 CPU pipeline 的条件分支预测成功率下降？
[2022-05-05 ISA and CPU Pipeline](../articles/2022-05-05%20ISA%20and%20CPU%20Pipeline.md)

据说是 virtual function 的汇编

```asm
...
movq    (%rax), %rax
movq    (%rax), %rax
movq    -24(%rbp), %rdx
movq    %rdx, %rdi
call    *%rax
...
```

## 设计八卦

有用，但有没那么硬核的知识。

c++ 的核心语言特性。

除了以下 3 个语言特性， 其他都是为了设计 better class 或 shi y使用 class 更方便。

- fundamental types
- operators
- statements

concrete class. representation is part of its definition。实现是定义的一部分。

## References

1.
