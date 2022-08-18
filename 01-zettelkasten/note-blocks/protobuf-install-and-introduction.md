# Protobuf Install And Introduction

Created: 2022-08-19 01:07

## Install

官方安装文档：https://grpc.io/docs/protoc-installation/

安装后 `protoc` 命令可用

```bash
# ubuntu
sudo apt install protobuf-compiler

# mac
brew install protobuf
```

## 用法

### Python

[python protobuf demo code](../../02-tutorial-code/04-protobuf/01-python-protobuf/README.md)

先安装 python 的 protobuf 包，

```bash
pip3 install protobuf
```

否则执行 python 文件时报错

```bash
ImportError: No module named google.protobuf
```
