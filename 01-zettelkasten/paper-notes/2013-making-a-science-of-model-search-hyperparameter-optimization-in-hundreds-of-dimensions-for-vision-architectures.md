---
title: Making a Science of Model Search - Hyperparameter Optimization in Hundreds of Dimensions for Vision Architectures
authors:
- J. Bergstra
- Daniel Yamins
- D. Cox
fieldsOfStudy:
- Computer Science
meta_key: 2013-making-a-science-of-model-search-hyperparameter-optimization-in-hundreds-of-dimensions-for-vision-architectures
numCitedBy: 1286
reading_status: TBD
ref_count: 37
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Making-a-Science-of-Model-Search:-Hyperparameter-in-Bergstra-Yamins/29935173af73aef20336db72d608e0ef5b0e0c16?sort=total-citations
venue: ICML
year: 2013
---

[semanticscholar url](https://www.semanticscholar.org/paper/Making-a-Science-of-Model-Search:-Hyperparameter-in-Bergstra-Yamins/29935173af73aef20336db72d608e0ef5b0e0c16?sort=total-citations)

# Making a Science of Model Search - Hyperparameter Optimization in Hundreds of Dimensions for Vision Architectures

## Abstract

Many computer vision algorithms depend on configuration settings that are typically hand-tuned in the course of evaluating the algorithm for a particular data set. While such parameter tuning is often presented as being incidental to the algorithm, correctly setting these parameter choices is frequently critical to realizing a method's full potential. Compounding matters, these parameters often must be re-tuned when the algorithm is applied to a new problem domain, and the tuning process itself often depends on personal experience and intuition in ways that are hard to quantify or describe. Since the performance of a given technique depends on both the fundamental quality of the algorithm and the details of its tuning, it is sometimes difficult to know whether a given technique is genuinely better, or simply better tuned. 
 
In this work, we propose a meta-modeling approach to support automated hyperparameter optimization, with the goal of providing practical tools that replace hand-tuning with a reproducible and unbiased optimization process. Our approach is to expose the underlying expression graph of how a performance metric (e.g. classification accuracy on validation examples) is computed from hyperparameters that govern not only how individual processing steps are applied, but even which processing steps are included. A hyperparameter optimization algorithm transforms this graph into a program for optimizing that performance metric. Our approach yields state of the art results on three disparate computer vision problems: a face-matching verification task (LFW), a face identification task (PubFig83) and an object recognition task (CIFAR-10), using a single broad class of feed-forward vision architectures.

## Paper References

1. Making a Science of Model Search
2. [Practical Bayesian Optimization of Machine Learning Algorithms](2012-practical-bayesian-optimization-of-machine-learning-algorithms.md)
3. [Algorithms for Hyper-Parameter Optimization](2011-algorithms-for-hyper-parameter-optimization.md)
4. A High-Throughput Screening Approach to Discovering Good Forms of Biologically Inspired Visual Representation
5. Automated configuration of algorithms for solving hard computational problems
6. [Sequential Model-Based Optimization for General Algorithm Configuration](2011-sequential-model-based-optimization-for-general-algorithm-configuration.md)
7. Surrogating the surrogate - accelerating Gaussian-process-based global optimization with a mixture cross-entropy algorithm
8. Beyond simple features - A large-scale feature search approach to unconstrained face recognition
9. [Learning Multiple Layers of Features from Tiny Images](2009-learning-multiple-layers-of-features-from-tiny-images.md)
10. Machine learning for predictive auto-tuning with boosted regression trees
11. [Random Search for Hyper-Parameter Optimization](2012-random-search-for-hyper-parameter-optimization.md)
12. The Importance of Encoding Versus Training with Sparse Coding and Vector Quantization
13. [A Fast Learning Algorithm for Deep Belief Nets](2006-a-fast-learning-algorithm-for-deep-belief-nets.md)
14. [Labeled Faces in the Wild - A Database forStudying Face Recognition in Unconstrained Environments](2008-labeled-faces-in-the-wild-a-database-forstudying-face-recognition-in-unconstrained-environments.md)
15. [Gaussian Processes for Machine Learning](2009-gaussian-processes-for-machine-learning.md)
16. Scaling up biologically-inspired computer vision - A case study in unconstrained face recognition on facebook
17. Independent component analysis - algorithms and applications
18. [Object recognition from local scale-invariant features](1999-object-recognition-from-local-scale-invariant-features.md)
19. [Neocognitron - A self-organizing neural network model for a mechanism of pattern recognition unaffected by shift in position](2004-neocognitron-a-self-organizing-neural-network-model-for-a-mechanism-of-pattern-recognition-unaffected-by-shift-in-position.md)
20. How Does the Brain Solve Visual Object Recognition?
21. Hierarchical models of object recognition in cortex
22. Backpropagation Applied to Handwritten Zip Code Recognition
23. Scikit-learn - Machine Learning in Python
24. A Taxonomy of Global Optimization Methods Based on Response Surfaces
25. [LIBLINEAR - A Library for Large Linear Classification](2008-liblinear-a-library-for-large-linear-classification.md)
