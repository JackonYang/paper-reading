---
title: BinaryConnect - Training Deep Neural Networks with binary weights during propagations
authors:
- Matthieu Courbariaux
- Yoshua Bengio
- J. David
fieldsOfStudy:
- Computer Science
meta_key: 2015-binaryconnect-training-deep-neural-networks-with-binary-weights-during-propagations
numCitedBy: 2134
reading_status: TBD
ref_count: 52
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/BinaryConnect:-Training-Deep-Neural-Networks-with-Courbariaux-Bengio/a5733ff08daff727af834345b9cfff1d0aa109ec?sort=total-citations
venue: NIPS
year: 2015
---

# BinaryConnect - Training Deep Neural Networks with binary weights during propagations

## Abstract

Deep Neural Networks (DNN) have achieved state-of-the-art results in a wide range of tasks, with the best results obtained with large training sets and large models. In the past, GPUs enabled these breakthroughs because of their greater computational speed. In the future, faster computation at both training and test time is likely to be crucial for further progress and for consumer applications on low-power devices. As a result, there is much interest in research and development of dedicated hardware for Deep Learning (DL). Binary weights, i.e., weights which are constrained to only two possible values (e.g. -1 or 1), would bring great benefits to specialized DL hardware by replacing many multiply-accumulate operations by simple accumulations, as multipliers are the most space and power-hungry components of the digital implementation of neural networks. We introduce BinaryConnect, a method which consists in training a DNN with binary weights during the forward and backward propagations, while retaining precision of the stored weights in which gradients are accumulated. Like other dropout schemes, we show that BinaryConnect acts as regularizer and we obtain near state-of-the-art results with BinaryConnect on the permutation-invariant MNIST, CIFAR-10 and SVHN.

## Paper References

1. Training deep neural networks with low precision multiplications
2. [ImageNet classification with deep convolutional neural networks](2012-imagenet-classification-with-deep-convolutional-neural-networks.md)
3. Low precision arithmetic for deep learning
4. [DaDianNao - A Machine-Learning Supercomputer](2014-dadiannao-a-machine-learning-supercomputer.md)
5. [DianNao - a small-footprint high-throughput accelerator for ubiquitous machine-learning](2014-diannao-a-small-footprint-high-throughput-accelerator-for-ubiquitous-machine-learning.md)
6. Fixed-point feedforward deep neural network design using weights +1, 0, and −1
7. [Deep Learning with Limited Numerical Precision](2015-deep-learning-with-limited-numerical-precision.md)
8. [Batch Normalization - Accelerating Deep Network Training by Reducing Internal Covariate Shift](2015-batch-normalization-accelerating-deep-network-training-by-reducing-internal-covariate-shift.md)
9. X1000 real-time phoneme recognition VLSI using feed-forward deep neural networks
10. A highly scalable Restricted Boltzmann Machine FPGA implementation
11. Spatially-sparse convolutional neural networks
12. Improving Neural Networks with Dropout
13. [Understanding the difficulty of training deep feedforward neural networks](2010-understanding-the-difficulty-of-training-deep-feedforward-neural-networks.md)
14. [Dropout - a simple way to prevent neural networks from overfitting](2014-dropout-a-simple-way-to-prevent-neural-networks-from-overfitting.md)
15. Rounding Methods for Neural Networks with Low Resolution Synaptic Weights
16. Deep Learning using Linear Support Vector Machines
17. [Network In Network](2014-network-in-network.md)
18. [Deep convolutional neural networks for LVCSR](2013-deep-convolutional-neural-networks-for-lvcsr.md)
19. [Deeply-Supervised Nets](2015-deeply-supervised-nets.md)
20. [Large Scale Distributed Deep Networks](2012-large-scale-distributed-deep-networks.md)
21. Training Binary Multilayer Neural Networks for Image Classification using Expectation Backpropagation
22. [Very Deep Convolutional Networks for Large-Scale Image Recognition](2015-very-deep-convolutional-networks-for-large-scale-image-recognition.md)
23. [Sequence to Sequence Learning with Neural Networks](2014-sequence-to-sequence-learning-with-neural-networks.md)
24. [Going deeper with convolutions](2015-going-deeper-with-convolutions.md)
25. [Gradient-based learning applied to document recognition](1998-gradient-based-learning-applied-to-document-recognition.md)
26. Large-scale deep unsupervised learning using graphics processors
27. [Regularization of Neural Networks using DropConnect](2013-regularization-of-neural-networks-using-dropconnect.md)
28. Expectation Backpropagation - Parameter-Free Training of Multilayer Neural Networks with Continuous or Discrete Weights
29. [Adam - A Method for Stochastic Optimization](2015-adam-a-method-for-stochastic-optimization.md)
30. [Deep Neural Networks for Acoustic Modeling in Speech Recognition](2012-deep-neural-networks-for-acoustic-modeling-in-speech-recognition.md)
31. [Neural Machine Translation by Jointly Learning to Align and Translate](2015-neural-machine-translation-by-jointly-learning-to-align-and-translate.md)
32. [Practical Variational Inference for Neural Networks](2011-practical-variational-inference-for-neural-networks.md)
33. [Maxout Networks](2013-maxout-networks.md)
34. [Rectified Linear Units Improve Restricted Boltzmann Machines](2010-rectified-linear-units-improve-restricted-boltzmann-machines.md)
35. [Theano - new features and speed improvements](2012-theano-new-features-and-speed-improvements.md)
36. A Neural Probabilistic Language Model
37. [Deep Sparse Rectifier Neural Networks](2011-deep-sparse-rectifier-neural-networks.md)
38. Fast and Robust Neural Network Joint Models for Statistical Machine Translation
39. Hardware Complexity of Modular Multiplication and Exponentiation
40. Hippocampal Spine Head Sizes Are Highly Precise
41. Expectation Propagation for approximate Bayesian inference
42. A method for unconstrained convex minimization problem with the rate of convergence o(1/k^2)
43. Lasagne - First release.
44. Pylearn2 - a machine learning research library
