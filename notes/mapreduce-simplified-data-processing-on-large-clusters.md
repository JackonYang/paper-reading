# MapReduce: Simplified Data Processing on Large Clusters -- 2004


## Summary

这篇文章，读起来很轻松。2 个小时完成。

很早就接触了 map-reduce 理念，并且一直在实践。

论文中提到的坑／解决方案，实践中都遇到过。

## Programming Model Recap

1. Map, 输入和输出都是一组 key/value pair.
2. Framework 根据 Map output 的 key 做 grouping
3. Reduce，接收 key 及对应的所有 values 集合。


## 一点理解

reduce 的输入是一个 key 对应的所有 values，
所以，这是一个典型的 batch processing model。

在 map 没有完成时，
理论上，reduce worker 处于 IDE 状态。

map 和 reduce 是 2 个 step，阻塞式的。
所以，slow machine 就会成为系统的 performance bottleneck。出现 2+ 次。

这个设计中，network resources 是稀有资源。
map 的输入，借助 GFS 可以实现很好的 Locality。
但是，map 和 reduce 之间的数据传输，就做不到了。

Google 做法是，在 map 后加一个 combiner，
combiner 的功能与 reducer 相似，
在 map 的机器上先 group 一下，然后再给 reduce 进一步 group。从而大幅降低需要 network transfer 的 data。


#### map + combiner 改为 streaming model

通常来说，values 集合内部的顺序，不影响最终结果。

所以，map + combiner 改为 streaming model，是完全可行的。

这样，map 的原始 output 不需要序列化到文件里。
节省了磁盘空间 & I/O 时间。
计算模型／调度模型，都可以大幅度简化。

Google 的 paper 里面特别强调了 Ordering Guarantees。
这个是针对 key 的。与 value 的 order 无关。

对于 values 内部顺序影响最终结果的，这个方案不可行。


#### events Counters

关键事件／数据特征的计数，是监控的基础。

分布式的系统里，一个好的 Counters 模块存在几个 challenge：

1. 数据一致性／原子操作。需要有一个逻辑上的 master 来收集各个 worker 的数据。
2. 性能／时延。数据上报到 master，通常涉及网络操作。太频繁，worker 计算性能下降严重。频率太低，counter 实时性太差。
3. 随时可获取。要能跟 monitor ／ alerting system 对接起来。


#### Status Information

Google paper 的做法是，master 内挂一个 internal http server。

我更喜欢的实践是，
数据都采集到 redis 中，master 管理 redis 数据的有效性。

Status Information 由单独的 monitor services 负责，从 redis 读取数据。
有几个好处：

1. master 不再是传输的 bottleneck。master 一般是 single instance。如果 workers 都与 master 直接通信，master 容易成为 bottleneck。
2. monitor server 的版本更新／重启，不会导致 master 的重启。
3. redis 可以做分布式集群。master 本身搞集群，太复杂。


#### "straggler" and Backup Tasks

我的做法是，
当大部分 worker IDLE 时，剩余 worker 的计算任务依旧比较多时，reblance tasks。

这种做法的问题在于：

1. 当问题发生时再处理，已经浪费了很长时间等待。
2. reblance 的阈值，不好选择。
3. 低于 reblance 的阈值时，个别 worker 依旧可能成为 bottleneck 而且永远不结束。

Google 的思路，很赞。
在 task 的最后阶段，开启 N 个 worker 执行相同的任务。
只要一个 worker 完成，kill 掉其他。


#### Single Master

与 GFS 的设计一样，也是 single master 架构。


#### Task Granularity


- map: M pieces
- reduce: R pieces.

practical bounds because:

- the master must make O(M + R) scheduling decisions
- keeps O(M ∗ R) state in memory.

the O(M ∗ R) piece of the state consists of approximately one byte of data per map task/reduce task pair.

In practice,

- M: each individual task is roughly 16 MB to 64 MB of input data
- R: a small multiple of the number of worker machines we expect to use.

 We often perform MapReduce computations with M = 200, 000 and R = 5, 000, using 2,000 worker machines.
