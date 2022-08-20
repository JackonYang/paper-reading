# Protobuf Best Practices

Created: 2022-08-21 01:03

## Summary

protobuf为RPC设计，扩展性和兼容性是设计的核心原则，强类型保证用户不需要负责数据序列化和解析，主要用于线上消息系统，为传输效率优化。

protobuf格式不是为数据存储和大数据设计的。

## 推荐的实践

* 多使用struct，扩展性比字段(field)更好
* 字段
    * 不要删除字段，而是弃用(deprecate)
    * 弃用的字段数字标识符不可重用，使用”reserved”关键字，并且在字段名称前加上 OBSOLETE_
    * 可以有限更改字段类型：比如int32/uint32/int64/uint64/bool之间相互兼容
    * 如果必须进行非兼容性类型更改，建议创建新字段代替将弃用的旧字段
    * 字段之间语义尽可能独立，命名与内部细节无关
    * 保留字段数字标识符 1-15 给最常见字段（节省空间）
* 命名规范：
    * 消息类型名称使用 UppperCamelCase.
    * 字段名称使用 lower_snake_case.
        * 建议使用 Google API Guide 给出的标准 field，比如 created_time，https://cloud.google.com/apis/design/standard_fields
        * 对常见字段使用统一名称和缩写: config, id, spec, stats
    * Enum 字段使用 ALL_UPPER_SNAKE_CASE
* Enum的 0 值保留给 UNSPECIFIED，因为 0 是默认值。

## 不推荐的实践

* 更改字段对应的数字标识符
* 使用 “Required” 字段
* 使用 Groups
* 使用 google.protobuf.Empty message
* 用 repeated message 存放大数组
    * repeated message 的定义会让反序列化速度较慢，有条件的情况下应尽量用基本类型定义替代（一定程度上用代码可读性换性能）

## References

1. https://blog.devgenius.io/protobuf-best-practices-f20e6940b9c5
2. https://dev.vseth.ethz.ch/reference/grpc-protobuf/best-practices-for-writing-protobuf
3. https://earthly.dev/blog/backward-and-forward-compatibility/
4. https://medium.com/@akhaku/protobuf-definition-best-practices-87f281576f31
