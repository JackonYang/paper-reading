---
title: Learning to Optimize Tensor Programs
authors:
- Tianqi Chen
- Lianmin Zheng
- Eddie Q. Yan
- Ziheng Jiang
- T. Moreau
- L. Ceze
- Carlos Guestrin
- A. Krishnamurthy
fieldsOfStudy:
- Computer Science
filesize_readable: 4.2 MB
meta_key: 2018-learning-to-optimize-tensor-programs
meta_relpath: paper-extra-data/pdf-meta/learning-to-optimize-tensor-programs.yaml
numCitedBy: 181
pdf_relpath: paper-repo/pdfs/learning-to-optimize-tensor-programs.pdf
reading_status: TBD
ref_count: 46
tags:
- gen-from-ref
- paper
- stc
url_slug: learning-to-optimize-tensor-programs
urls:
- https://www.semanticscholar.org/paper/Learning-to-Optimize-Tensor-Programs-Chen-Zheng/cb91c2f8d3cac0b655a39be318b603334eb18987
venue: NeurIPS
year: 2018
---

[pdf(local)](../../paper-repo/pdfs/learning-to-optimize-tensor-programs.pdf)

[semanticscholar url](https://www.semanticscholar.org/paper/Learning-to-Optimize-Tensor-Programs-Chen-Zheng/cb91c2f8d3cac0b655a39be318b603334eb18987)

# Learning to Optimize Tensor Programs

## Abstract

We introduce a learning-based framework to optimize tensor programs for deep learning workloads. Efficient implementations of tensor operators, such as matrix multiplication and high dimensional convolution, are key enablers of effective deep learning systems. However, existing systems rely on manually optimized libraries such as cuDNN where only a narrow range of server class GPUs are well-supported. The reliance on hardware-specific operator libraries limits the applicability of high-level graph optimizations and incurs significant engineering costs when deploying to new hardware targets. We use learning to remove this engineering burden. We learn domain-specific statistical cost models to guide the search of tensor operator implementations over billions of possible program variants. We further accelerate the search by effective model transfer across workloads. Experimental results show that our framework delivers performance competitive with state-of-the-art hand-tuned libraries for low-power CPU, mobile GPU, and server-class GPU.

## Paper References

1. [TensorFlow - A system for large-scale machine learning](2016-tensorflow.md)
2. [TVM - An Automated End-to-End Optimizing Compiler for Deep Learning](2018-tvm.md)
3. [Tensor Comprehensions - Framework-Agnostic High-Performance Machine Learning Abstractions](2018-tensor-comprehensions-framework-agnostic-high-performance-machine-learning-abstractions.md)
4. [The tensor algebra compiler](2017-the-tensor-algebra-compiler.md)
5. [Device Placement Optimization with Reinforcement Learning](2017-device-placement-optimization-with-reinforcement-learning.md)
6. OptiML - An Implicitly Parallel Domain-Specific Language for Machine Learning
7. [MXNet - A Flexible and Efficient Machine Learning Library for Heterogeneous Distributed Systems](2015-mxnet.md)
8. Scalable Bayesian Optimization Using Deep Neural Networks
9. [Learning to Represent Programs with Graphs](2018-learning-to-represent-programs-with-graphs.md)
10. [XGBoost - A Scalable Tree Boosting System](2016-xgboost-a-scalable-tree-boosting-system.md)
11. [LIFT - A functional data-parallel IR for high-performance GPU code generation](2017-lift-a-functional-data-parallel-ir-for-high-performance-gpu-code-generation.md)
12. An introduction to computational networks and the computational network toolkit (invited talk)
13. [Practical Bayesian Optimization of Machine Learning Algorithms](2012-practical-bayesian-optimization-of-machine-learning-algorithms.md)
14. [ImageNet classification with deep convolutional neural networks](2012-imagenet-classification-with-deep-convolutional-neural-networks.md)
15. [Sequence to Sequence Learning with Neural Networks](2014-sequence-to-sequence-learning-with-neural-networks.md)
16. [Fast Algorithms for Convolutional Neural Networks](2016-fast-algorithms-for-convolutional-neural-networks.md)
17. Algorithm Runtime Prediction - Methods and Evaluation (Extended Abstract)
18. [Unsupervised Representation Learning with Deep Convolutional Generative Adversarial Networks](2016-unsupervised-representation-learning-with-deep-convolutional-generative-adversarial-networks.md)
19. [Identity Mappings in Deep Residual Networks](2016-identity-mappings-in-deep-residual-networks.md)
20. Halide - a language and compiler for optimizing parallelism, locality, and recomputation in image processing pipelines
21. [Automatically scheduling halide image processing pipelines](2016-automatically-scheduling-halide-image-processing-pipelines.md)
22. Automatically Tuned Linear Algebra Software
23. A practical automatic polyhedral parallelizer and locality optimizer
24. [Efficient Hyperparameter Optimization and Infinitely Many Armed Bandits](2016-efficient-hyperparameter-optimization-and-infinitely-many-armed-bandits.md)
25. [MobileNets - Efficient Convolutional Neural Networks for Mobile Vision Applications](2017-mobilenets-efficient-convolutional-neural-networks-for-mobile-vision-applications.md)
26. [Tree-to-tree Neural Networks for Program Translation](2018-tree-to-tree-neural-networks-for-program-translation.md)
27. Futhark - purely functional GPU-programming with nested parallelism and in-place array updates
28. [Sequential Model-Based Optimization for General Algorithm Configuration](2011-sequential-model-based-optimization-for-general-algorithm-configuration.md)
29. [Theano - new features and speed improvements](2012-theano-new-features-and-speed-improvements.md)
30. [Google Vizier - A Service for Black-Box Optimization](2017-google-vizier-a-service-for-black-box-optimization.md)
31. Polyhedral parallel code generation for CUDA
32. [Greedy function approximation - A gradient boosting machine.](2001-greedy-function-approximation-a-gradient-boosting-machine.md)
33. Learning to rank using gradient descent
34. Tractability - Practical Approaches to Hard Problems
35. [Taking the Human Out of the Loop - A Review of Bayesian Optimization](2016-taking-the-human-out-of-the-loop-a-review-of-bayesian-optimization.md)
36. FFTW - an adaptive software architecture for the FFT
37. [Improved Semantic Representations From Tree-Structured Long Short-Term Memory Networks](2015-improved-semantic-representations-from-tree-structured-long-short-term-memory-networks.md)
38. [Recurrent Neural Network Regularization](2014-recurrent-neural-network-regularization.md)
39. [Human-level control through deep reinforcement learning](2015-human-level-control-through-deep-reinforcement-learning.md)
40. An analysis of approximations for maximizing submodular set functions-I
41. [Optimization by Simulated Annealing](1983-optimization-by-simulated-annealing.md)
