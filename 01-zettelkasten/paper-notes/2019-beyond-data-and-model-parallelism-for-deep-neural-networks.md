---
title: Beyond Data and Model Parallelism for Deep Neural Networks
authors:
- Zhihao Jia
- M. Zaharia
- A. Aiken
fieldsOfStudy:
- Computer Science
meta_key: 2019-beyond-data-and-model-parallelism-for-deep-neural-networks
numCitedBy: 233
reading_status: TBD
ref_count: 48
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Beyond-Data-and-Model-Parallelism-for-Deep-Neural-Jia-Zaharia/f971658ab845d7573c4bbb760d5e7e5332025254?sort=total-citations
venue: MLSys
year: 2019
---

# Beyond Data and Model Parallelism for Deep Neural Networks

## Abstract

The computational requirements for training deep neural networks (DNNs) have grown to the point that it is now standard practice to parallelize training. Existing deep learning systems commonly use data or model parallelism, but unfortunately, these strategies often result in suboptimal parallelization performance. 
In this paper, we define a more comprehensive search space of parallelization strategies for DNNs called SOAP, which includes strategies to parallelize a DNN in the Sample, Operation, Attribute, and Parameter dimensions. We also propose FlexFlow, a deep learning framework that uses guided randomized search of the SOAP space to find a fast parallelization strategy for a specific parallel machine. To accelerate this search, FlexFlow introduces a novel execution simulator that can accurately predict a parallelization strategy's performance and is three orders of magnitude faster than prior approaches that have to execute each strategy. We evaluate FlexFlow with six real-world DNN benchmarks on two GPU clusters and show that FlexFlow can increase training throughput by up to 3.8x over state-of-the-art approaches, even when including its search time, and also improves scalability.

## Paper References

1. Exploring Hidden Dimensions in Parallelizing Convolutional Neural Networks
2. [Large Scale Distributed Deep Networks](2012-large-scale-distributed-deep-networks.md)
3. [cuDNN - Efficient Primitives for Deep Learning](2014-cudnn-efficient-primitives-for-deep-learning.md)
4. [Device Placement Optimization with Reinforcement Learning](2017-device-placement-optimization-with-reinforcement-learning.md)
5. [TensorFlow - A system for large-scale machine learning](2016-tensorflow-a-system-for-large-scale-machine-learning.md)
6. [MXNet - A Flexible and Efficient Machine Learning Library for Heterogeneous Distributed Systems](2015-mxnet-a-flexible-and-efficient-machine-learning-library-for-heterogeneous-distributed-systems.md)
7. [Accurate, Large Minibatch SGD - Training ImageNet in 1 Hour](2017-accurate-large-minibatch-sgd-training-imagenet-in-1-hour.md)
8. [Rethinking the Inception Architecture for Computer Vision](2016-rethinking-the-inception-architecture-for-computer-vision.md)
9. A Hierarchical Model for Device Placement
10. [Deep Residual Learning for Image Recognition](2016-deep-residual-learning-for-image-recognition.md)
11. [ImageNet classification with deep convolutional neural networks](2012-imagenet-classification-with-deep-convolutional-neural-networks.md)
12. [Deep Speech 2 - End-to-End Speech Recognition in English and Mandarin](2016-deep-speech-2-end-to-end-speech-recognition-in-english-and-mandarin.md)
13. [Densely Connected Convolutional Networks](2017-densely-connected-convolutional-networks.md)
14. [Google's Neural Machine Translation System - Bridging the Gap between Human and Machine Translation](2016-google-s-neural-machine-translation-system-bridging-the-gap-between-human-and-machine-translation.md)
15. One billion word benchmark for measuring progress in statistical language modeling
16. [Mastering the game of Go with deep neural networks and tree search](2016-mastering-the-game-of-go-with-deep-neural-networks-and-tree-search.md)
17. [Going deeper with convolutions](2015-going-deeper-with-convolutions.md)
18. Legion - Expressing locality and independence with logical regions
19. [Neural Machine Translation by Jointly Learning to Align and Translate](2015-neural-machine-translation-by-jointly-learning-to-align-and-translate.md)
20. [Very Deep Convolutional Networks for Large-Scale Image Recognition](2015-very-deep-convolutional-networks-for-large-scale-image-recognition.md)
21. One weird trick for parallelizing convolutional neural networks
22. Quincy - fair scheduling for distributed computing clusters
23. [Convolutional Neural Networks for Sentence Classification](2014-convolutional-neural-networks-for-sentence-classification.md)
24. Dependent partitioning
25. [Recurrent Neural Network Regularization](2014-recurrent-neural-network-regularization.md)
26. [Towards End-To-End Speech Recognition with Recurrent Neural Networks](2014-towards-end-to-end-speech-recognition-with-recurrent-neural-networks.md)
27. [ImageNet - A large-scale hierarchical image database](2009-imagenet-a-large-scale-hierarchical-image-database.md)
28. Firmament - Fast, Centralized Cluster Scheduling at Scale
29. Introduction to Algorithms, third edition
30. Worst Case Analysis of Two Scheduling Algorithms
31. [ImageNet Large Scale Visual Recognition Challenge](2015-imagenet-large-scale-visual-recognition-challenge.md)
32. Monte Carlo Sampling Methods Using Markov Chains and Their Applications
33. Building a Large Annotated Corpus of English - The Penn Treebank
34. Introduction to Algorithms
35. [Bleu - a Method for Automatic Evaluation of Machine Translation](2002-bleu-a-method-for-automatic-evaluation-of-machine-translation.md)
36. Et al
37. ‘G'
38. Markov chain Monte Carlo in Practice
