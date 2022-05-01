# ThreadSanitizer

Created: 2022-05-01 21:33

## Notes

gcc 编译参数: -fsanitize=thread

检测数据竞争bug

实现原理：修改内存访问指令

用法：

```bash
# compile
g++-5 -g -O2 --std=c++11 -fsanitize=thread -lpthread -o thread_check thread_check.cpp

# run
./thread_check
```

## References

1.
