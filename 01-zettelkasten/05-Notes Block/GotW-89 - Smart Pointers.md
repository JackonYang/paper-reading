# GotW-89 - Smart Pointers

Created: 2022-04-30 13:20

## Notes

## shared_ptr Implementation

maintain housekeeping information in a control block shared by all shared_ptrs and weak_ptrs referring to a given object

housekeeping information 包括

- A “strong reference” count。指向 object，为 0 时，清理 object。
- A “weak reference” count。observing object。为 0 时，触发清理 control block。如果 shared object 还没有被清理，则也触发。

## shared_ptr Vs. unique_ptr

若不确定，默认就行 unique_ptr. 3 个理由

1. 用满足需求的最简单的
2. unique_ptr 性能更好
3. 从 unique_ptr 改为其他 pointer 很容易

## Why make_shared

讨论对 make_unique 也一样。

不用 make_shared 的 2 种情况：

1. 需要自定义 delete 函数。比如，资源不在内存里，或非标准的内存。默认的 delete 函数不行。
2. 适配其他代码喂进来的 raw pointer，一般外面有资源管理代码。直接从 raw pointer 构造 shared_ptr 即可

用的理由：

1. 代码简洁
2. 性能好。maintain housekeeping information in a control block shared by all shared_ptrs and weak_ptrs referring to a given object。如果用 raw pointer 构造后传给 shared_ptr，没办法共享 control block。

不用 make_shared 的例子 & 内存结构

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h1rpf7amz3j20mw0dk0t8.jpg)

使用 make_shared 的例子 & 内存结构，fold them together in a single allocation

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h1rpfy5hybj20m50akaag.jpg)

内存合并在一起，主要是 2 个好处：

1. 减少了 allocation 的 overhead。申请内存本身，是比较重的操作，而且内存分配器的 scale 能力一般不行。每次申请内存，实际拿到的都是不小于申请数字，一般会偏多一些。多申请一次，浪费的概率增加，而且更容易引起内存碎片。
2. 提升 locality。如果 object 小，reference counters 和 object 很可以分在同一个 cache line 里面。提升了 cache performance

## auto_ptr

不要用了，都换成 unique_ptr

## References

1. https://herbsutter.com/2013/05/29/gotw-89-solution-smart-pointers/
