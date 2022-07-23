---
title: Learning to optimize halide with tree search and random programs
authors:
- Andrew Adams
- Karima Ma
- Luke Anderson
- Riyadh Baghdadi
- Tzu-Mao Li
- Michaël Gharbi
- Benoit Steiner
- Steven Johnson
- Kayvon Fatahalian
- F. Durand
- Jonathan Ragan-Kelley
fieldsOfStudy:
- Computer Science
meta_key: 2019-learning-to-optimize-halide-with-tree-search-and-random-programs
numCitedBy: 122
reading_status: TBD
ref_count: 35
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Learning-to-optimize-halide-with-tree-search-and-Adams-Ma/f90a7bc396e205b204d5d6066a10162f84b128f9?sort=total-citations
venue: ACM Trans. Graph.
year: 2019
---

# Learning to optimize halide with tree search and random programs

## Abstract

We present a new algorithm to automatically schedule Halide programs for high-performance image processing and deep learning. We significantly improve upon the performance of previous methods, which considered a limited subset of schedules. We define a parameterization of possible schedules much larger than prior methods and use a variant of beam search to search over it. The search optimizes runtime predicted by a cost model based on a combination of new derived features and machine learning. We train the cost model by generating and featurizing hundreds of thousands of random programs and schedules. We show that this approach operates effectively with or without autotuning. It produces schedules which are on average almost twice as fast as the existing Halide autoscheduler without autotuning, or more than twice as fast with, and is the first automatic scheduling algorithm to significantly outperform human experts on average.

## Paper References

1. End-to-End Deep Learning of Optimization Heuristics
2. A Survey on Compiler Autotuning using Machine Learning
3. Differentiable programming for image processing and deep learning in halide
4. [Automatically scheduling halide image processing pipelines](2016-automatically-scheduling-halide-image-processing-pipelines.md)
5. OpenTuner - An extensible framework for program autotuning
6. [Automatic differentiation in PyTorch](2017-automatic-differentiation-in-pytorch.md)
7. Neural Network Assisted Tile Size Selection
8. MILEPOST GCC - machine learning based research compiler
9. An effective fusion and tile size model for optimizing image processing pipelines
10. Schedule Synthesis for Halide Pipelines through Reuse Analysis
11. [Learning to Optimize Tensor Programs](2018-learning-to-optimize-tensor-programs.md)
12. Decoupling algorithms from schedules for easy optimization of image processing pipelines
13. A practical automatic polyhedral parallelizer and locality optimizer
14. Halide - a language and compiler for optimizing parallelism, locality, and recomputation in image processing pipelines
15. Halide
16. [Adam - A Method for Stochastic Optimization](2015-adam-a-method-for-stochastic-optimization.md)
17. Polly - Performing Polyhedral Optimizations on a Low-Level Intermediate Representation
18. Ithemal - Accurate, Portable and Fast Basic Block Throughput Estimation using Deep Neural Networks
19. PolyMage - Automatic Optimization for Image Processing Pipelines
20. [Deep Residual Learning for Image Recognition](2016-deep-residual-learning-for-image-recognition.md)
21. Loop transformations leveraging hardware prefetching
22. [MXNet - A Flexible and Efficient Machine Learning Library for Heterogeneous Distributed Systems](2015-mxnet.md)
23. PENCIL - A Platform-Neutral Compute Intermediate Language for Accelerator Programming
24. [TVM - End-to-End Optimization Stack for Deep Learning](2018-tvm-stack.md)
25. [TensorFlow - Large-Scale Machine Learning on Heterogeneous Distributed Systems](2016-tensorflow-large-scale-machine-learning-on-heterogeneous-distributed-systems.md)
26. Bilateral guided upsampling
27. [Tensor Comprehensions - Framework-Agnostic High-Performance Machine Learning Abstractions](2018-tensor-comprehensions-framework-agnostic-high-performance-machine-learning-abstractions.md)
28. Darkroom - compiling high-level image processing code into hardware pipelines
