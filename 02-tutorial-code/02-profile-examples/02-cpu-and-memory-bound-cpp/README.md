# CPU & Memory Bound Cpp

## Usage

```bash
# compile only
make compile
# run with perf
make perf
# clean
make clean
```

## Notes

用于演示在 Linux 下 CPI 火焰图的使用。
其中包含如下两个函数：

1. cpu_bound  函数主体是 nop 指令的循环；由于 nop 指令是不访问内存的最简指令之一，因此该函数 CPI 一定小于 1，属于典型的 CPU 密集型的代码。
2. memory_bound  函数使用 _mm_clflush 驱逐缓存，人为触发程序的 L1 D-Cache Load Miss。因此该函数 CPI 必然大于 1，属于典型的 Memory 密集型的代码。

## Output

## Reference

代码来自：http://oliveryang.net/2018/03/linux-CPI-flamegraph/
