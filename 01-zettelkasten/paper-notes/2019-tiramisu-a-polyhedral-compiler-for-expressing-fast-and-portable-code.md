---
title: Tiramisu - A Polyhedral Compiler for Expressing Fast and Portable Code
authors:
- Riyadh Baghdadi
- Jessica Ray
- Malek Ben Romdhane
- Emanuele Del Sozzo
- Abdurrahman Akkas
- Yunming Zhang
- Patricia Suriana
- S. Kamil
- Saman P. Amarasinghe
fieldsOfStudy:
- Computer Science
meta_key: 2019-tiramisu-a-polyhedral-compiler-for-expressing-fast-and-portable-code
numCitedBy: 122
reading_status: TBD
ref_count: 55
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Tiramisu:-A-Polyhedral-Compiler-for-Expressing-Fast-Baghdadi-Ray/8c7310477fd027193cd040288f0aa9824c80b91f?sort=total-citations
venue: 2019 IEEE/ACM International Symposium on Code Generation and Optimization (CGO)
year: 2019
---

# Tiramisu - A Polyhedral Compiler for Expressing Fast and Portable Code

## Abstract

This paper introduces Tiramisu, a polyhedral framework designed to generate high performance code for multiple platforms including multicores, GPUs, and distributed machines. Tiramisu introduces a scheduling language with novel commands to explicitly manage the complexities that arise when targeting these systems. The framework is designed for the areas of image processing, stencils, linear algebra and deep learning. Tiramisu has two main features: it relies on a flexible representation based on the polyhedral model and it has a rich scheduling language allowing fine-grained control of optimizations. Tiramisu uses a four-level intermediate representation that allows full separation between the algorithms, loop transformations, data layouts, and communication. This separation simplifies targeting multiple hardware architectures with the same algorithm. We evaluate Tiramisu by writing a set of image processing, deep learning, and linear algebra benchmarks and compare them with state-of-the-art compilers and hand-tuned libraries. We show that Tiramisu matches or outperforms existing compilers and libraries on different hardware architectures, including multicore CPUs, GPUs, and distributed machines.

## Paper References

1. Polly - Performing Polyhedral Optimizations on a Low-Level Intermediate Representation
2. A practical automatic polyhedral parallelizer and locality optimizer
3. PENCIL - A Platform-Neutral Compute Intermediate Language for Accelerator Programming
4. Code generation in the polyhedral model is easier than you think
5. Decoupling algorithms from schedules for easy optimization of image processing pipelines
6. CHiLL - A Framework for Composing High-Level Loop Transformations
7. Distributed Halide
8. PolyMage - Automatic Optimization for Image Processing Pipelines
9. Halide - a language and compiler for optimizing parallelism, locality, and recomputation in image processing pipelines
10. Semi-Automatic Composition of Loop Transformations for Deep Parallelism and Memory Hierarchies
11. The Polyhedral Model Is More Widely Applicable Than You Think
12. NOVA - A Functional Language for Data Parallelism
13. Optimizing memory usage in the polyhedral model
14. [LIFT - A functional data-parallel IR for high-performance GPU code generation](2017-lift-a-functional-data-parallel-ir-for-high-performance-gpu-code-generation.md)
15. Compiling affine loop nests for distributed-memory parallel architectures
16. A domain-specific approach to heterogeneous parallelism
17. Loop Transformation Recipes for Code Generation and Auto-Tuning
18. Loop transformations - convexity, pruning and optimization
19. Communication optimization and code generation for distributed memory machines
20. GRAPHITE Two Years After First Lessons Learned From Real-World Polyhedral Compilation
21. isl - An Integer Set Library for the Polyhedral Model
22. GraphIt - a high-performance graph DSL
23. A unified framework for schedule and storage optimization
24. PENCIL Language Specification
25. POET - Parameterized Optimizations for Empirical Tuning
26. Hybrid Hexagonal/Classical Tiling for GPUs
27. [TVM - End-to-End Optimization Stack for Deep Learning](2018-tvm-stack.md)
28. AlphaZ - A System for Design Space Exploration in the Polyhedral Model
29. Effective automatic parallelization of stencil computations
30. Extending Halide to Improve Software Development for Imaging DSPs
31. Data Dependence and Data-Flow Analysis of Arrays
32. On privatization of variables for data-parallel execution
33. New Complexity Results on Array Contraction and Related Problems
34. [Tensor Comprehensions - Framework-Agnostic High-Performance Machine Learning Abstractions](2018-tensor-comprehensions-framework-agnostic-high-performance-machine-learning-abstractions.md)
35. A Unified Backend for Targeting FPGAs from DSLs
36. A Loop Transformation Theory and an Algorithm to Maximize Parallelism
37. Array expansion
38. Dataflow analysis of array and scalar references
39. Array-data flow analysis and its use in array privatization
40. Intel Math Kernel Library
41. Automatic Storage Management for Parallel Programs
42. Supernode partitioning
43. Automatic Array Privatization
44. Anatomy of high-performance matrix multiplication
45. Design of High Performance MVAPICH2 - MPI2 over InfiniBand
46. Array privatization for parallel execution of loops
47. Nuclear correlation functions in lattice QCD
48. Machine Perception of Three-Dimensional Solids
49. Polyhedron Model
