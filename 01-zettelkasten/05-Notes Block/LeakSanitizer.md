i# LeakSanitizer

Created: 2022-05-01 21:33

# Notes

gcc 编译参数: -fsanitize=leak

检测内存泄露

实现原理：链接时覆盖掉malloc等allocator函数


用法: 编译，正常执行，看报错信息

```bash
# compile
g++ -fsanitize=leak -o memory_leak memory_leak.cpp -llsan
# or
g++-5 -fsanitize=address -o memory_leak memory_leak.cpp

# run
./memory_leak
```

# References

1.
