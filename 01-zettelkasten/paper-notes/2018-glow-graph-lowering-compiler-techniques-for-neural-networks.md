---
title: Glow - Graph Lowering Compiler Techniques for Neural Networks
authors:
- Nadav Rotem
- Jordan Fix
- Saleem Abdulrasool
- Summer Deng
- Roman Dzhabarov
- James Hegeman
- Roman Levenstein
- Bertrand A. Maher
- N. Satish
- Jakob R. Olesen
- Jongsoo Park
- Artem Rakhov
- M. Smelyanskiy
fieldsOfStudy:
- Computer Science
meta_key: 2018-glow-graph-lowering-compiler-techniques-for-neural-networks
numCitedBy: 164
reading_status: TBD
ref_count: 19
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Glow:-Graph-Lowering-Compiler-Techniques-for-Neural-Rotem-Fix/0261195ae7e1545caefb0ea7afb92bd66bfbb790?sort=total-citations
venue: ArXiv
year: 2018
---

# Glow - Graph Lowering Compiler Techniques for Neural Networks

## Abstract

This paper presents the design of Glow, a machine learning compiler for heterogeneous hardware. It is a pragmatic approach to compilation that enables the generation of highly optimized code for multiple targets. Glow lowers the traditional neural network dataflow graph into a two-phase strongly-typed intermediate representation. The high-level intermediate representation allows the optimizer to perform domain-specific optimizations. The lower-level instruction-based address-only intermediate representation allows the compiler to perform memory-related optimizations, such as instruction scheduling, static memory allocation and copy elimination. At the lowest level, the optimizer performs machine-specific code generation to take advantage of specialized hardware features. Glow features a lowering phase which enables the compiler to support a high number of input operators as well as a large number of hardware targets by eliminating the need to implement all operators on all targets. The lowering phase is designed to reduce the input space and allow new hardware backends to focus on a small number of linear algebra primitives.

## Paper References

1. LLVM - a compilation framework for lifelong program analysis & transformation
2. DLVM - A modern compiler infrastructure for deep learning systems
3. Halide - a language and compiler for optimizing parallelism, locality, and recomputation in image processing pipelines
4. [TVM - End-to-End Optimization Stack for Deep Learning](2018-tvm-end-to-end-optimization-stack-for-deep-learning.md)
5. [Tensor Comprehensions - Framework-Agnostic High-Performance Machine Learning Abstractions](2018-tensor-comprehensions-framework-agnostic-high-performance-machine-learning-abstractions.md)
6. [TensorFlow - A system for large-scale machine learning](2016-tensorflow-a-system-for-large-scale-machine-learning.md)
7. CNTK - Microsoft's Open-Source Deep-Learning Toolkit
8. [Automatic differentiation in PyTorch](2017-automatic-differentiation-in-pytorch.md)
9. [Caffe - Convolutional Architecture for Fast Feature Embedding](2014-caffe-convolutional-architecture-for-fast-feature-embedding.md)
10. [Deep Residual Learning for Image Recognition](2016-deep-residual-learning-for-image-recognition.md)
11. [Very Deep Convolutional Networks for Large-Scale Image Recognition](2015-very-deep-convolutional-networks-for-large-scale-image-recognition.md)
12. Keras - The Python Deep Learning library
13. Intel nGraph - An Intermediate Representation, Compiler, and Executor for Deep Learning
14. [Deep Learning](2016-deep-learning.md)
