# Trace Glibc Using Gdb

Created: 2022-05-01 01:10

## Install

需要 2 个额外的工具包：
1. libc6-dbg: 带有debug symbol信息的 libc.so，不装看不到符号表
2. libc6-dev: glibc 的源代码。用 source 安装，需要在 apt 源里增加 deb-src 相关配置

```bash
sudo apt-get install libc6-dbg
sudo apt-get source libc6-dev
```


增加 deb-src 的配置

```bash
cp /etc/apt/sources.list ~/sources.list~  # backup
sudo sed -Ei 's/^# deb-src /deb-src /' /etc/apt/sources.list
sudo apt-get update
```

上面的命令做的事情，是把  `/etc/apt/sources.list` 里 deb-src 前面的注释删掉

```
# deb http://archive.canonical.com/ubuntu bionic partner
# deb-src http://archive.canonical.com/ubuntu bionic partner
```

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h1s99qzer6j21lc0jgdka.jpg)

## Example

[[02-tutorial-code/02-profile-examples/01-trace-glibc-using-gdb/README]]

## References

1. https://www.cntofu.com/book/46/gdb/1811.md
