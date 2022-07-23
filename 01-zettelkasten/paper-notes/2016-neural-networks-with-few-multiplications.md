---
title: Neural Networks with Few Multiplications
authors:
- Zhouhan Lin
- Matthieu Courbariaux
- R. Memisevic
- Yoshua Bengio
fieldsOfStudy:
- Computer Science
meta_key: 2016-neural-networks-with-few-multiplications
numCitedBy: 280
reading_status: TBD
ref_count: 21
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Neural-Networks-with-Few-Multiplications-Lin-Courbariaux/67c191bcce6821f736798cb9b31472bcdd1e52a6?sort=total-citations
venue: ICLR
year: 2016
---

# Neural Networks with Few Multiplications

## Abstract

For most deep learning algorithms training is notoriously time consuming. Since most of the computation in training neural networks is typically spent on floating point multiplications, we investigate an approach to training that eliminates the need for most of these. Our method consists of two parts: First we stochastically binarize weights to convert multiplications involved in computing hidden states to sign changes. Second, while back-propagating error derivatives, in addition to binarizing the weights, we quantize the representations at each layer to convert the remaining multiplications into binary shifts. Experimental results across 3 popular datasets (MNIST, CIFAR10, SVHN) show that this approach not only does not hurt classification performance but can result in even better performance than standard stochastic gradient descent training, paving the way to fast, hardware-friendly training of neural networks.

## Paper References

1. [BinaryConnect - Training Deep Neural Networks with binary weights during propagations](2015-binaryconnect-training-deep-neural-networks-with-binary-weights-during-propagations.md)
2. [Bitwise Neural Networks](2016-bitwise-neural-networks.md)
3. Backpropagation without Multiplication
4. Adding Gradient Noise Improves Learning for Very Deep Networks
5. Fast neural networks without multipliers
6. [ImageNet classification with deep convolutional neural networks](2012-imagenet-classification-with-deep-convolutional-neural-networks.md)
7. Computational Cost Reduction in Learned Transform Classifications
8. Training Binary Multilayer Neural Networks for Image Classification using Expectation Backpropagation
9. [Learning Multiple Layers of Features from Tiny Images](2009-learning-multiple-layers-of-features-from-tiny-images.md)
10. [Gradient-based learning applied to document recognition](1998-gradient-based-learning-applied-to-document-recognition.md)
11. [Building high-level features using large scale unsupervised learning](2013-building-high-level-features-using-large-scale-unsupervised-learning.md)
12. [Reading Digits in Natural Images with Unsupervised Feature Learning](2011-reading-digits-in-natural-images-with-unsupervised-feature-learning.md)
13. [Theano - new features and speed improvements](2012-theano-new-features-and-speed-improvements.md)
14. On Using Monolingual Corpora in Neural Machine Translation
15. Multiplierless multilayer feedforward neural network design suitable for continuous input-output mapping
16. Generating binary sequences for stochastic computing
17. A Device for Generating Binary Sequences for Stochastic Computing
18. [Published as a conference paper at ICLR 2018 S IMULATING A CTION D YNAMICS WITH N EURAL P ROCESS N ETWORKS](2018-published-as-a-conference-paper-at-iclr-2018-s-imulating-a-ction-d-ynamics-with-n-eural-p-rocess-n-etworks.md)
