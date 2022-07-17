---
title: Improving deep neural networks for LVCSR using rectified linear units and dropout
authors:
- George E. Dahl
- T. Sainath
- Geoffrey E. Hinton
fieldsOfStudy:
- Computer Science
meta_key: 2013-improving-deep-neural-networks-for-lvcsr-using-rectified-linear-units-and-dropout
numCitedBy: 1183
reading_status: TBD
ref_count: 20
tags:
- gen-from-ref
- paper
venue: 2013 IEEE International Conference on Acoustics, Speech and Signal Processing
year: 2013
---

# Improving deep neural networks for LVCSR using rectified linear units and dropout

## Abstract

Recently, pre-trained deep neural networks (DNNs) have outperformed traditional acoustic models based on Gaussian mixture models (GMMs) on a variety of large vocabulary speech recognition benchmarks. Deep neural nets have also achieved excellent results on various computer vision tasks using a random “dropout” procedure that drastically improves generalization error by randomly omitting a fraction of the hidden units in all layers. Since dropout helps avoid over-fitting, it has also been successful on a small-scale phone recognition task using larger neural nets. However, training deep neural net acoustic models for large vocabulary speech recognition takes a very long time and dropout is likely to only increase training time. Neural networks with rectified linear unit (ReLU) non-linearities have been highly successful for computer vision tasks and proved faster to train than standard sigmoid units, sometimes also improving discriminative performance. In this work, we show on a 50-hour English Broadcast News task that modified deep neural networks using ReLUs trained with dropout during frame level training provide an 4.2% relative improvement over a DNN trained with sigmoid units, and a 14.4% relative improvement over a strong GMM/HMM system. We were able to obtain our results with minimal human hyper-parameter tuning using publicly available Bayesian optimization code.

## Paper References

1. [Context-Dependent Pre-Trained Deep Neural Networks for Large-Vocabulary Speech Recognition](2012-context-dependent-pre-trained-deep-neural-networks-for-large-vocabulary-speech-recognition)
2. [Deep Neural Networks for Acoustic Modeling in Speech Recognition](2012-deep-neural-networks-for-acoustic-modeling-in-speech-recognition)
3. [Deep Neural Networks for Acoustic Modeling in Speech Recognition - The Shared Views of Four Research Groups](2012-deep-neural-networks-for-acoustic-modeling-in-speech-recognition-the-shared-views-of-four-research-groups)
4. Making Deep Belief Networks effective for large vocabulary continuous speech recognition
5. [Acoustic Modeling Using Deep Belief Networks](2012-acoustic-modeling-using-deep-belief-networks)
6. Auto-encoder bottleneck features using deep belief networks
7. [ImageNet classification with deep convolutional neural networks](2012-imagenet-classification-with-deep-convolutional-neural-networks)
8. [Improving neural networks by preventing co-adaptation of feature detectors](2012-improving-neural-networks-by-preventing-co-adaptation-of-feature-detectors)
9. Learning a better representation of speech soundwaves using restricted boltzmann machines
10. [Extracting and composing robust features with denoising autoencoders](2008-extracting-and-composing-robust-features-with-denoising-autoencoders)
11. [Rectified Linear Units Improve Restricted Boltzmann Machines](2010-rectified-linear-units-improve-restricted-boltzmann-machines)
12. What is the best multi-stage architecture for object recognition?
13. [Practical Bayesian Optimization of Machine Learning Algorithms](2012-practical-bayesian-optimization-of-machine-learning-algorithms)
14. The IBM Attila speech recognition toolkit
15. CUDAMat - a CUDA-based matrix class for Python
16. Scalable Minimum Bayes Risk Training of Deep Neural Network Acoustic Models Using Distributed Hessian-free Optimization
