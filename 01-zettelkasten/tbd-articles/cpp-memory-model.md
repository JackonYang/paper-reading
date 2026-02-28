# Cpp-memory-model

Created: 2022-04-28 01:55

导出内存 dump memory

通常使用top命令查询Rss驻留的内存，找到相应的pid，再用lsof -p pid查看打开了哪些文件，可以优化比较大的文件，第三步pmap -X pid查看内存分配情况。如果发在[heap]类型占用的内存较大，那就要查找程序malloc分配了哪些内容占用内容（如果是第三方程序，就需要dump内存来查看个大概是什么内容在里了）,dump内存的方法

> # 获取内存地址起止地址
> # cat /proc/6086/maps 或#pmap 6086
>
> # gdb --pid 1604
>
> >dump memory /tmp/php-memory.dump 0x0146f000 0x06ebf000 --表示开始和结束内存地址（16进制）
>
> # 查看数据
> # strings -n 10 /tmp/php-memory.dump


C++的内存问题（内存泄露，内存溢出，内存宕机，堆栈破坏等问题）

## C++内存模型

C++11在标准库中引入了memory model

可以在high level language层面实现对在多处理器中多线程共享内存交互的控制。我们可以在语言层面忽略compiler，CPU arch的不同对多线程编程的影响了。我们的多线程可以跨平台。

C++11在标准库中引入了memory model。

可以在high level language层面实现对在多处理器中多线程共享内存交互的控制。我们可以在语言层面忽略compiler，CPU arch的不同对多线程编程的影响了。我们的多线程可以跨平台。


栈为什么要由高地址向低地址扩展，堆为什么由低地址向高地址扩展？

历史原因：在没有MMU的时代，为了最大的利用内存空间，堆和栈被设计为从两端相向生长。那么哪一个向上，哪一个向下呢？人们对数据访问是习惯于向上的，比如你在堆中new一个数组，是习惯于把低元素放到低地址，把高位放到高地址，所以堆 向上生长比较符合习惯,  而栈则对方向不敏感，一般对栈的操作只有PUSH和pop，无所谓向上向下，所以就把堆放在了低端，把栈放在了高端. 但现在已经习惯这样了。这个和处理器设计有关系，目前大多数主流处理器都是这样设计，但ARM 同时支持这两种增长方式。

1. compiler, CPU 的影响是什么。
	1. CPU 可能会调整指令的执行顺序。
	2. 在 CPU cache 的影响下，一个 CPU 执行了某个指令，不会立即被其它 CPU 看见。
	3. Intel x86, x86-64等属于强排序CPU，x86-64的强内存模型总能保证按顺序执行，遵从数据依赖顺序，但PowerPC和ARM是弱排序CPU，有时需要依赖内存栅栏指令。
4. 编译器可以进行指令重排
5. c++ 如何做到，在不同的 arch 上没有 overhead


字节是最小的可寻址内存单元，默认 8bit
字节中的位数可作为 CHAR_BIT 或 `std::numeric_limits<unsigned char>::digits `
访问

### 线程与数据竞争

任何线程都能潜在地访问程序中的任何对象（拥有自动或线程局域存储期的对象仍可为另一线程通过指针或引用访问）
始终允许不同的执行线程同时访问（读和写）不同的内存位置，而无冲突或同步要求。

一个表达式的求值写入内存位置，而另一求值读或写同一内存位置时，称这些表达式冲突。拥有二个冲突求值的程序有数据竞争，除非

- 两个求值都在同一线程上，或同一信号处理函数中执行，或
- 两个冲突求值都是原子操作（见 std::atomic ），或
- 一个冲突求值先发生于（ happens-before ）另一个（见内存顺序--std::memory_order ）
若出现数据竞争，则程序的行为未定义。

如果不使用任何同步机制（例如 mutex 或 atomic），在多线程中读写同一个变量，那么程序的结果是难以预料的。简单来说，编译器以及 CPU 的一些行为，会影响到C++程序的执行结果

多线程读写同一变量需要使用同步机制，最常见的同步机制就是`std::mutex`和`std::atomic`。然而从性能角度看，通常使用`std::atomic`会获得更好的性能.

即使是简单的语句，C++ 也不保证是原子操作。

C++11 提供6 种可以应用于原子变量的内存次序:

- momory_order_relaxed,
- memory_order_consume,
- memory_order_acquire,
- memory_order_release,
- memory_order_acq_rel,
- memory_order_seq_cst

虽然共有 6 个选项,但它们表示的是四种内存模型:

- Sequentially-consistent ordering **顺序一致次序**
- Relaxed ordering **松弛次序**
- Release-Acquire ordering **获取-释放次序**
- Release-Consume ordering **数据依赖**

默认情况下，`std::atomic` 使用的是 Sequentially-consistent ordering。但在某些场景下，合理使用其它三种 ordering，可以让编译器优化生成的代码，从而提高性能。

思考问题：

1  C++正常程序可以访问到哪些内存和不能访问到哪些内存（这些内存属于该程序）？

2  内存对程序并发执行有什么影响？

3  std::memory_order 的作用是什么？

## 对象模型

需要一系列的具体内存图

思考问题：

1 Why don't we have virtual constructors?

From Bjarne Stroustrup's C++ Style and Technique FAQ

A virtual call is a mechanism to get work done given partial information. In particular, "virtual" allows us to call a function knowing only any interfaces and not the exact type of the object. To create an object you need complete information. In particular, you need to know the exact type of what you want to create. Consequently, a "call to a constructor" cannot be virtual.

2  为什么不要在构造函数或者析构函数中调用虚函数？

对于构造函数：此时子类的对象还没有完全构造，编译器会去虚函数化，只会用当前类的函数， 如果是纯虚函数，就会调用到纯虚函数，会导致构造函数抛异常：pure virtual method calle；对于析构函数：同样，由于对象不完整，编译器会去虚函数化，函数调用本类的虚函数，如果本类虚函数是纯虚函数，就会到账析构函数抛出异常：  pure virtual method called；

3  C++对象构造顺序？

1．构造子类构造函数的参数

2．子类调用基类构造函数

3．基类设置vptr

4．基类初始化列表内容进行构造

5. 基类函数体调用

6. 子类设置vptr

7. 子类初始化列表内容进行构造

8. 子类构造函数体调用

4  为什么虚函数会降低效率？

影响分支预测的效率。

是因为虚函数调用执行过程中会跳转两次，首先找到虚函数表，然后再查找对应函数地址，这样CPU指令就会跳转两次，而普通函数指跳转一次，CPU每跳转一次，预取指令都可能作废，这会导致分支预测失败，流水线排空，所以效率会变低。设想一下，如果说不是虚函数，那么在编译时期，其相对地址是确定的，编译器可以直接生成jmp/invoke指令；如果是虚函数，多出来的一次查找vtable所带来的开销，倒是次要的，关键在于，这个函数地址是动态的，譬如 取到的地址在eax里，则在call eax之后的那些已经被预取进入流水线的所有指令都将失效。流水线越长，一次分支预测失败的代价也就越大。

1  C++可以通过哪些技术来支持“垃圾回收”？

    smart_ptr，RAII， move语义等；

## References

1.
