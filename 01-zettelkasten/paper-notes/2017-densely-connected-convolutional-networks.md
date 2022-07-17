---
title: Densely Connected Convolutional Networks
authors:
- Gao Huang
- Zhuang Liu
- Kilian Q. Weinberger
fieldsOfStudy:
- Computer Science
meta_key: 2017-densely-connected-convolutional-networks
numCitedBy: 18975
reading_status: TBD
ref_count: 58
tags:
- gen-from-ref
- other-default
- paper
venue: 2017 IEEE Conference on Computer Vision and Pattern Recognition (CVPR)
year: 2017
---

# Densely Connected Convolutional Networks

## Abstract

Recent work has shown that convolutional networks can be substantially deeper, more accurate, and efficient to train if they contain shorter connections between layers close to the input and those close to the output. In this paper, we embrace this observation and introduce the Dense Convolutional Network (DenseNet), which connects each layer to every other layer in a feed-forward fashion. Whereas traditional convolutional networks with L layers have L connections&#x2014;one between each layer and its subsequent layer&#x2014;our network has L(L+1)/2 direct connections. For each layer, the feature-maps of all preceding layers are used as inputs, and its own feature-maps are used as inputs into all subsequent layers. DenseNets have several compelling advantages: they alleviate the vanishing-gradient problem, strengthen feature propagation, encourage feature reuse, and substantially reduce the number of parameters. We evaluate our proposed architecture on four highly competitive object recognition benchmark tasks (CIFAR-10, CIFAR-100, SVHN, and ImageNet). DenseNets obtain significant improvements over the state-of-the-art on most of them, whilst requiring less memory and computation to achieve high performance. Code and pre-trained models are available at https://github.com/liuzhuang13/DenseNet.

## Paper References

1. [Striving for Simplicity - The All Convolutional Net](2015-striving-for-simplicity-the-all-convolutional-net)
2. [Network In Network](2014-network-in-network)
3. [ImageNet classification with deep convolutional neural networks](2012-imagenet-classification-with-deep-convolutional-neural-networks)
4. [Fully Convolutional Networks for Semantic Segmentation](2017-fully-convolutional-networks-for-semantic-segmentation)
5. Deep Networks with Stochastic Depth
6. Wide Residual Networks
7. [Deep Residual Learning for Image Recognition](2016-deep-residual-learning-for-image-recognition)
8. [Deeply-Supervised Nets](2015-deeply-supervised-nets)
9. Deeply-Fused Nets
10. Augmenting Supervised Neural Networks with Unsupervised Objectives for Large-scale Image Classification
11. [Learning Multiple Layers of Features from Tiny Images](2009-learning-multiple-layers-of-features-from-tiny-images)
12. FitNets - Hints for Thin Deep Nets
13. Multi-scale Recognition with DAG-CNNs
14. [Rethinking the Inception Architecture for Computer Vision](2016-rethinking-the-inception-architecture-for-computer-vision)
15. [Batch Normalization - Accelerating Deep Network Training by Reducing Internal Covariate Shift](2015-batch-normalization-accelerating-deep-network-training-by-reducing-internal-covariate-shift)
16. [Going deeper with convolutions](2015-going-deeper-with-convolutions)
17. [Identity Mappings in Deep Residual Networks](2016-identity-mappings-in-deep-residual-networks)
18. Memory-Efficient Implementation of DenseNets
19. [Training Very Deep Networks](2015-training-very-deep-networks)
20. [On the importance of initialization and momentum in deep learning](2013-on-the-importance-of-initialization-and-momentum-in-deep-learning)
21. The Cascade-Correlation Learning Architecture
22. [Delving Deep into Rectifiers - Surpassing Human-Level Performance on ImageNet Classification](2015-delving-deep-into-rectifiers-surpassing-human-level-performance-on-imagenet-classification)
23. [Hypercolumns for object segmentation and fine-grained localization](2015-hypercolumns-for-object-segmentation-and-fine-grained-localization)
24. [Dropout - a simple way to prevent neural networks from overfitting](2014-dropout-a-simple-way-to-prevent-neural-networks-from-overfitting)
25. Bridging the Gaps Between Residual Learning, Recurrent Neural Networks and Visual Cortex
26. Deconstructing the Ladder Network Architecture
27. FractalNet - Ultra-Deep Neural Networks without Residuals
28. Semi-supervised Learning with Ladder Networks
29. Convolutional neural networks applied to house numbers digit classification
30. Deep Manifold Traversal - Changing Labels with Convolutional Features
31. Resnet in Resnet - Generalizing Residual Architectures
32. [Gradient-based learning applied to document recognition](1998-gradient-based-learning-applied-to-document-recognition)
33. [GradientBased Learning Applied to Document Recognition](2001-gradientbased-learning-applied-to-document-recognition)
34. Pedestrian Detection with Unsupervised Multi-stage Feature Learning
35. [Reading Digits in Natural Images with Unsupervised Feature Learning](2011-reading-digits-in-natural-images-with-unsupervised-feature-learning)
36. [Maxout Networks](2013-maxout-networks)
37. AdaNet - Adaptive Structural Learning of Artificial Neural Networks
38. [ImageNet Large Scale Visual Recognition Challenge](2015-imagenet-large-scale-visual-recognition-challenge)
39. A Neural Algorithm of Artistic Style
40. [ImageNet - A large-scale hierarchical image database](2009-imagenet-a-large-scale-hierarchical-image-database)
41. Backpropagation Applied to Handwritten Zip Code Recognition
42. Neural Network Learning Without Backpropagation
43. [Deep Sparse Rectifier Neural Networks](2011-deep-sparse-rectifier-neural-networks)
44. [Torch7 - A Matlab-like Environment for Machine Learning](2011-torch7-a-matlab-like-environment-for-machine-learning)
45. Et al
