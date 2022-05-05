# Heaptrack

Created: 2022-04-30 15:21

## Introduction

构建 heaptrack 的想法源于对 valgrind 的 massif 工作的痛苦。 agavi 在内存和时间上有巨大的开销，有时会阻止你在更大的实际应用程序上运行它。

对于简单堆分析器来说，Valgrind 所做的大部分不需要。

从valgrind的massif的思路得到启发并做重设计和重实现的产物:

1）代码级别的跟踪
2）栈回溯
3）内存profile
4）无嵌入性
5）高性能

## Install

```bash
sudo apt-get install heaptrack
```

## Usage

```bash
heaptrack ./binary [args]
# or
heaptrack --pid [pid]
```


编译的程序要-lpthread才可以注入监控

heaptrack_print 工具是一个具有最小依赖性的命令行 应用程序。 它接受堆概要文件，分析它，并将结果以ASCII格式打印到 命令行。

在最简单的形式中，你可以像这样使用它：

```bash
heaptrack_print heaptrack.APP.PID.gz | less
```


![](https://tva1.sinaimg.cn/large/e6c9d24egy1h1r3gqsj4ij20xp0dmdjp.jpg)

##TODO

- [ ] how to use heaptrack
- [ ] How to make a heap profiler
- [ ] try Bytehound https://www.jianshu.com/p/685c8831b6d0

## References

1. https://github.com/KDE/heaptrack
