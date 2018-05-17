# Brewer’s Conjecture and the Feasibility of Consistent, Available, Partition-Tolerant Web Services -- 2002


## Summary

证明了分布式系统不可能同时满足 CAP，但可以同时满足其中两项。

证明的过程其实很简单，简单到看过之后甚至有些失落。

主要的价值，在于提出了实践中怎么办。

Partially Synchronous Networks 和 Weaker Consistency Conditions
算是其他分布式一致协议的理论基础了。


## Recap Proof

#### asynchronous network model

- no clock
- nodes must make decisions based only on the messages received and local computation.

#### Theorem 1

It is impossible in the asynchronous network model to imple- ment a read/write data object that guarantees the following properties:

- Availability
- Atomic consistency

in all fair executions (including those in which messages are lost).

证明：

划分为 2 个子网，相互不通信，一个读，一个写。

如果写成功，读的时候必然不一致。
如果写失败，一致性解决了，但已经不可用了。

#### Corollary 1.1

It is impossible in the asynchronous network model to im- plement a read/write data object that guarantees the following properties:

- Availability, in all fair executions,
- Atomic consistency, in fair executions in which no messages are lost.

基本的前提是，asynchronous network model 里，
无法确定发出的消息正在传输，还是已经失败了。

如果传到一半，可以自动识别错误，并终止传输。
那么，几次这种错误传输，结束的时机是不一样的，已经完成的数据，也是不一样的。依旧不存在强一致性保证。


## Partially Synchronous Networks

给 asynchronous network 加上 clock。

1. clock 计时的频率是一样的。
2. clock 之间，无须 sync 或保持时刻相等。

Theorem 1 依旧成立。
但 Corollary 1.1 不成立。

node 可设定一个 timeout 时间。
通信的 client 每次收到消息以后，再来 query 一下 ack。
超时的，node 通知 client 丢弃消息，从而可以保证一致性。

可以通过一些复杂的分布式协议，提供一致性算法了。


## Weaker Consistency Conditions

allow stale data to be returned when there are partitions

Delayed-t consistency

related to the idea of eventually consistent data

定义一个 partial order of the read and write operations，
连续发了 2 个写请求，只要最后一个处理成功，
即使第一个失败，也认为是成功。
当第二个处理成功后，再收到第一个（延迟），也不会处理第一个。

如果维护一个 global order，
由 centralized node 维护 order，
当消息都分发成功的时候，可以保证原子性。
但如果由消息丢失，原子性可能被破坏。