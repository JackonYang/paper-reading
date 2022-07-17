---
title: Regularization of Neural Networks using DropConnect
authors:
- Li Wan
- Matthew D. Zeiler
- Sixin Zhang
- Yann LeCun
- R. Fergus
fieldsOfStudy:
- Computer Science
meta_key: 2013-regularization-of-neural-networks-using-dropconnect
numCitedBy: 2101
reading_status: TBD
ref_count: 15
tags:
- gen-from-ref
- paper
venue: ICML
year: 2013
---

# Regularization of Neural Networks using DropConnect

## Abstract

We introduce DropConnect, a generalization of Dropout (Hinton et al., 2012), for regularizing large fully-connected layers within neural networks. When training with Dropout, a randomly selected subset of activations are set to zero within each layer. DropConnect instead sets a randomly selected subset of weights within the network to zero. Each unit thus receives input from a random subset of units in the previous layer. We derive a bound on the generalization performance of both Dropout and DropConnect. We then evaluate DropConnect on a range of datasets, comparing to Dropout, and show state-of-the-art results on several image recognition benchmarks by aggregating multiple DropConnect-trained models.

## Paper References

1. Stochastic Pooling for Regularization of Deep Convolutional Neural Networks
2. [Improving neural networks by preventing co-adaptation of feature detectors](2012-improving-neural-networks-by-preventing-co-adaptation-of-feature-detectors)
3. [Learning Multiple Layers of Features from Tiny Images](2009-learning-multiple-layers-of-features-from-tiny-images)
4. [Multi-column deep neural networks for image classification](2012-multi-column-deep-neural-networks-for-image-classification)
5. [Rectified Linear Units Improve Restricted Boltzmann Machines](2010-rectified-linear-units-improve-restricted-boltzmann-machines)
6. [Gradient-based learning applied to document recognition](1998-gradient-based-learning-applied-to-document-recognition)
7. Probable networks and plausible predictions - a review of practical Bayesian methods for supervised neural networks
8. Empirical margin distributions and bounding the generalization error of combined classifiers
9. [Practical Bayesian Optimization of Machine Learning Algorithms](2012-practical-bayesian-optimization-of-machine-learning-algorithms)
10. [Reading Digits in Natural Images with Unsupervised Feature Learning](2011-reading-digits-in-natural-images-with-unsupervised-feature-learning)
11. Generalization by Weight-Elimination with Application to Forecasting
12. Learning methods for generic object recognition with invariance to pose and lighting
13. Probability on Banach spaces
