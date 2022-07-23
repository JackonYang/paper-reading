---
title: Tensor Comprehensions - Framework-Agnostic High-Performance Machine Learning Abstractions
authors:
- Nicolas Vasilache
- O. Zinenko
- Theodoros Theodoridis
- Priya Goyal
- Zach DeVito
- William S. Moses
- Sven Verdoolaege
- Andrew Adams
- Albert Cohen
fieldsOfStudy:
- Computer Science
meta_key: 2018-tensor-comprehensions-framework-agnostic-high-performance-machine-learning-abstractions
numCitedBy: 284
reading_status: TBD
ref_count: 102
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Tensor-Comprehensions:-Framework-Agnostic-Machine-Vasilache-Zinenko/cae9d90524cccac5081666985d5d055b71697cee?sort=total-citations
venue: ArXiv
year: 2018
---

# Tensor Comprehensions - Framework-Agnostic High-Performance Machine Learning Abstractions

## Abstract

Deep learning models with convolutional and recurrent networks are now ubiquitous and analyze massive amounts of audio, image, video, text and graph data, with applications in automatic translation, speech-to-text, scene understanding, ranking user preferences, ad placement, etc. Competing frameworks for building these networks such as TensorFlow, Chainer, CNTK, Torch/PyTorch, Caffe1/2, MXNet and Theano, explore different tradeoffs between usability and expressiveness, research or production orientation and supported hardware. They operate on a DAG of computational operators, wrapping high-performance libraries such as CUDNN (for NVIDIA GPUs) or NNPACK (for various CPUs), and automate memory allocation, synchronization, distribution. Custom operators are needed where the computation does not fit existing high-performance library calls, usually at a high engineering cost. This is frequently required when new operators are invented by researchers: such operators suffer a severe performance penalty, which limits the pace of innovation. Furthermore, even if there is an existing runtime call these frameworks can use, it often doesn't offer optimal performance for a user's particular network architecture and dataset, missing optimizations between operators as well as optimizations that can be done knowing the size and shape of data. Our contributions include (1) a language close to the mathematics of deep learning called Tensor Comprehensions offering both imperative and declarative styles, (2) a polyhedral Just-In-Time compiler to convert a mathematical description of a deep learning DAG into a CUDA kernel with delegated memory management and synchronization, also providing optimizations such as operator fusion and specialization for specific sizes, (3) a compilation cache populated by an autotuner. [Abstract cutoff]

## Paper References

