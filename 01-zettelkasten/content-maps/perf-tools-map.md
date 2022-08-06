# Linux Profile 工具地图

Created: 2022-05-01 00:13

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h4xcc44u9ej21400u0786.jpg)

## 常数查询

- [http://web.eece.maine.edu/~vweaver/group/green_machines.html](http://web.eece.maine.edu/~vweaver/group/green_machines.html)
- [https://ark.intel.com/content/www/us/en/ark.html#@Processors](https://ark.intel.com/content/www/us/en/ark.html#@Processors) （可搜索Intel 硬件相关信息）
- 所有Intel CPU型号Spec 均可在 [http://ark.intel.com](http://ark.intel.com/) 查询

## 系统监控类

```bash
sudo apt-get install numactl fio iperf
```

- [phoronix-test-suite](../note-blocks/phoronix-test-suite.md) 各种benchmark 统一管理的自动化工具，目前主要拿来看 system info
- [lstopo](../note-blocks/lstopo.md) 查看硬件的拓扑结构
- [nvidia-smi-usage](../note-blocks/nvidia-smi-usage.md) GPU 监控
- numactl
- fio 测试文件系统性能

## 代码 Profile

- [perf](../note-blocks/perf.md) Linux kernel 自带 profile 工具
- [eBPF](../note-blocks/eBPF.md)
- hotspot
- [heaptrack](../note-blocks/heaptrack.md) Heap Memory Profiler for Linux
- [gperftools](../note-blocks/gperftools.md)
- [stack-trace](../note-blocks/stack-trace.md)
- valgrind 内存分析工具，慢到基本不要用
- sanitizer

## Online Tools

- https://quick-bench.com 说明 [quick-bench-site](../note-blocks/quick-bench-site.md)
- https://godbolt.org/  在线看 c++ 代码的汇编

# Docs

- https://github.com/brendangregg/perf-tools: Performance analysis tools based on Linux perf_events (aka perf) and ftrace
- [perf-and-flame-graph-quick-start](../note-blocks/perf-and-flame-graph-quick-start.md)

# 零散笔记

Run your test under `ltrace` or `valgrind` and see the number of `malloc()` calls.

使用SpecInt， SpecFP，Linpack等得到处理器的性能，对比设计性能指标

使用Stream测试程序测试内存系统的性能
