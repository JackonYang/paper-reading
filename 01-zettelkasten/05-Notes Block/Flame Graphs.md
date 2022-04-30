# Flame Graphs

Created: 2022-04-30 23:42

## 基本信息

Source Name: [[the web]]
link: https://www.brendangregg.com/flamegraphs.html
github: https://github.com/brendangregg/FlameGraph
Pub Time:
Author: [[Brendan Gregg]]

## 简评

a visualization of hierarchical data, created to visualize stack traces of profiled software so that the most frequent code-paths to be identified quickly and accurately

Flame graphs can be generated from any profile data that contains stack traces, including from the following profiling tools:

- Linux: perf, eBPF, SystemTap, and ktap
- Solaris, illumos, FreeBSD: DTrace
- Mac OS X: DTrace and Instruments
- Windows: Xperf.exe

Once you have a profiler that can generate meaningful stacks, converting them into a flame graph is usually the easy step.
