# CPU Flame Graphs

Created: 2022-04-30 23:42

## 基本信息

Source Name: [[the web]]
link: https://www.brendangregg.com/FlameGraphs/cpuflamegraphs.html
Pub Time:
Author: [[Brendan Gregg]]

## 简评

Determining why CPUs are busy, which often involves profiling stack traces.

It usually works by creating a timed interrupt that collects the current program counter, function address, or entire stack back trace, and translates these to something human readable when printing a summary report.

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h1s6tti3zvj20p60daacv.jpg)

## Profilers

- [[perf]] (perf_events)
- DTrace
- SystemTap
- ktap

## References

1. [[Flame Graphs]]