1. [TensorFlow - A system for large-scale machine learning](2016-tensorflow-a-system-for-large-scale-machine-learning.md)
2. [TVM - End-to-End Optimization Stack for Deep Learning](2018-tvm-stack.md)
3. Latte - a language, compiler, and runtime for elegant and efficient deep neural networks
4. [TVM - An Automated End-to-End Optimizing Compiler for Deep Learning](2018-tvm.md)
5. [Aggregated Residual Transformations for Deep Neural Networks](2017-aggregated-residual-transformations-for-deep-neural-networks.md)
6. Deep Interest Network for Click-Through Rate Prediction
7. Large-scale deep unsupervised learning using graphics processors
8. [Accurate, Large Minibatch SGD - Training ImageNet in 1 Hour](2017-accurate-large-minibatch-sgd-training-imagenet-in-1-hour.md)
9. [In-datacenter performance analysis of a tensor processing unit](2017-in-datacenter-performance-analysis-of-a-tensor-processing-unit.md)
10. Loo.py - transformation-based code generation for GPUs and CPUs
11. [MXNet - A Flexible and Efficient Machine Learning Library for Heterogeneous Distributed Systems](2015-mxnet-a-flexible-and-efficient-machine-learning-library-for-heterogeneous-distributed-systems.md)
12. [The tensor algebra compiler](2017-the-tensor-algebra-compiler.md)
13. Model-Driven SIMD Code Generation for a Multi-resolution Tensor Kernel
14. [Deep Residual Learning for Image Recognition](2016-deep-residual-learning-for-image-recognition.md)
15. Wide & Deep Learning for Recommender Systems
16. [Theano - A Python framework for fast computation of mathematical expressions](2016-theano-a-python-framework-for-fast-computation-of-mathematical-expressions.md)
17. PolyMage - Automatic Optimization for Image Processing Pipelines
18. A Review of Relational Machine Learning for Knowledge Graphs
19. Fast Convolutional Nets With fbfft - A GPU Performance Evaluation
20. [ImageNet classification with deep convolutional neural networks](2012-imagenet-classification-with-deep-convolutional-neural-networks.md)
21. Halide - a language and compiler for optimizing parallelism, locality, and recomputation in image processing pipelines
22. [Fast Algorithms for Convolutional Neural Networks](2016-fast-algorithms-for-convolutional-neural-networks.md)
23. PENCIL - A Platform-Neutral Compute Intermediate Language for Accelerator Programming
24. In search of a program generator to implement generic transformations for high-performance computing
25. [Practical Bayesian Optimization of Machine Learning Algorithms](2012-practical-bayesian-optimization-of-machine-learning-algorithms.md)
26. [Automatically scheduling halide image processing pipelines](2016-automatically-scheduling-halide-image-processing-pipelines.md)
27. Semi-Automatic Composition of Loop Transformations for Deep Parallelism and Memory Hierarchies
28. Implementing Neural Networks Efficiently
29. CHiLL - A Framework for Composing High-Level Loop Transformations
30. When polyhedral transformations meet SIMD code generation
31. Loop transformations - convexity, pruning and optimization
32. [Improving neural networks by preventing co-adaptation of feature detectors](2012-improving-neural-networks-by-preventing-co-adaptation-of-feature-detectors.md)
33. [Hogwild - A Lock-Free Approach to Parallelizing Stochastic Gradient Descent](2011-hogwild-a-lock-free-approach-to-parallelizing-stochastic-gradient-descent.md)
34. Facilitating the search for compositions of program transformations
35. Unified Polyhedral Modeling of Temporal and Spatial Locality
36. The Pluto+ Algorithm - A Practical Approach for Parallelization and Locality Optimization of Affine Loop Nests
37. Factorization Machines
38. Polyhedral-based data reuse optimization for configurable computing
39. Simit - A Language for Physical Simulation
40. A practical automatic polyhedral parallelizer and locality optimizer
41. Polyhedral AST Generation Is More Than Scanning Polyhedra
42. A Language for the Compact Representation of Multiple Program Versions
43. Automating the generation of composed linear algebra kernels
44. A basic linear algebra compiler for structured matrices
45. Optimizing Compilers for Modern Architectures - A Dependence-based Approach
46. A compiler framework for optimization of affine loop nests for gpgpus
47. Automatically Tuned Linear Algebra Software
48. Polyhedral Optimization of TensorFlow Computation Graphs
49. VOBLA - a vehicle for optimized basic linear algebra
50. [Google Vizier - A Service for Black-Box Optimization](2017-google-vizier-a-service-for-black-box-optimization.md)
51. Opening polyhedral compiler's black box
52. Optimization techniques for efficient HTA programs
53. Joint Scheduling and Layout Optimization to Enable Multi-Level Vectorization
54. Code generation in the polyhedral model is easier than you think
55. Static analysis of upper and lower bounds on dependences and parallelism
56. Lightweight modular staging - a pragmatic approach to runtime code generation and compiled DSLs
57. The Polyhedral Model Is More Widely Applicable Than You Think
58. Spiral - A Generator for Platform-Adapted Libraries of Signal Processing Alogorithms
59. Polyhedral parallel code generation for CUDA
60. Runtime Code Generation in C++ as a Foundation for Domain-Specific Optimisation
61. Deep, Big, Simple Neural Nets for Handwritten Digit Recognition
62. Polyhedral Extraction Tool
63. Perceptrons An Introduction To Computational Geometry
64. Some efficient solutions to the affine scheduling problem. Part II. Multidimensional time
65. FFTW - an adaptive software architecture for the FFT
66. Hyperparameter Tuning in Bandit-Based Adaptive Operator Selection
67. Handwritten Digit Recognition with a Back-Propagation Network
68. Counting Affine Calculator and Applications
69. The ALPHA language and its use for the design of systolic arrays
70. isl - An Integer Set Library for the Polyhedral Model
71. OoLALA - an object oriented analysis and design of numerical linear algebra
72. Some efficient solutions to the affine scheduling problem. I. One-dimensional time
73. Overcoming the challenges to feedback-directed optimization (Keynote Talk)
74. Polyhedra scanning revisited
75. Dataflow analysis of array and scalar references
76. Active Libraries - Rethinking the roles of compilers and libraries
77. A Reconfigurable Fabric for Accelerating Large-Scale Datacenter Services
78. Schedule Trees
79. Principles of Program Analysis
80. [Genetic Algorithms in Search Optimization and Machine Learning](1988-genetic-algorithms-in-search-optimization-and-machine-learning.md)
81. Scheduling for PPCG
82. Deep Big Simple Neural Nets Excel on Handwritten Digit Recognition
83. Polyhedron Model
