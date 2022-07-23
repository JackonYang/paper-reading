---
title: Distilling the Knowledge in a Neural Network
authors:
- Geoffrey E. Hinton
- Oriol Vinyals
- J. Dean
fieldsOfStudy:
- Computer Science
meta_key: 2015-distilling-the-knowledge-in-a-neural-network
numCitedBy: 8901
reading_status: TBD
ref_count: 14
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Distilling-the-Knowledge-in-a-Neural-Network-Hinton-Vinyals/0c908739fbff75f03469d13d4a1a07de3414ee19?sort=total-citations
venue: ArXiv
year: 2015
---

[semanticscholar url](https://www.semanticscholar.org/paper/Distilling-the-Knowledge-in-a-Neural-Network-Hinton-Vinyals/0c908739fbff75f03469d13d4a1a07de3414ee19?sort=total-citations)

# Distilling the Knowledge in a Neural Network

## Abstract

A very simple way to improve the performance of almost any machine learning algorithm is to train many different models on the same data and then to average their predictions. Unfortunately, making predictions using a whole ensemble of models is cumbersome and may be too computationally expensive to allow deployment to a large number of users, especially if the individual models are large neural nets. Caruana and his collaborators have shown that it is possible to compress the knowledge in an ensemble into a single model which is much easier to deploy and we develop this approach further using a different compression technique. We achieve some surprising results on MNIST and we show that we can significantly improve the acoustic model of a heavily used commercial system by distilling the knowledge in an ensemble of models into a single model. We also introduce a new type of ensemble composed of one or more full models and many specialist models which learn to distinguish fine-grained classes that the full models confuse. Unlike a mixture of experts, these specialist models can be trained rapidly and in parallel.

## Paper References

1. [Dropout - a simple way to prevent neural networks from overfitting](2014-dropout-a-simple-way-to-prevent-neural-networks-from-overfitting.md)
2. Learning small-size DNN with output-distribution-based criteria
3. [ImageNet classification with deep convolutional neural networks](2012-imagenet-classification-with-deep-convolutional-neural-networks.md)
4. [Improving neural networks by preventing co-adaptation of feature detectors](2012-improving-neural-networks-by-preventing-co-adaptation-of-feature-detectors.md)
5. [Large Scale Distributed Deep Networks](2012-large-scale-distributed-deep-networks.md)
6. Model compression
7. Adaptive Mixtures of Local Experts
8. [Deep Neural Networks for Acoustic Modeling in Speech Recognition - The Shared Views of Four Research Groups](2012-deep-neural-networks-for-acoustic-modeling-in-speech-recognition-the-shared-views-of-four-research-groups.md)
9. Ensemble Methods in Machine Learning
