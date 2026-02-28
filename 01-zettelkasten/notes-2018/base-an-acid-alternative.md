# BASE -- An ACID Alternative


通过案例讲解了 BASE 的实现和价值。

案例：

用户下单时，需要更新订单表、买入卖出量统计表。


买入卖出统计表，可以看作是订单表的 cache。

写订单表、写统计表可以拆为 2 个 transactions。
但是，其中一个失误，则失去一致性。

解决方案是加一个可持久化消息的 message queue。

消息处理，有可能失败，replay 时，无法保证 exactly one。
数据依旧不一致。
方案，操作尽可能做成幂等的，不再依赖 exactly one 保证正确性。
比如， 加入一个 message process log 表，插入之前查表判断是否已经执行过。


不管怎么样，保证了 eventually consistent。