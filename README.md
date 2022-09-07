# Paper Reading -- Deep Learning Infra

比做算法的懂工程落地，比做工程的懂算法模型。

1. 编程: c++ / CUDA / 汇编 / python / Shell
2. 算法: deep learning / CV / NLP etc，训练框架，推理部署
3. 加速: AI compiler, 并行优化，profile 工具
4. 工程: 硬件体系结构，OS & linux kernel, 分布式 & k8s 集群，存储

## Awesome Online Tools

| URL | Brief Notes |
| ---- | ---- |
| <https://en.wikichip.org/wiki/WikiChip> | 查各类芯片的架构 & spec |
| <https://www.cpubenchmark.net> | 查芯片(CPU)的 benchmark, 算力(Ops/s) |
| <https://www.videocardbenchmark.net> | 查显卡的 benchmark |
| <https://godbolt.org/> | 在线看 c++ 代码的汇编代码 |
| <https://quick-bench.com/> | 在线测 c++ 代码的 benchmark |
| <https://en.cppreference.com> | c++ 手册 |

## My Blog

- [my-plans-and-reviews](01-zettelkasten/articles/my-plans-and-reviews.md)

## AI compiler

- [learn-tvm-from-scratch](01-zettelkasten/content-maps/learn-tvm-from-scratch.md)
- [compiler-learning-map](01-zettelkasten/content-maps/compiler-learning-map.md)

## Deep Learning

frameworks

- [deep-learning-framework-list](01-zettelkasten/note-blocks/deep-learning-framework-list.md)
- [Understanding ONNX](01-zettelkasten/note-blocks/understanding-onnx.md)
- [Learning PyTorch Framework](01-zettelkasten/note-blocks/learning-pytorch-framework.md)

CUDA and GPU

- [learning-cuda](01-zettelkasten/articles/learning-cuda.md)

## HPC - 高性能计算

Learning Maps

- [perf-tools-map](01-zettelkasten/content-maps/perf-tools-map.md): 性能调优的工具 & 工具使用文档
- cpu 架构: todo
- gpu 架构 & CUDA: todo
- 并行加速: todo (指令级并行，单独 topic？)

Good Readings

- [linux-performance-analysis-and-tools](01-zettelkasten/paper-notes/linux-performance-analysis-and-tools.md)
- [general-matrix-multiplicatio-perf-estimate](01-zettelkasten/note-blocks/general-matrix-multiplicatio-perf-estimate.md)

Tutorials with code

- [Hands on CUDA](02-tutorial-code/03-hands-on-cuda/README.md) cuda 新手入门
- [OpenMP tutorial](https://hpc.llnl.gov/tuts/openMP) one of the eight tutorials in the 4+ day "Using LLNL's Supercomputers" workshop

## Engineering 工程化

Docker & K8S

- [Docker and OCI Runtimes](01-zettelkasten/note-blocks/docker-and-oci-runtimes.md) docker 的设计与实现方案
- [nvidia-docker: Enabling GPUs in Docker](01-zettelkasten/note-blocks/nvidia-docker-enabling-gpu-in-docker.md) nvidia-docker 的用法 & 原理

Protobuf & gRPC

(文档)
- https://developers.google.com/protocol-buffers/docs/proto3 Language Guide (proto3)
- https://developers.google.com/protocol-buffers/docs/style Protocol Buffers Style Guide
- https://grpc.io/docs/languages/cpp/basics/ gPRC Basics tutorial
- https://edgehog.blog/a-guide-to-grpc-and-interceptors-265c306d3773 gRPC interceptors

(笔记)
- [Protobuf Install And Introduction](01-zettelkasten/note-blocks/protobuf-install-and-introduction.md)
- [Protobuf Best Practices](01-zettelkasten/note-blocks/protobuf-best-practices.md)
- TODO 用 gPRC + docker 发布一个完整的 web 服务 example code

## 编程语言

汇编

- x86 汇编
- MIPS 汇编

C++

Python & Shell
