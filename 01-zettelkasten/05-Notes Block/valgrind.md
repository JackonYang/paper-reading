# Valgrind

Created: 2022-05-01 20:38

## Notes

慢到基本不可用

使用场景:

1. 检测非法读写（读写没有申请的空间）
2. 检测使用没有初始化的变量
3. 检测未初始化和不可寻址的系统调用参数
4. 检测不合法的内存释放
5. 检测不匹配的free/delete
6. 检测源地址块和目标地址块是否重合（memcpy, strcpy, strncpy, strcat, strncat）
7. 检测申请内存的参数是否可疑（非负并且不能过大）
8. 检测内存泄露

## References

1. [http://valgrind.org/docs/manual/manual.html](http://valgrind.org/docs/manual/manual.html)
