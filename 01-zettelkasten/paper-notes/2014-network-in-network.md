---
title: Network In Network
authors:
- Min Lin
- Qiang Chen
- Shuicheng Yan
fieldsOfStudy:
- Computer Science
meta_key: 2014-network-in-network
numCitedBy: 4232
reading_status: TBD
ref_count: 20
tags:
- gen-from-ref
- other-default
- paper
venue: ICLR
year: 2014
---

# Network In Network

## Abstract

We propose a novel deep network structure called "Network In Network" (NIN) to enhance model discriminability for local patches within the receptive field. The conventional convolutional layer uses linear filters followed by a nonlinear activation function to scan the input. Instead, we build micro neural networks with more complex structures to abstract the data within the receptive field. We instantiate the micro neural network with a multilayer perceptron, which is a potent function approximator. The feature maps are obtained by sliding the micro networks over the input in a similar manner as CNN; they are then fed into the next layer. Deep NIN can be implemented by stacking mutiple of the above described structure. With enhanced local modeling via the micro network, we are able to utilize global average pooling over feature maps in the classification layer, which is easier to interpret and less prone to overfitting than traditional fully connected layers. We demonstrated the state-of-the-art classification performances with NIN on CIFAR-10 and CIFAR-100, and reasonable performances on SVHN and MNIST datasets.

## Paper References

1. [ImageNet classification with deep convolutional neural networks](2012-imagenet-classification-with-deep-convolutional-neural-networks)
2. Learnable Pooling Regions for Image Classification
3. [Learning Multiple Layers of Features from Tiny Images](2009-learning-multiple-layers-of-features-from-tiny-images)
4. Discriminative Transfer Learning with Tree-based Priors
5. [Visualizing and Understanding Convolutional Networks](2014-visualizing-and-understanding-convolutional-networks)
6. Stochastic Pooling for Regularization of Deep Convolutional Neural Networks
7. Improving Neural Networks with Dropout
8. Knowledge Matters - Importance of Prior Information for Optimization
9. Multi-digit Number Recognition from Street View Imagery using Deep Convolutional Neural Networks
10. [Regularization of Neural Networks using DropConnect](2013-regularization-of-neural-networks-using-dropconnect)
11. [Improving neural networks by preventing co-adaptation of feature detectors](2012-improving-neural-networks-by-preventing-co-adaptation-of-feature-detectors)
12. ICA with Reconstruction Cost for Efficient Overcomplete Feature Learning
13. [Gradient-based learning applied to document recognition](1998-lenet5.md)
14. [Representation Learning - A Review and New Perspectives](2013-representation-learning-a-review-and-new-perspectives)
15. Human Face Detection in Visual Scenes
16. [Reading Digits in Natural Images with Unsupervised Feature Learning](2011-reading-digits-in-natural-images-with-unsupervised-feature-learning)
17. [Practical Bayesian Optimization of Machine Learning Algorithms](2012-practical-bayesian-optimization-of-machine-learning-algorithms)
18. PRINCIPLES OF NEURODYNAMICS. PERCEPTRONS AND THE THEORY OF BRAIN MECHANISMS
19. Piecewise Linear Multilayer Perceptrons and Dropout
20. [Learning Hierarchical Features for Scene Labeling](2013-learning-hierarchical-features-for-scene-labeling)
