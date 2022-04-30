# GotW-91 - Smart Pointer Parameters

Created: 2022-04-30 13:12

用 smart pointer 作为函数参数的讨论

## Principles

1. 拷贝 smart pointer 很慢。涉及到 counter 的 incr / decr 操作
2. smart pointer vs raw pointer，主要看是否 owning object lifetime

## Best Practise

1. 大原则：share or transfer **ownership** 时，用 smart pointer。否则用 raw pointer。
2. 需要改 smart pointer 本身的时候，传 non-const `unique_ptr&` 或 `shared_ptr&`
3. 表达 sink 语义时，用 `by-value unique_ptr`。本质是改了 ownership，调用处可以 move 使得语义更明确。
4. 不推荐 `const unique_ptr&`，直接传 raw pointer，或 reference(if not nullable)
5. Use a `const shared_ptr&` as a parameter only if you’re not sure whether or not you’ll take a copy and share ownership


## Copy 的性能损失

smarter pointer 作为参数的性能损失，错误用法例如：

```cpp
void f( shared_ptr<widget> );
```

入函数时，copy argument 一次，shared_ptr 计数器 +1，退出函数时，释放，计数器 -1。

What’s so bad about a “shared reference count increment and decrement?”

1. shared reference count 有关
2. increment and decrement 有关

原子量的修改需要锁和同步，严重影响处理性能。

the reference count is an atomic shared variable (or equivalent), incrementing and decrementing it are internally-synchronized read-modify-write shared memory operations.

shared reference count，一个变量，同时只有一个 processor 能处理。其他 processor 要等待。也可能会影响 reference count 的 cache line。当然，设计良好的代码，不应该多 processor 进程短时间内反复修改同一个 reference count。


## Passing unique_ptr by value means “sink.”

```cpp
void f( unique_ptr<widget> );
```

This is the preferred way to express a widget-consuming function, also known as a “sink.”

Passing a unique_ptr by value is only possible by moving the object and its unique ownership from the caller to the callee.

不用 unique_ptr 的对比方案

```cpp
// Smelly 20th-century alternative
void bad_sink( widget* p );  // will destroy p; PLEASE READ THIS COMMENT

// Sweet self-documenting self-enforcing modern version (c)
void good_sink( unique_ptr<widget> p );
```

调用的例子对比，最后用 move 的代码，显得非常优雅，舒适。

```cpp
// Older calling code that calls the new good_sink is safer, because
// it's clearer in the calling code that ownership transfer is going on
// (this older code has an owning * which we shouldn't do in new code)
//
widget* pw = ... ;

bad_sink ( pw );             // compiles: remember not to use pw again!

good_sink( pw );             // error: good
good_sink( unique_ptr<widget>{pw} );  // need explicit conversion: good

// Modern calling code that calls good_sink is safer, and cleaner too
//
unique_ptr<widget> pw = ... ;

bad_sink ( pw.get() );       // compiles: icky! doesn't reset pw
bad_sink ( pw.release() );   // compiles: must remember to use this way

good_sink( pw );             // error: good!
good_sink( move(pw) );       // compiles: crystal clear what's going on
```

## Passing unique_ptr by reference is for in/out unique_ptr parameters.

```cpp
void f( unique_ptr<widget>& );
```


## Passing shared_ptr by value implies taking shared ownership.

```cpp
void f( shared_ptr<widget> );
```

recommended only when the function wants to retain a copy of the shared_ptr and share ownership

If the local scope is not the final destination, just std::move the shared_ptr onward to wherever it needs to go.

## References

1. https://herbsutter.com/2013/06/05/gotw-91-solution-smart-pointer-parameters/
2. [[GotW-89 - Smart Pointers]]