---
title: cuDNN - Efficient Primitives for Deep Learning
authors:
- Sharan Chetlur
- Cliff Woolley
- Philippe Vandermersch
- Jonathan M. Cohen
- J. Tran
- Bryan Catanzaro
- Evan Shelhamer
fieldsOfStudy:
- Computer Science
meta_key: 2014-cudnn-efficient-primitives-for-deep-learning
numCitedBy: 1419
reading_status: TBD
ref_count: 25
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/cuDNN:-Efficient-Primitives-for-Deep-Learning-Chetlur-Woolley/31c36d445367ba204244bb74893c5654e31c3869?sort=total-citations
venue: ArXiv
year: 2014
---

# cuDNN - Efficient Primitives for Deep Learning

## Abstract

We present a library that provides optimized implementations for deep learning primitives. Deep learning workloads are computationally intensive, and optimizing the kernels of deep learning workloads is difficult and time-consuming. As parallel architectures evolve, kernels must be reoptimized for new processors, which makes maintaining codebases difficult over time. Similar issues have long been addressed in the HPC community by libraries such as the Basic Linear Algebra Subroutines (BLAS) [2]. However, there is no analogous library for deep learning. Without such a library, researchers implementing deep learning workloads on parallel processors must create and optimize their own implementations of the main computational kernels, and this work must be repeated as new parallel processors emerge. To address this problem, we have created a library similar in intent to BLAS, with optimized routines for deep learning workloads. Our implementation contains routines for GPUs, and similarly to the BLAS library, could be implemented for other platforms. The library is easy to integrate into existing frameworks, and provides optimized performance and memory usage. For example, integrating cuDNN into Caffe, a popular framework for convolutional networks, improves performance by 36% on a standard model while also reducing memory consumption.

## Paper References

1. Deep learning with COTS HPC systems
2. Fast implementation of DGEMM on Fermi GPU
3. Fast Training of Convolutional Networks through FFTs
4. [Caffe - Convolutional Architecture for Fast Feature Embedding](2014-caffe-convolutional-architecture-for-fast-feature-embedding.md)
5. High Performance Convolutional Neural Networks for Document Processing
6. [Torch7 - A Matlab-like Environment for Machine Learning](2011-torch7-a-matlab-like-environment-for-machine-learning.md)
7. [ImageNet classification with deep convolutional neural networks](2012-imagenet-classification-with-deep-convolutional-neural-networks.md)
8. [Going deeper with convolutions](2015-going-deeper-with-convolutions.md)
9. [Gradient-based learning applied to document recognition](1998-gradient-based-learning-applied-to-document-recognition.md)
10. Unsupervised Feature Learning and Deep Learning - A Review and New Perspectives
11. [OverFeat - Integrated Recognition, Localization and Detection using Convolutional Networks](2014-overfeat-integrated-recognition-localization-and-detection-using-convolutional-networks.md)
12. Hacker's Delight
13. [Context-Dependent Pre-Trained Deep Neural Networks for Large-Vocabulary Speech Recognition](2012-context-dependent-pre-trained-deep-neural-networks-for-large-vocabulary-speech-recognition.md)
14. First-Pass Large Vocabulary Continuous Speech Recognition using Bi-Directional Recurrent DNNs
15. [ImageNet Large Scale Visual Recognition Challenge](2015-imagenet-large-scale-visual-recognition-challenge.md)
16. [Deep Neural Networks for Acoustic Modeling in Speech Recognition - The Shared Views of Four Research Groups](2012-deep-neural-networks-for-acoustic-modeling-in-speech-recognition-the-shared-views-of-four-research-groups.md)
