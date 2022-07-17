---
tags:
- compiler
- hpc
---

# What Are Intrinsics function

Created: 2022-05-19 15:43

## Notes

An intrinsic function is a function which the compiler implements directly when possible, rather than linking to a library-provided implementation of the function.

编译器内在函数，介于汇编 & c 语言之间，提供更高的速度和处理器功能。与特定指令共享一对一或多对一关系。 这允许使用高级编程构造来编写特定指令，并使开发人员不必担心调用约定，寄存器分配和指令调度。

## References

1. [https://stackoverflow.com/questions/2268562/what-are-intrinsics](https://stackoverflow.com/questions/2268562/what-are-intrinsics)
2. [https://developer.arm.com/technologies/neon/intrinsics](https://developer.arm.com/technologies/neon/intrinsics)
3. [https://software.intel.com/sites/landingpage/IntrinsicsGuide/](https://software.intel.com/sites/landingpage/IntrinsicsGuide/)
