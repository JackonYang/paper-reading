---
title: Batch Normalization - Accelerating Deep Network Training by Reducing Internal Covariate Shift
authors:
- S. Ioffe
- Christian Szegedy
fieldsOfStudy:
- Computer Science
meta_key: 2015-batch-normalization-accelerating-deep-network-training-by-reducing-internal-covariate-shift
numCitedBy: 29420
reading_status: TBD
ref_count: 33
tags:
- gen-from-ref
- paper
venue: ICML
year: 2015
---

# Batch Normalization - Accelerating Deep Network Training by Reducing Internal Covariate Shift

## Abstract

Training Deep Neural Networks is complicated by the fact that the distribution of each layer's inputs changes during training, as the parameters of the previous layers change. This slows down the training by requiring lower learning rates and careful parameter initialization, and makes it notoriously hard to train models with saturating nonlinearities. We refer to this phenomenon as internal covariate shift, and address the problem by normalizing layer inputs. Our method draws its strength from making normalization a part of the model architecture and performing the normalization for each training mini-batch. Batch Normalization allows us to use much higher learning rates and be less careful about initialization, and in some cases eliminates the need for Dropout. Applied to a state-of-the-art image classification model, Batch Normalization achieves the same accuracy with 14 times fewer training steps, and beats the original model by a significant margin. Using an ensemble of batch-normalized networks, we improve upon the best published result on ImageNet classification: reaching 4.82% top-5 test error, exceeding the accuracy of human raters.

## Paper References

1. Deep Learning Made Easier by Linear Transformations in Perceptrons
2. [On the importance of initialization and momentum in deep learning](2013-on-the-importance-of-initialization-and-momentum-in-deep-learning)
3. [Dropout - a simple way to prevent neural networks from overfitting](2014-dropout-a-simple-way-to-prevent-neural-networks-from-overfitting)
4. [Understanding the difficulty of training deep feedforward neural networks](2010-understanding-the-difficulty-of-training-deep-feedforward-neural-networks)
5. Parallel training of Deep Neural Networks with Natural Gradient and Parameter Averaging
6. Mean-normalized stochastic gradient for large-scale deep learning
7. Natural Neural Networks
8. [Delving Deep into Rectifiers - Surpassing Human-Level Performance on ImageNet Classification](2015-delving-deep-into-rectifiers-surpassing-human-level-performance-on-imagenet-classification)
9. Knowledge Matters - Importance of Prior Information for Optimization
10. [Large Scale Distributed Deep Networks](2012-large-scale-distributed-deep-networks)
11. [Exact solutions to the nonlinear dynamics of learning in deep linear neural networks](2014-exact-solutions-to-the-nonlinear-dynamics-of-learning-in-deep-linear-neural-networks)
12. [Going deeper with convolutions](2015-going-deeper-with-convolutions)
13. [GradientBased Learning Applied to Document Recognition](2001-gradientbased-learning-applied-to-document-recognition)
14. [Adaptive Subgradient Methods for Online Learning and Stochastic Optimization](2010-adaptive-subgradient-methods-for-online-learning-and-stochastic-optimization)
15. [Gradient-based learning applied to document recognition](1998-gradient-based-learning-applied-to-document-recognition)
16. [On the difficulty of training recurrent neural networks](2013-on-the-difficulty-of-training-recurrent-neural-networks)
17. [Rectified Linear Units Improve Restricted Boltzmann Machines](2010-rectified-linear-units-improve-restricted-boltzmann-machines)
18. A Literature Survey on Domain Adaptation of Statistical Classifiers
19. Improving predictive inference under covariate shift by weighting the log-likelihood function
20. Deep Image - Scaling up Image Recognition
21. Nonlinear image representation using divisive normalization
22. Independent component analysis - algorithms and applications
23. [ImageNet Large Scale Visual Recognition Challenge](2015-imagenet-large-scale-visual-recognition-challenge)
24. Critical Points of the Singular Value Decomposition
25. [Efficient BackProp](2012-efficient-backprop)
26. A Convergence Analysis of Log-Linear Training
