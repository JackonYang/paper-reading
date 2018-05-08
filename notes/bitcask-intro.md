# Bitcask - A Log-Structured Hash Table for Fast Key/Value Data -- 2010
阅读时间: 1h

## Summary

1. 数据库小白可以阅读的入门 paper
2. 介绍了 Log-Structured storage engines 的核心原理。另外一大类引擎是 page-oriented storage engines


## Recap

1. 一行存一条数据，key/value 格式。
2. only 1 active file.
3. (merging) compact old files
4. 做完 compact 为每个 data file 建立 "hint file"，提高以后的 compact 速度。hint file 跟 data file 格式相似，只是把 value 值改为文件内的地址。
5. in-memory hash map index 提高 query 速度。

## Pro

1. 简单到不相信这是一个数据库。
2. query 都是内存里做，只需一次 I/O 读 value。非常快。
3. 如果命中操作系统的 filesystem cache，query 就没有 I/O。更快。
3. save 是顺序写，append only。也很快。
4. 存储的数据量，不受内存限制。（索引大小受限）

## Con

1. hash map index 受内存大小限制。
2. hash map index 不能做 range query。实践中常常用到。

## 适用场景

高写入场景。比如 key 的数量相对确定，内存可以存的下。反复 update value。

例如：key 是 URL，value 是访问次数。

## 注意事项

#### SSD 存在写入放大问题

[wikipedia-写入放大](https://zh.wikipedia.org/wiki/%E5%86%99%E5%85%A5%E6%94%BE%E5%A4%A7)

#### 查询速度

如果每个 file 一个 hash map index 用于提高 query 速度，
没有 compact 的文件比较多时，查询速度就会慢一些。从新到旧，要搜索很多个 index。

#### 检查不完整写入

每个 record 用 CRC 校验。

#### hash map 为什么不能落盘

random access I/O 太多

## Highlights

#### goals when evaluating such storage engines, including:

1. low latency per item read or written
2. high throughput, especially when writing an incoming stream of random items
3. ability to handle datasets much larger than RAM w/o degradation
4. crash friendliness, both in terms of fast recovery and not losing data
5. ease of backup and restore
6. a relatively simple, understandable (and thus supportable) code structure and data format
7. predictable behavior under heavy access load or large volume
8. a license that allowed for easy default use in Riak