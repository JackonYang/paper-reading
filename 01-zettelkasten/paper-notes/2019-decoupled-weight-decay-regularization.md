---
title: Decoupled Weight Decay Regularization
authors:
- I. Loshchilov
- F. Hutter
fieldsOfStudy:
- Computer Science
meta_key: 2019-decoupled-weight-decay-regularization
numCitedBy: 3608
reading_status: TBD
ref_count: 33
tags:
- gen-from-ref
- other-default
- paper
venue: ICLR
year: 2019
---

# Decoupled Weight Decay Regularization

## Abstract

L$_2$ regularization and weight decay regularization are equivalent for standard stochastic gradient descent (when rescaled by the learning rate), but as we demonstrate this is \emph{not} the case for adaptive gradient algorithms, such as Adam. While common implementations of these algorithms employ L$_2$ regularization (often calling it "weight decay" in what may be misleading due to the inequivalence we expose), we propose a simple modification to recover the original formulation of weight decay regularization by \emph{decoupling} the weight decay from the optimization steps taken w.r.t. the loss function. We provide empirical evidence that our proposed modification (i) decouples the optimal choice of weight decay factor from the setting of the learning rate for both standard SGD and Adam and (ii) substantially improves Adam's generalization performance, allowing it to compete with SGD with momentum on image classification datasets (on which it was previously typically outperformed by the latter). Our proposed decoupled weight decay has already been adopted by many researchers, and the community has implemented it in TensorFlow and PyTorch; the complete source code for our experiments is available at this https URL

## Paper References

1. Three Mechanisms of Weight Decay Regularization
2. Normalized Direction-preserving Adam
3. [Adam - A Method for Stochastic Optimization](2015-adam-a-method-for-stochastic-optimization)
4. [Weight Normalization - A Simple Reparameterization to Accelerate Training of Deep Neural Networks](2016-weight-normalization-a-simple-reparameterization-to-accelerate-training-of-deep-neural-networks)
5. The Marginal Value of Adaptive Gradient Methods in Machine Learning
6. A unified theory of adaptive stochastic gradient descent as Bayesian filtering
7. On Large-Batch Training for Deep Learning - Generalization Gap and Sharp Minima
8. [Adaptive Subgradient Methods for Online Learning and Stochastic Optimization](2010-adaptive-subgradient-methods-for-online-learning-and-stochastic-optimization)
9. Snapshot Ensembles - Train 1, get M for free
10. Sharp Minima Can Generalize For Deep Nets
11. Optimizing Neural Networks with Kronecker-factored Approximate Curvature
12. Cyclical Learning Rates for Training Neural Networks
13. Visualizing the Loss Landscape of Neural Nets
14. SGDR - Stochastic Gradient Descent with Warm Restarts
15. AutoAugment - Learning Augmentation Policies from Data
16. High-dimensional dynamics of generalization error in neural networks
17. Shake-Shake regularization
18. [Attention is All you Need](2017-attention-is-all-you-need.md)
19. Beyond Convexity - Stochastic Quasi-Convex Optimization
20. [Densely Connected Convolutional Networks](2017-densely-connected-convolutional-networks)
21. [Learning Multiple Layers of Features from Tiny Images](2009-learning-multiple-layers-of-features-from-tiny-images)
22. Unsupervised Representation Learning with Deep Convolutional Generative Adversarial Networks
23. A Downsampled Variant of ImageNet as an Alternative to the CIFAR datasets
24. Learning Transferable Architectures for Scalable Image Recognition
25. Comparing Biases for Minimal Network Construction with Back-Propagation
26. [Show, Attend and Tell - Neural Image Caption Generation with Visual Attention](2015-show-attend-and-tell-neural-image-caption-generation-with-visual-attention)
27. Intracranial Error Detection via Deep Learning
28. [DRAW - A Recurrent Neural Network For Image Generation](2015-draw-a-recurrent-neural-network-for-image-generation)
29. SFace - An Efficient Network for Face Detection in Large Scale Variations
30. Generalization in Deep Learning
31. WIDER FACE - A Face Detection Benchmark
32. On the Convergence of Adam and Beyond
