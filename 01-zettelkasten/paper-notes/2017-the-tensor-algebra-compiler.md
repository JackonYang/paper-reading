---
title: The tensor algebra compiler
authors:
- Fredrik Kjolstad
- S. Kamil
- Stephen Chou
- D. Lugato
- Saman P. Amarasinghe
fieldsOfStudy:
- Computer Science
meta_key: 2017-the-tensor-algebra-compiler
numCitedBy: 201
reading_status: TBD
ref_count: 99
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/The-tensor-algebra-compiler-Kjolstad-Kamil/c2e1139691c3a337831e36ee7afeab8817ab5d48?sort=total-citations
venue: Proc. ACM Program. Lang.
year: 2017
---

# The tensor algebra compiler

## Abstract

Tensor algebra is a powerful tool with applications in machine learning, data analytics, engineering and the physical sciences. Tensors are often sparse and compound operations must frequently be computed in a single kernel for performance and to save memory. Programmers are left to write kernels for every operation of interest, with different mixes of dense and sparse tensors in different formats. The combinations are infinite, which makes it impossible to manually implement and optimize them all. This paper introduces the first compiler technique to automatically generate kernels for any compound tensor algebra operation on dense and sparse tensors. The technique is implemented in a C++ library called taco. Its performance is competitive with best-in-class hand-optimized kernels in popular libraries, while supporting far more tensor operations.

## Paper References

1. Sparse Tensor Algebra as a Parallel Programming Model
2. Sparso - Context-driven optimizations of sparse linear algebra
3. SPLATT - Efficient and Parallel Sparse Tensor-Matrix Multiplication
4. High-Performance Tensor Contraction without Transposition
5. Optimizing Sparse Tensor Times Matrix on Multi-core and Many-Core Architectures
6. Efficient and scalable computations with sparse tensors
7. Optimization of symmetric tensor computations
8. Data-Parallel Language for Correct and Efficient Sparse Matrix Codes
9. Tensor-matrix products with a compressed sparse tensor
10. OSKI - A Library of Automatically Tuned Sparse Matrix Kernels
11. Scalable sparse tensor decompositions in distributed memory systems
12. Reliable Generation of High-Performance Matrix Algebra
13. Scalable, Portable, Verifiable Kronecker Products on Multi-scale Computers
14. [TensorFlow - A system for large-scale machine learning](2016-tensorflow-a-system-for-large-scale-machine-learning.md)
15. Efficient MATLAB Computations with Sparse and Factored Tensors
16. Automatically Tuned Linear Algebra Software
17. Relational Algebraic Techniques for the Synthesis of Sparse Matrix Programs
18. A Basic Linear Algebra Compiler
19. Compiling Parallel Sparse Code for User-Defined Data Structures
20. Design of a High-Performance GEMM-like Tensor-Tensor Multiplication
21. New implementation of high‐level correlated methods using a general block tensor library for high‐performance electronic structure calculations
22. A massively parallel tensor contraction framework for coupled-cluster computations
23. Compilation techniques for sparse matrix computations
24. Loop and data transformations for sparse matrix code
25. A Relational Approach to the Automatic Generation of Sequential Sparse matrix Codes
26. Automatic code generation for many-body electronic structure methods - the tensor contraction engine
27. On the representation and multiplication of hypersparse matrices
28. On Automatic Data Structure Selection and Code Generation for Sparse Computations
29. Optimization of sparse matrix-vector multiplication on emerging multicore platforms
30. Autotuning Sparse Matrix-Vector Multiplication for Multicore
31. Simit - A Language for Physical Simulation
32. A Relational Approach to the Compilation of Sparse Matrix Programs
33. Automating Wavefront Parallelization for Sparse Matrix Computations
34. Generating Indexing Functions of Regularly Sparse Arrays for Array Compilers
35. Efficient Management of Parallelism in Object-Oriented Numerical Software Libraries
36. SIPR - A New Framework for Generating Efficient Code for Sparse Matrix Computations
37. A data locality optimizing algorithm
38. Armadillo - An Open Source C++ Linear Algebra Library for Fast Prototyping and Computationally Intensive Experiments
39. Algorithm 408 - a sparse matrix package (part I) [F4
40. Improving data locality with loop transformations
41. High Performance Machine Learning through Codesign and Rooflining
42. The university of Florida sparse matrix collection
43. Julia - A Fast Dynamic Language for Technical Computing
44. Direct solutions of sparse network equations by optimally ordered triangular factorization
45. Tensor decompositions for learning latent variable models
46. An Introduction to Tensors for Students of Physics and Engineering
47. Two Fast Algorithms for Sparse Matrices - Multiplication and Permuted Transposition
48. An input-adaptive and in-place approach to dense tensor-times-matrix multiply
49. The NumPy Array - A Structure for Efficient Numerical Computation
50. The topology of symmetric, second-order tensor fields
51. A programming language
52. Parallel sparse matrix-vector and matrix-transpose-vector multiplication using compressed sparse blocks
53. NWChem - A comprehensive and scalable open-source solution for large scale molecular simulations
54. The Netflix Prize
55. LAPACK Users' Guide
56. The art of computer programming - sorting and searching (volume 3)
57. Hidden factors and hidden topics - understanding rating dimensions with review text
58. Méthodes de calcul différentiel absolu et leurs applications
59. On the evolution of user interaction in Facebook
60. The Foundation of the General Theory of Relativity
61. A mathematics of arrays
62. The Feynman Lectures on Physics Addison-Wesley Reading
63. Discussion Tracking in Enron Email using PARAFAC.
64. The Art of Computer Programming, Volume III - Sorting and Searching
65. Feynman Lectures on Physics
66. A data locality optimizing algorithm
