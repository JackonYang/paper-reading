# My First Language Frontend with LLVM Tutorial

Created: 2022-09-25 11:43

## Summary

IR就是一套SSA指令的组合

LLVM 不只是用于实现新的编译器及编译优化
有时候一项工作看起来并不完全是个完整的编译行为，但只要涉及到源码到源码的转换，了解LLVM通常会有所帮助。
以下是一些使用 LLVM 完成并非所有编译操作的研究项目的示例：

UIUC 的Virtual Ghost展示了您以使用编译器通道来保护进程免受受损操作系统内核的影响。 http://sva.cs.illinois.edu/pubs/VirtualGhost-ASPLOS-2014.pdf
UW 的CoreDet使多线程程序具有确定性。 https://homes.cs.washington.edu/~djg/papers/asplos10-coredet.pdf
在近似计算工作中，使用 LLVM pass 将错误注入程序以模拟容易出错的硬件。


一个简单的不带优化的编译器，基本只需要3个步骤：词法分析，语法分析，代码生成；对应到代码里面，就是3个class：Scanner, Parser, Generator;

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h6jmhewfy5j211x0u0djs.jpg)

## Kaleidoscope Language

derived from “meaning beautiful, form, and view”

procedural language that allows you to define functions, use conditionals, math, etc.

extend Kaleidoscope to support the if/then/else construct, a for loop, user defined operators, JIT compilation with a simple command line interface, debug info, etc.

the only datatype in Kaleidoscope is a 64-bit floating point type (aka ‘double’ in C parlance)

allow Kaleidoscope to call into standard library functions - the LLVM JIT makes this really easy

## The Lexer

break inputs into tokens

Each token returned by the lexer includes a token code and potentially some metadata (e.g. the numeric value of a number).

tokens [0-255] its ASCII value

## The Parser and AST

use the Lexer built in previous section

Abstract Syntax Tree (AST)

https://en.wikipedia.org/wiki/Recursive_descent_parser

https://en.wikipedia.org/wiki/Operator-precedence_parser

## Code generation to LLVM IR

require LLVM 3.7 or later

First we define virtual code generation (codegen) methods in each AST class.

“Value” is the class used to represent a “Static Single Assignment (SSA) register” or “SSA value” in LLVM

their value is computed as the related instruction executes, and it does not get a new value until (and if) the instruction re-executes. In other words, there is no way to “change” an SSA value

https://en.wikipedia.org/wiki/Static_single_assignment_form

it could also make sense to use a visitor pattern or some other way to model this.

## References

1.
