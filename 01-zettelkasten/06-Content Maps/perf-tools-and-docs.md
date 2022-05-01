# Linux Profile

Created: 2022-05-01 00:13

## Tools

1. [perf_events](../05-Notes%20Block/perf_events.md): 即 perf, Linux kernel 自带 profile 工具
2. [eBPF](../05-Notes%20Block/eBPF.md)
3. [Hotspot](../05-Notes%20Block/Hotspot.md)
4. [heaptrack](../05-Notes%20Block/heaptrack.md): Heap Memory Profiler for Linux
5. [gperftools](../05-Notes%20Block/gperftools.md)
6. [valgrind](../05-Notes%20Block/valgrind.md) 内存分析工具，慢到基本不要用
7. [sanitizer](../05-Notes%20Block/sanitizer.md)

## Online Tools

1. [quick-bench dot com](../05-Notes%20Block/quick-bench%20dot%20com.md): 在线测 c++ 代码的 benchmark
2. [godbolt dot org](../05-Notes%20Block/godbolt%20dot%20org.md) 在线看 c++ 代码的汇编代码

# Docs

1. [Flame Graphs](../05-Notes%20Block/Flame%20Graphs.md)
2. [CPU Flame Graphs](../05-Notes%20Block/CPU%20Flame%20Graphs.md)
3. https://github.com/brendangregg/perf-tools: Performance analysis tools based on Linux perf_events (aka perf) and ftrace

# Highlights

Run your test under `ltrace` or `valgrind` and see the number of `malloc()` calls.
