# The Google File System -- 2003


## Summary

这篇 paper，断断续续的读了一周，大概十几遍。

不是看不懂原理，而是这些理念，早已深入人心，
很难体会到他的颠覆性和创新性。

把自己的知识拉回到那个时代，
然后再读这篇 paper，不得不佩服 Google 的工程能力。

创新来自于深挖细节，数据驱动设计。


## 背离传统分布式文件系统的假设

1. 组建失败是常态，监控／容错／自动恢复能力很重要。
2. I/O 优化。文件通常很大，所以针对大文件优化 I/O。文件写入，以 append 操作为主。
3. 提供客户端的 driver。
4. 吞吐量比时延重要。

我现在也尤其关注大数据系统的监控，
尤其是 data quality 层面。

类似 Bitcask 的理念，Append only 以后，上层操作的优化方向也就不一样了。在存储领域，算是一个共识，只是工程上怎么做到。


## Architecture Recap

#### 组件：

- a single master
- multiple chunkservers
- accessed by multiple clients

#### File chunks

- Files are divided into fixed-size chunks. 默认 64M
- Master node 负责分配全局唯一 64 bit chunk handle
- 默认保存 3 replicas

#### 大 chunk size 的优缺点

**Pro**

- 减少磁盘碎片
- 减少 client 与 master 的交互次数。
- 减少 client 与 chunk server 的 network overhead。
- Metadata 的大小也降低，可以做成 In-Memory 数据结构。

**Con**

部分 chunk 数据是 hot spot，容易成为 bottleneck。

比如，集群启动时，几百个节点同时加载某些管理数据。

解决方案：

- hot spot 的 replica 调高。
- stagger 节点的启动时间。

#### Data Caching

data 不 cache

- client side: 读取的文件太大，无法缓存。
- chunk server side：Linux’s buffer cache 就够用了

client 会 cache metadata，减少与 master 的交互。
避免 master 成为 bottleneck。

#### metadata

主要是 4 类数据：

- the namespace
- access control information
- the mapping from files to chunks
- the current locations of chunks

chunk 的 location 信息，从 chunk server 取的。
其他的信息，本地保存，operation log 的形式。

全部在内存里，使用 prefix compression，占内存不大。

#### Single Master

master 节点可以维持 global knowledge，简化了很多设计。

单个 master 节点，架构简单，且可以满足实际需求。

需要尽量减少其他节点与 master 的交互，避免 master 成为 bottleneck。

## 并发写入

多个 clients 可能同时发起写入请求，
事实上，在分布式系统中，很常见。

需要保证：

1. 数据块不会相互覆盖
2. 各个 replica 的数据块写入一致。

方案：

1. master 会选择一个 chunk server 作为 primary。
2. primary 选择序列化的顺序，其他 replica follow。
3. master define global order
