---
title: LIFT - A functional data-parallel IR for high-performance GPU code generation
authors:
- Michel Steuwer
- Toomas Remmelg
- Christophe Dubach
fieldsOfStudy:
- Computer Science
meta_key: 2017-lift-a-functional-data-parallel-ir-for-high-performance-gpu-code-generation
numCitedBy: 132
reading_status: TBD
ref_count: 21
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/LIFT:-A-functional-data-parallel-IR-for-GPU-code-Steuwer-Remmelg/aa3553beb4bfa0793a4bed05704e35412342800e?sort=total-citations
venue: 2017 IEEE/ACM International Symposium on Code Generation and Optimization (CGO)
year: 2017
---

[semanticscholar url](https://www.semanticscholar.org/paper/LIFT:-A-functional-data-parallel-IR-for-GPU-code-Steuwer-Remmelg/aa3553beb4bfa0793a4bed05704e35412342800e?sort=total-citations)

# LIFT - A functional data-parallel IR for high-performance GPU code generation

## Abstract

Parallel patterns (e.g., map, reduce) have gained traction as an abstraction for targeting parallel accelerators and are a promising answer to the performance portability problem. However, compiling high-level programs into efficient low-level parallel code is challenging. Current approaches start from a high-level parallel IR and proceed to emit GPU code directly in one big step. Fixed strategies are used to optimize and map parallelism exploiting properties of a particular GPU generation leading to performance portability issues. We introduce the LIFT IR, a new data-parallel IR which encodes OpenCL-specific constructs as functional patterns. Our prior work has shown that this functional nature simplifies the exploration of optimizations and mapping of parallelism from portable high-level programs using rewrite-rules. This paper describes how LIFT IR programs are compiled into efficient OpenCL code. This is non-trivial as many performance sensitive details such as memory allocation, array accesses or synchronization are not explicitly represented in the LIFT IR. We present techniques which overcome this challenge by exploiting the pattern's high-level semantics. Our evaluation shows that the LIFT IR is flexible enough to express GPU programs with complex optimizations achieving performance on par with manually optimized code.

## Paper References

1. Generating performance portable code using rewrite rules - from high-level functional expressions to high-performance OpenCL code
2. Locality-Aware Mapping of Nested Parallel Patterns on GPUs
3. PENCIL - A Platform-Neutral Compute Intermediate Language for Accelerator Programming
4. NOVA - A Functional Language for Data Parallelism
5. Compiling a high-level language for GPUs - (via language support for architectures and compilers)
6. Copperhead - compiling an embedded data parallel language
7. Accelerating Haskell array codes with multicore GPUs
8. Hidp - A hierarchical data parallel language
9. A Heterogeneous Parallel Framework for Domain-Specific Languages
10. Optimising purely functional GPU programs
11. Have abstraction and eat performance, too - Optimized heterogeneous computing with parallel patterns
12. Thrust - A Productivity-Oriented Library for CUDA
13. Halide - a language and compiler for optimizing parallelism, locality, and recomputation in image processing pipelines
14. Software Pipelined Execution of Stream Programs on GPUs
15. SkelCL - A Portable Skeleton Library for High-Level GPU Programming
16. INSPIRE - The insieme parallel intermediate representation
17. Towards an Adaptive Skeleton Framework for Performance Portability
18. Size slicing - a hybrid approach to size inference in futhark
19. A graph-based higher-order intermediate representation
20. Algorithmic Skeletons - Structured Management of Parallel Computation
21. Delite - A Compiler Architecture for Performance-Oriented Embedded Domain-Specific Languages
