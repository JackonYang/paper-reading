---
title: Large Scale Distributed Deep Networks
authors:
- J. Dean
- G. Corrado
- R. Monga
- Kai Chen
- Matthieu Devin
- Quoc V. Le
- Mark Z. Mao
- Marc'Aurelio Ranzato
- A. Senior
- P. Tucker
- Ke Yang
- A. Ng
fieldsOfStudy:
- Computer Science
meta_key: 2012-large-scale-distributed-deep-networks
numCitedBy: 3040
reading_status: TBD
ref_count: 30
tags:
- gen-from-ref
- other-default
- paper
venue: NIPS
year: 2012
---

# Large Scale Distributed Deep Networks

## Abstract

Recent work in unsupervised feature learning and deep learning has shown that being able to train large models can dramatically improve performance. In this paper, we consider the problem of training a deep network with billions of parameters using tens of thousands of CPU cores. We have developed a software framework called DistBelief that can utilize computing clusters with thousands of machines to train large models. Within this framework, we have developed two algorithms for large-scale distributed training: (i) Downpour SGD, an asynchronous stochastic gradient descent procedure supporting a large number of model replicas, and (ii) Sandblaster, a framework that supports a variety of distributed batch optimization procedures, including a distributed implementation of L-BFGS. Downpour SGD and Sandblaster L-BFGS both increase the scale and speed of deep network training. We have successfully used our system to train a deep network 30x larger than previously reported in the literature, and achieves state-of-the-art performance on ImageNet, a visual object recognition task with 16 million images and 21k categories. We show that these same techniques dramatically accelerate the training of a more modestly- sized deep network for a commercial speech recognition service. Although we focus on and report performance of these methods as applied to training large neural networks, the underlying algorithms are applicable to any gradient-based machine learning algorithm.

## Paper References

1. Large-scale deep unsupervised learning using graphics processors
2. Improving the speed of neural networks on CPUs
3. [An Analysis of Single-Layer Networks in Unsupervised Feature Learning](2011-an-analysis-of-single-layer-networks-in-unsupervised-feature-learning)
4. On optimization methods for deep learning
5. [Learning Multiple Layers of Features from Tiny Images](2009-learning-multiple-layers-of-features-from-tiny-images)
6. [Building high-level features using large scale unsupervised learning](2013-building-high-level-features-using-large-scale-unsupervised-learning)
7. Scalable stacking and learning for building deep architectures
8. Distributed GraphLab - A Framework for Machine Learning in the Cloud
9. Distributed Training Strategies for the Structured Perceptron
10. Hogwild - A Lock-Free Approach to Parallelizing Stochastic Gradient Descent
11. Parallelized Stochastic Gradient Descent
12. Distributed delayed stochastic optimization
13. Efficient Large-Scale Distributed Training of Conditional Maximum Entropy Models
14. [Multi-column deep neural networks for image classification](2012-multi-column-deep-neural-networks-for-image-classification)
15. [Adaptive Subgradient Methods for Online Learning and Stochastic Optimization](2010-adaptive-subgradient-methods-for-online-learning-and-stochastic-optimization)
16. [Context-Dependent Pre-Trained Deep Neural Networks for Large-Vocabulary Speech Recognition](2012-context-dependent-pre-trained-deep-neural-networks-for-large-vocabulary-speech-recognition)
17. A reliable effective terascale linear learning system
18. Stochastic Gradient Learning in Neural Networks
19. [A unified architecture for natural language processing - deep neural networks with multitask learning](2008-a-unified-architecture-for-natural-language-processing-deep-neural-networks-with-multitask-learning)
20. [ImageNet - A large-scale hierarchical image database](2009-imagenet-a-large-scale-hierarchical-image-database)
21. A scalable modular convex solver for regularized risk minimization
22. Deep learning via Hessian-free optimization
23. A Neural Probabilistic Language Model
24. [Deep Neural Networks for Acoustic Modeling in Speech Recognition](2012-deep-neural-networks-for-acoustic-modeling-in-speech-recognition)
25. Slow Learners are Fast
26. Deep, Big, Simple Neural Nets for Handwritten Digit Recognition
27. Hash Kernels
28. Deep Big Simple Neural Nets Excel on Handwritten Digit Recognition
29. [Efficient BackProp](2012-efficient-backprop)
