---
title: TASO - optimizing deep learning computation with automatic generation of graph substitutions
authors:
- Zhihao Jia
- Oded Padon
- James J. Thomas
- Todd Warszawski
- M. Zaharia
- A. Aiken
fieldsOfStudy:
- Computer Science
meta_key: 2019-taso-optimizing-deep-learning-computation-with-automatic-generation-of-graph-substitutions
numCitedBy: 122
reading_status: TBD
ref_count: 41
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/TASO%3A-optimizing-deep-learning-computation-with-of-Jia-Padon/80b362efee95c1759c6dab9219eb77ca3ee44475
venue: SOSP
year: 2019
---

# TASO - optimizing deep learning computation with automatic generation of graph substitutions

## Abstract

Existing deep neural network (DNN) frameworks optimize the computation graph of a DNN by applying graph transformations manually designed by human experts. This approach misses possible graph optimizations and is difficult to scale, as new DNN operators are introduced on a regular basis. We propose TASO, the first DNN computation graph optimizer that automatically generates graph substitutions. TASO takes as input a list of operator specifications and generates candidate substitutions using the given operators as basic building blocks. All generated substitutions are formally verified against the operator specifications using an automated theorem prover. To optimize a given DNN computation graph, TASO performs a cost-based backtracking search, applying the substitutions to find an optimized graph, which can be directly used by existing DNN frameworks. Our evaluation on five real-world DNN architectures shows that TASO outperforms existing DNN frameworks by up to 2.8X, while requiring significantly less human effort. For example, TensorFlow currently contains approximately 53,000 lines of manual optimization rules, while the operator specifications needed by TASO are only 1,400 lines of code.

## Paper References

1. Optimizing DNN Computation with Relaxed Graph Substitutions
2. [Learning to Optimize Tensor Programs](2018-learning-to-optimize-tensor-programs.md)
3. [BERT - Pre-training of Deep Bidirectional Transformers for Language Understanding](2019-bert-pre-training-of-deep-bidirectional-transformers-for-language-understanding.md)
4. [Device Placement Optimization with Reinforcement Learning](2017-device-placement-optimization-with-reinforcement-learning.md)
5. Astra - Exploiting Predictability to Optimize Deep Learning
6. [Beyond Data and Model Parallelism for Deep Neural Networks](2019-beyond-data-and-model-parallelism-for-deep-neural-networks.md)
7. [TensorFlow - A system for large-scale machine learning](2016-tensorflow-a-system-for-large-scale-machine-learning.md)
8. [Neural Architecture Search with Reinforcement Learning](2017-neural-architecture-search-with-reinforcement-learning.md)
9. [TVM - End-to-End Optimization Stack for Deep Learning](2018-tvm-end-to-end-optimization-stack-for-deep-learning.md)
10. [Aggregated Residual Transformations for Deep Neural Networks](2017-aggregated-residual-transformations-for-deep-neural-networks.md)
11. [cuDNN - Efficient Primitives for Deep Learning](2014-cudnn-efficient-primitives-for-deep-learning.md)
12. [Training and Inference with Integers in Deep Neural Networks](2018-training-and-inference-with-integers-in-deep-neural-networks.md)
13. Optimizing Memory Efficiency for Deep Convolutional Neural Networks on GPUs
14. [Deep Residual Learning for Image Recognition](2016-deep-residual-learning-for-image-recognition.md)
15. [Learning Transferable Architectures for Scalable Image Recognition](2018-learning-transferable-architectures-for-scalable-image-recognition.md)
16. Automatic generation of peephole superoptimizers
17. Discovering affine equalities using random interpretation
18. Exploring the Hidden Dimension in Accelerating Convolutional Neural Networks
19. Compiler validation via equivalence modulo inputs
20. Translation validation for an optimizing compiler
21. Semantic program alignment for equivalence checking
22. [A guide to convolution arithmetic for deep learning](2016-a-guide-to-convolution-arithmetic-for-deep-learning.md)
23. Tools and Algorithms for the Construction and Analysis of Systems
24. Translation Validation
25. Black-Box Equivalence Checking Across Compiler Optimizations
26. [MobileNets - Efficient Convolutional Neural Networks for Mobile Vision Applications](2017-mobilenets-efficient-convolutional-neural-networks-for-mobile-vision-applications.md)
27. [Z3 - An Efficient SMT Solver](2008-z3-an-efficient-smt-solver.md)
28. [Rectified Linear Units Improve Restricted Boltzmann Machines](2010-rectified-linear-units-improve-restricted-boltzmann-machines.md)
29. Data-driven equivalence checking
30. [ImageNet Large Scale Visual Recognition Challenge](2015-imagenet-large-scale-visual-recognition-challenge.md)
31. TensorFlow Graph Optimizations
