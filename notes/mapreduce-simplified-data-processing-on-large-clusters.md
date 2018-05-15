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

reduce 的输入是一个 key 对应的所有 values，而且是排序的。
典型的 batch processing model。

在 map 没有完成时，
理论上，reduce worker 处于 IDE 状态。

map 和 reduce 是 2 个 step，阻塞式的。
所以，slow machine 就会成为系统的 performance bottleneck。出现 2+ 次。

Network resources 成为稀有资源。
map 的输入，借助 GFS 可以实现很好的 Locality。
但是，map 和 reduce 之间的数据传输，就做不到了。

Google 做法是，在 map 后加一个 combiner，
combiner 的功能与 reducer 相似，
在 map 的机器上先 group 一下，然后再给 reduce 进一步 group。从而大幅降低需要 network transfer 的 data。


#### Map 会把一个 key 的 value 排序，离线存储。

这是一个很重要的 feature。

如果需要维护一个 state，无序数据对 state 的读写就是 random 的。
state 全部放在内存，可能空间不够。因为局部性很差，缓存也很难做。

弊端也是很明显的，多了一轮超大的 I/O.

通常来说，values 集合内部的顺序，不影响最终结果。
但是，严重影响性能优化的空间。

如果中间 state 的大小可控，内存够用，
可以考虑不排序，边读取数据边做预处理，也可以节省一次 I/O.
计算模型／调度模型，可以做的更灵活。


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

#### 错误重试／bad record skip

一切都是确定性的，input 是确定的，map ／ reduce 的计算也是确定的。

当任何一个 worker 发生错误时，可以安全的重试／换一台机器重试。

通过 counter，发生错误时，有能力自动识别一些错误原因，从而自动处理错误。

可以自动识别 bad record 并在重试时跳过这些 bad record。
