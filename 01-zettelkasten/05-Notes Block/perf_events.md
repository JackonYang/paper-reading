# perf_events

Created: 2022-05-01 00:12

perf, also been called Performance Counters for Linux (PCL), Linux perf events (LPE), or perf_events.

perf_events 易于搜索

## 用法案例

![[Pasted image 20220501002309.png]]

## 功能范围

event-oriented observability tool, which can help you solve advanced performance and troubleshooting functions. Questions that can be answered include:

- Why is the kernel on-CPU so much? What code-paths?
- Which code-paths are causing CPU level 2 cache misses?
- Are the CPUs stalled on memory I/O?
- Which code-paths are allocating memory, and how much?
- What is triggering TCP retransmits?
- Is a certain kernel function being called, and how often?
- What reasons are threads leaving the CPU?

## Events

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h1s79qmqyxj215o0t6q7x.jpg)

The types of events are:

- **Hardware Events**: CPU performance monitoring counters.
- **Software Events**: These are low level events based on kernel counters. For example, CPU migrations, minor faults, major faults, etc.
- **Kernel Tracepoint Events**: This are static kernel-level instrumentation points that are hardcoded in interesting and logical places in the kernel.
- **User Statically-Defined Tracing (USDT)**: These are static tracepoints for user-level programs and applications.
- **Dynamic Tracing**: Software can be dynamically instrumented, creating events in any location. For kernel software, this uses the kprobes framework. For user-level software, uprobes.
- **Timed Profiling**: Snapshots can be collected at an arbitrary frequency, using perf record -F_Hz_. This is commonly used for CPU usage profiling, and works by creating custom timed interrupt events.

Currently available events can be listed using the list subcommand:
```bash
perf list
```

## References

1. https://perf.wiki.kernel.org/index.php/Main_Page
2. https://www.brendangregg.com/perf.html
3. [Youtube: Perf in Netflix - Brendan Gregg](https://www.youtube.com/watch?v=UVM3WX8Lq2k)
