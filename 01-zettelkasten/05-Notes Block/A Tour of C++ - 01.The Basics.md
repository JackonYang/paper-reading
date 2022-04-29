# A Tour of C++ - 01.The Basics

Created: 2022-04-29 22:59

## Introduction

An executable program is created for a specific hardware/system combination; it is not portable.

ISO C++ standard defines two kinds of entities:

- Core language features, such as built-in types (e.g., char and int) and loops (e.g., for-statements and while-statements)
- Standard-library components, such as containers (e.g., vector and map) and I/O operations (e.g., << and getline())

std lib 都是纯 c++ 实现的，意思是，没有用 machine code 等。这也体现了，c++ 执行效率很高。

尽可能在 compile 阶段检查出错误 -- c++ compile 巨慢

## Types

- A type defines a set of possible values and a set of operations (for an object).
- An object is some memory that holds a value of some type.
- A value is a set of bits interpreted according to a type.
- A variable is a named object.

type size:

- bool 1
- char 1
- int 4
- double 8

= 赋值，会有隐式的类型转换，不太好。是为了兼容 c 语言的。

用 {} 初始化变量，没有隐式的类型转换。


## Auto

不能用 auto  ：
- The definition is in a large scope where we want to make the type clearly visible to readers of our code.
- We want to be explicit about a variable’s range or precision (e.g., double rather than float).


## Scope and lifetime

A block is delimited by a { } pair

For a namespace object the point of destruction is the end of the program.


## const

2 种

- const
- constexpr: meaning roughly ‘‘to be evaluated at compile time.’’ to allow placement of data in read-only memory (where it is unlikely to be corrupted) and for performance.

function 也可以 constexpr.
To be constexpr, a function must be rather simple: just a return-statement computing a value.

References are particularly useful for specifying function arguments


## References

1. 