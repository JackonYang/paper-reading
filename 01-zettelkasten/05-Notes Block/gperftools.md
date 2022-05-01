# gperftools

Created: 2022-05-01 20:49

## Notes

google 的 profile 工具。

1. 分析 CPU，应该是不如何 perf [perf_events](perf_events.md)
2. 分析内存，可能不错。用  heapProfile

## HeapProfile

### 常用场景

1. 内存上涨来源定位
2. 内存使用分布统计

### 优点

1. 速度损失相对较少，基本不需要动代码
2. 运行时dump，不用确保binary正常结束

### 常用的解析结果

注意 请勿使用系统自带的/usr/bin/google-pprof ，其解析函数名功能有问题）

查看使用情况

```bash
pprof --inuse_space --lines --edgefraction=1e-10 --nodefraction=1e-10   {binary}  {*.heap}
```

解析完以后,输入web，生成.svg文件，取出svg文件后再ctrl+d退出


查看两个快照间的差距(B.heap与A.heap之差)

```bash
pprof --inuse_space --lines --edgefraction=1e-10 --nodefraction=1e-10 --base={A.heap}   {binary}  {B.heap}
```

解析完以后,输入web，生成.svg文件，取出svg文件后再ctrl+d退出

火焰图

[Flame Graphs](Flame%20Graphs.md)

```bash
pprof --collapsed   {binary}  {*.heap} | FlameGraph/flamegraph.pl > XXX.svg
```

## Heap Checker

heap 的内存泄露检测

相对于 leak sanitizer 的优点是可以在局部代码中查找内存泄漏。缺点是比 leak sanitizer 慢很多

## References

1.
