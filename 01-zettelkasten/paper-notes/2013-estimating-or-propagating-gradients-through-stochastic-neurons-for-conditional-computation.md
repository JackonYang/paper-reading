---
title: Estimating or Propagating Gradients Through Stochastic Neurons for Conditional Computation
authors:
- Yoshua Bengio
- Nicholas Léonard
- Aaron C. Courville
fieldsOfStudy:
- Computer Science
meta_key: 2013-estimating-or-propagating-gradients-through-stochastic-neurons-for-conditional-computation
numCitedBy: 1534
reading_status: TBD
ref_count: 21
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Estimating-or-Propagating-Gradients-Through-Neurons-Bengio-Léonard/62c76ca0b2790c34e85ba1cce09d47be317c7235?sort=total-citations
venue: ArXiv
year: 2013
---

# Estimating or Propagating Gradients Through Stochastic Neurons for Conditional Computation

## Abstract

Stochastic neurons and hard non-linearities can be useful for a number of reasons in deep learning models, but in many cases they pose a challenging problem: how to estimate the gradient of a loss function with respect to the input of such stochastic or non-smooth neurons? I.e., can we "back-propagate" through these stochastic neurons? We examine this question, existing approaches, and compare four families of solutions, applicable in different settings. One of them is the minimum variance unbiased gradient estimator for stochatic binary neurons (a special case of the REINFORCE algorithm). A second approach, introduced here, decomposes the operation of a binary stochastic neuron into a stochastic binary part and a smooth differentiable part, which approximates the expected effect of the pure stochatic binary neuron to first order. A third approach involves the injection of additive or multiplicative noise in a computational graph that is otherwise differentiable. A fourth approach heuristically copies the gradient with respect to the stochastic output directly as an estimator of the gradient with respect to the sigmoid argument (we call this the straight-through estimator). To explore a context where these estimators are useful, we consider a small-scale version of {\em conditional computation}, where sparse stochastic units form a distributed representation of gaters that can turn off in combinatorially many ways large chunks of the computation performed in the rest of the neural network. In this case, it is important that the gating units produce an actual 0 most of the time. The resulting sparsity can be potentially be exploited to greatly reduce the computational cost of large deep networks for which conditional computation would be useful.

## Paper References

1. [Simple statistical gradient-following algorithms for connectionist reinforcement learning](2004-simple-statistical-gradient-following-algorithms-for-connectionist-reinforcement-learning.md)
2. Learning representations by back-propagating errors
3. The Optimal Reward Baseline for Gradient-Based Reinforcement Learning
4. [Extracting and composing robust features with denoising autoencoders](2008-extracting-and-composing-robust-features-with-denoising-autoencoders.md)
5. Unsupervised Feature Learning and Deep Learning - A Review and New Perspectives
6. [Improving neural networks by preventing co-adaptation of feature detectors](2012-improving-neural-networks-by-preventing-co-adaptation-of-feature-detectors.md)
7. Gradient learning in spiking neural networks by dynamic perturbation of conductances.
8. [ImageNet classification with deep convolutional neural networks](2012-imagenet-classification-with-deep-convolutional-neural-networks.md)
9. Deep Learning of Representations - Looking Forward
10. [Maxout Networks](2013-maxout-networks.md)
11. Learning representations by backpropagating errors
12. [Rectified Linear Units Improve Restricted Boltzmann Machines](2010-rectified-linear-units-improve-restricted-boltzmann-machines.md)
13. Hierarchical Recurrent Neural Networks for Long-Term Dependencies
14. Multivariate stochastic approximation using a simultaneous perturbation gradient approximation
15. [Deep Sparse Rectifier Neural Networks](2011-deep-sparse-rectifier-neural-networks.md)
16. Semantic hashing
17. Neural Networks in Machine Learning
