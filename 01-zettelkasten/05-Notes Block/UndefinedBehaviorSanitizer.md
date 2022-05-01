# UndefinedBehaviorSanitizer

Created: 2022-05-01 21:36

## Notes

gcc 编译参数: -fsanitize=undefined

检测未定义行为:
- hift运算符结果未定义。
- 整数除以0。
- 调用了__builtin_unreachable
- 指针指向null
- 有符号整数溢出

查不了：变长array的size不为正数，non-void函数没有使用return返回

实现原理：修改多种指令

## References

1.
