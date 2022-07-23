---
title: Hogwild - A Lock-Free Approach to Parallelizing Stochastic Gradient Descent
authors:
- B. Recht
- Christopher Ré
- Stephen J. Wright
- Feng Niu
fieldsOfStudy:
- Computer Science
meta_key: 2011-hogwild-a-lock-free-approach-to-parallelizing-stochastic-gradient-descent
numCitedBy: 2023
reading_status: TBD
ref_count: 32
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Hogwild:-A-Lock-Free-Approach-to-Parallelizing-Recht-Ré/36f49b05d764bf5c10428b082c2d96c13c4203b9?sort=total-citations
venue: NIPS
year: 2011
---

# Hogwild - A Lock-Free Approach to Parallelizing Stochastic Gradient Descent

## Abstract

Stochastic Gradient Descent (SGD) is a popular algorithm that can achieve state-of-the-art performance on a variety of machine learning tasks. Several researchers have recently proposed schemes to parallelize SGD, but all require performance-destroying memory locking and synchronization. This work aims to show using novel theoretical analysis, algorithms, and implementation that SGD can be implemented without any locking. We present an update scheme called HOGWILD! which allows processors access to shared memory with the possibility of overwriting each other's work. We show that when the associated optimization problem is sparse, meaning most gradient updates only modify small parts of the decision variable, then HOGWILD! achieves a nearly optimal rate of convergence. We demonstrate experimentally that HOGWILD! outperforms alternative schemes that use locking by an order of magnitude.

## Paper References

1. Parallelized Stochastic Gradient Descent
2. The Landscape of Parallel Computing Research - A View from Berkeley
3. Optimal Distributed Online Prediction Using Mini-Batches
4. Parallel stochastic gradient algorithms for large-scale matrix completion
5. Parallel and Distributed Computation - Numerical Methods
6. An Incremental Gradient(-Projection) Method with Momentum Term and Adaptive Stepsize Rule
7. Analysis of an approximate gradient projection method with applications to the backpropagation algorithm
8. MapReduce - simplified data processing on large clusters
9. Convergence Rate of Incremental Subgradient Algorithms
10. Distributed Dual Averaging In Networks
11. Sparse Online Learning via Truncated Gradient
12. Practical Large-Scale Optimization for Max-norm Regularization
13. [An experimental comparison of min-cut/max- flow algorithms for energy minimization in vision](2004-an-experimental-comparison-of-min-cut-max-flow-algorithms-for-energy-minimization-in-vision.md)
14. Robust Stochastic Approximation Approach to Stochastic Programming
15. Training linear SVMs in linear time
16. Slow Learners are Fast
17. Distributed Asynchronous Deterministic and Stochastic Gradient Optimization Algorithms
18. Exact matrix completion via convex optimization
19. The Tradeoffs of Large Scale Learning
20. Guaranteed Minimum-Rank Solutions of Linear Matrix Equations via Nuclear Norm Minimization
21. RCV1 - A New Benchmark Collection for Text Categorization Research
22. An improved approximation algorithm for multiway cut
23. Web Scale Entity Resolution using Relational Evidence
24. SVM optimization - inverse dependence on training set size
25. Editors
26. Maximum-Margin Matrix Factorization
27. NONLINEAR PROGRAMMING
28. Dremel - Interactive Analysis of Web-Scale Datasets
