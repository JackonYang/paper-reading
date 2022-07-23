---
title: TVM - End-to-End Optimization Stack for Deep Learning
authors:
- Tianqi Chen
- T. Moreau
- Ziheng Jiang
- Haichen Shen
- Eddie Q. Yan
- Leyuan Wang
- Yuwei Hu
- L. Ceze
- Carlos Guestrin
- A. Krishnamurthy
fieldsOfStudy:
- Computer Science
filesize_readable: 1.1 MB
meta_key: 2018-tvm-stack
meta_relpath: paper-extra-data/pdf-meta/2018-tvm-end-to-end-optimization-stack-for-deep-learning.yaml
numCitedBy: 140
pdf_relpath: paper-repo/pdfs/2018-tvm-end-to-end-optimization-stack-for-deep-learning.pdf
reading_status: TBD
ref_count: 50
tags:
- gen-from-ref
- paper
- stc
url_slug: 2018-tvm-end-to-end-optimization-stack-for-deep-learning
urls:
- https://www.semanticscholar.org/paper/TVM:-End-to-End-Optimization-Stack-for-Deep-Chen-Moreau/ec3071fb918ad69ec80df1ca9cf1fdeb386a9603?sort=total-citations
venue: ArXiv
year: 2018
---

[pdf(local)](../../paper-repo/pdfs/2018-tvm-end-to-end-optimization-stack-for-deep-learning.pdf)

# TVM - End-to-End Optimization Stack for Deep Learning

## Abstract

Scalable frameworks, such as TensorFlow, MXNet, Caffe, and PyTorch drive the current popularity and utility of deep learning. However, these frameworks are optimized for a narrow range of server-class GPUs and deploying workloads to other platforms such as mobile phones, embedded devices, and specialized accelerators (e.g., FPGAs, ASICs) requires laborious manual effort. We propose TVM, an end-to-end optimization stack that exposes graph-level and operator-level optimizations to provide performance portability to deep learning workloads across diverse hardware back-ends. We discuss the optimization challenges specific to deep learning that TVM solves: high-level operator fusion, low-level memory reuse across threads, mapping to arbitrary hardware primitives, and memory latency hiding. Experimental results demonstrate that TVM delivers performance across hardware back-ends that are competitive with state-of-the-art libraries for low-power CPU and server-class GPUs. We also demonstrate TVM's ability to target new hardware accelerator back-ends by targeting an FPGA-based generic deep learning accelerator. The compiler infrastructure is open sourced.

## Paper References

1. [Tensor Comprehensions - Framework-Agnostic High-Performance Machine Learning Abstractions](2018-tensor-comprehensions-framework-agnostic-high-performance-machine-learning-abstractions.md)
2. DLVM - A modern compiler infrastructure for deep learning systems
3. From high-level deep neural models to FPGAs
4. [In-datacenter performance analysis of a tensor processing unit](2017-in-datacenter-performance-analysis-of-a-tensor-processing-unit.md)
5. [DaDianNao - A Machine-Learning Supercomputer](2014-dadiannao-a-machine-learning-supercomputer.md)
6. Loo.py - transformation-based code generation for GPUs and CPUs
7. [TensorFlow - A system for large-scale machine learning](2016-tensorflow.md)
8. FINN - A Framework for Fast, Scalable Binarized Neural Network Inference
9. PENCIL - A Platform-Neutral Compute Intermediate Language for Accelerator Programming
10. High performance ultra-low-precision convolutions on mobile devices
11. [LIFT - A functional data-parallel IR for high-performance GPU code generation](2017-lift-a-functional-data-parallel-ir-for-high-performance-gpu-code-generation.md)
12. [BinaryConnect - Training Deep Neural Networks with binary weights during propagations](2015-binaryconnect-training-deep-neural-networks-with-binary-weights-during-propagations.md)
13. OptiML - An Implicitly Parallel Domain-Specific Language for Machine Learning
14. Darkroom - compiling high-level image processing code into hardware pipelines
15. Eyeriss - A Spatial Architecture for Energy-Efficient Dataflow for Convolutional Neural Networks
16. [MXNet - A Flexible and Efficient Machine Learning Library for Heterogeneous Distributed Systems](2015-mxnet.md)
17. PuDianNao - A Polyvalent Machine Learning Accelerator
18. Understanding Latency Hiding on GPUs
19. Futhark - purely functional GPU-programming with nested parallelism and in-place array updates
20. Halide - a language and compiler for optimizing parallelism, locality, and recomputation in image processing pipelines
21. An introduction to computational networks and the computational network toolkit (invited talk)
22. [Automatically scheduling halide image processing pipelines](2016-automatically-scheduling-halide-image-processing-pipelines.md)
23. [XNOR-Net - ImageNet Classification Using Binary Convolutional Neural Networks](2016-xnor-net-imagenet-classification-using-binary-convolutional-neural-networks.md)
24. [Identity Mappings in Deep Residual Networks](2016-identity-mappings-in-deep-residual-networks.md)
25. [Fast Algorithms for Convolutional Neural Networks](2016-fast-algorithms-for-convolutional-neural-networks.md)
26. OpenTuner - An extensible framework for program autotuning
27. [The tensor algebra compiler](2017-the-tensor-algebra-compiler.md)
28. [MobileNets - Efficient Convolutional Neural Networks for Mobile Vision Applications](2017-mobilenets-efficient-convolutional-neural-networks-for-mobile-vision-applications.md)
29. [Unsupervised Representation Learning with Deep Convolutional Generative Adversarial Networks](2016-unsupervised-representation-learning-with-deep-convolutional-generative-adversarial-networks.md)
30. [XGBoost - A Scalable Tree Boosting System](2016-xgboost-a-scalable-tree-boosting-system.md)
31. Effective Hardware Based Data Prefetching for High-Performance Processors
32. Polyhedral parallel code generation for CUDA
33. FFTW - an adaptive software architecture for the FFT
34. Automatically Tuned Linear Algebra Software
35. [Human-level control through deep reinforcement learning](2015-human-level-control-through-deep-reinforcement-learning.md)
36. [Theano - new features and speed improvements](2012-theano-new-features-and-speed-improvements.md)
37. Improving direct-mapped cache performance by the addition of a small fully-associative cache and prefetch buffers
38. Simultaneous multithreading - a platform for next-generation processors
39. [Improved Semantic Representations From Tree-Structured Long Short-Term Memory Networks](2015-improved-semantic-representations-from-tree-structured-long-short-term-memory-networks.md)
40. Decoupled access/execute computer architectures
41. [Recurrent Neural Network Regularization](2014-recurrent-neural-network-regularization.md)
42. Roofline - an insightful visual performance model for multicore architectures
43. [Optimization by Simulated Annealing](1983-optimization-by-simulated-annealing.md)
