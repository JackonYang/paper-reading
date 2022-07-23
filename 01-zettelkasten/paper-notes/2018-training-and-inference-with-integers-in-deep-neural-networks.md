---
title: Training and Inference with Integers in Deep Neural Networks
authors:
- Shuang Wu
- Guoqi Li
- F. Chen
- Luping Shi
fieldsOfStudy:
- Computer Science
meta_key: 2018-training-and-inference-with-integers-in-deep-neural-networks
numCitedBy: 262
reading_status: TBD
ref_count: 31
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Training-and-Inference-with-Integers-in-Deep-Neural-Wu-Li/acdf151b8efc2c6b05662d69f27531afc557dc85?sort=total-citations
venue: ICLR
year: 2018
---

[semanticscholar url](https://www.semanticscholar.org/paper/Training-and-Inference-with-Integers-in-Deep-Neural-Wu-Li/acdf151b8efc2c6b05662d69f27531afc557dc85?sort=total-citations)

# Training and Inference with Integers in Deep Neural Networks

## Abstract

Researches on deep neural networks with discrete parameters and their deployment in embedded systems have been active and promising topics. Although previous works have successfully reduced precision in inference, transferring both training and inference processes to low-bitwidth integers has not been demonstrated simultaneously. In this work, we develop a new method termed as "WAGE" to discretize both training and inference, where weights (W), activations (A), gradients (G) and errors (E) among layers are shifted and linearly constrained to low-bitwidth integers. To perform pure discrete dataflow for fixed-point devices, we further replace batch normalization by a constant scaling layer and simplify other components that are arduous for integer implementation. Improved accuracies can be obtained on multiple datasets, which indicates that WAGE somehow acts as a type of regularization. Empirically, we demonstrate the potential to deploy training in hardware systems such as integer-based deep learning accelerators and neuromorphic chips with comparable accuracy and higher energy efficiency, which is crucial to future AI applications in variable scenarios with transfer and continual learning demands.

## Paper References

1. [BinaryConnect - Training Deep Neural Networks with binary weights during propagations](2015-binaryconnect-training-deep-neural-networks-with-binary-weights-during-propagations.md)
2. GXNOR-Net - Training deep neural networks with ternary weights and activations without full-precision memory under a unified discretization framework
3. Convolutional Neural Networks using Logarithmic Data Representation
4. [Trained Ternary Quantization](2017-trained-ternary-quantization.md)
5. Training Quantized Nets - A Deeper Understanding
6. How to Train a Compact Binary Neural Network with High Accuracy?
7. [Deep Compression - Compressing Deep Neural Network with Pruning, Trained Quantization and Huffman Coding](2016-deep-compression-compressing-deep-neural-network-with-pruning-trained-quantization-and-huffman-coding.md)
8. [Batch Normalization - Accelerating Deep Network Training by Reducing Internal Covariate Shift](2015-batch-normalization-accelerating-deep-network-training-by-reducing-internal-covariate-shift.md)
9. Binarized Neural Networks
10. [DoReFa-Net - Training Low Bitwidth Convolutional Neural Networks with Low Bitwidth Gradients](2016-dorefa-net-training-low-bitwidth-convolutional-neural-networks-with-low-bitwidth-gradients.md)
11. Incremental Network Quantization - Towards Lossless CNNs with Low-Precision Weights
12. [XNOR-Net - ImageNet Classification Using Binary Convolutional Neural Networks](2016-xnor-net-imagenet-classification-using-binary-convolutional-neural-networks.md)
13. Efficient Processing of Deep Neural Networks - A Tutorial and Survey
14. [ImageNet classification with deep convolutional neural networks](2012-imagenet-classification-with-deep-convolutional-neural-networks.md)
15. Understanding deep learning requires rethinking generalization
16. TernGrad - Ternary Gradients to Reduce Communication in Distributed Deep Learning
17. [Deeply-Supervised Nets](2015-deeply-supervised-nets.md)
18. [In-datacenter performance analysis of a tensor processing unit](2017-in-datacenter-performance-analysis-of-a-tensor-processing-unit.md)
19. [Delving Deep into Rectifiers - Surpassing Human-Level Performance on ImageNet Classification](2015-delving-deep-into-rectifiers-surpassing-human-level-performance-on-imagenet-classification.md)
20. [Very Deep Convolutional Networks for Large-Scale Image Recognition](2015-very-deep-convolutional-networks-for-large-scale-image-recognition.md)
21. Ternary Weight Networks
22. [Gradient-based learning applied to document recognition](1998-gradient-based-learning-applied-to-document-recognition.md)
23. Sparse coding with memristor networks.
24. [Mastering the game of Go with deep neural networks and tree search](2016-mastering-the-game-of-go-with-deep-neural-networks-and-tree-search.md)
25. [MobileNets - Efficient Convolutional Neural Networks for Mobile Vision Applications](2017-mobilenets-efficient-convolutional-neural-networks-for-mobile-vision-applications.md)
26. [Deep Neural Networks for Acoustic Modeling in Speech Recognition - The Shared Views of Four Research Groups](2012-deep-neural-networks-for-acoustic-modeling-in-speech-recognition-the-shared-views-of-four-research-groups.md)
27. Development of a neuromorphic computing system
28. [ImageNet Large Scale Visual Recognition Challenge](2015-imagenet-large-scale-visual-recognition-challenge.md)
29. Eyeriss - An Energy-Efficient Reconfigurable Accelerator for Deep Convolutional Neural Networks
