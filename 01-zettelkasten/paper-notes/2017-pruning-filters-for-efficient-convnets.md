---
title: Pruning Filters for Efficient ConvNets
authors:
- Hao Li
- Asim Kadav
- Igor Durdanovic
- H. Samet
- H. Graf
fieldsOfStudy:
- Computer Science
meta_key: 2017-pruning-filters-for-efficient-convnets
numCitedBy: 2180
reading_status: TBD
ref_count: 49
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Pruning-Filters-for-Efficient-ConvNets-Li-Kadav/c2a1cb1612ba21e067a5c3ba478a8d73b796b77a?sort=total-citations
venue: ICLR
year: 2017
---

[semanticscholar url](https://www.semanticscholar.org/paper/Pruning-Filters-for-Efficient-ConvNets-Li-Kadav/c2a1cb1612ba21e067a5c3ba478a8d73b796b77a?sort=total-citations)

# Pruning Filters for Efficient ConvNets

## Abstract

The success of CNNs in various applications is accompanied by a significant increase in the computation and parameter storage costs. Recent efforts toward reducing these overheads involve pruning and compressing the weights of various layers without hurting original accuracy. However, magnitude-based pruning of weights reduces a significant number of parameters from the fully connected layers and may not adequately reduce the computation costs in the convolutional layers due to irregular sparsity in the pruned networks. We present an acceleration method for CNNs, where we prune filters from CNNs that are identified as having a small effect on the output accuracy. By removing whole filters in the network together with their connecting feature maps, the computation costs are reduced significantly. In contrast to pruning weights, this approach does not result in sparse connectivity patterns. Hence, it does not need the support of sparse convolution libraries and can work with existing efficient BLAS libraries for dense matrix multiplications. We show that even simple filter pruning techniques can reduce inference costs for VGG-16 by up to 34% and ResNet-110 by up to 38% on CIFAR10 while regaining close to the original accuracy by retraining the networks.

## Paper References

1. Structured Pruning of Deep Convolutional Neural Networks
2. Sparse Convolutional Neural Networks
3. Less Is More - Towards Compact CNNs
4. Convolutional neural networks with low-rank regularization
5. [Speeding up Convolutional Neural Networks with Low Rank Expansions](2014-speeding-up-convolutional-neural-networks-with-low-rank-expansions.md)
6. Convolutional neural networks at constrained time cost
7. Training CNNs with Low-Rank Filters for Efficient Image Classification
8. A Deep Neural Network Compression Pipeline - Pruning, Quantization, Huffman Encoding
9. Efficient and accurate approximations of nonlinear convolutional networks
10. [Learning both Weights and Connections for Efficient Neural Network](2015-learning-both-weights-and-connections-for-efficient-neural-network.md)
11. Fast Training of Convolutional Networks through FFTs
12. [Deep Compression - Compressing Deep Neural Network with Pruning, Trained Quantization and Huffman Coding](2016-deep-compression-compressing-deep-neural-network-with-pruning-trained-quantization-and-huffman-coding.md)
13. [Deep Networks with Stochastic Depth](2016-deep-networks-with-stochastic-depth.md)
14. Data-free Parameter Pruning for Deep Neural Networks
15. [Rethinking the Inception Architecture for Computer Vision](2016-rethinking-the-inception-architecture-for-computer-vision.md)
16. [XNOR-Net - ImageNet Classification Using Binary Convolutional Neural Networks](2016-xnor-net-imagenet-classification-using-binary-convolutional-neural-networks.md)
17. [Very Deep Convolutional Networks for Large-Scale Image Recognition](2015-very-deep-convolutional-networks-for-large-scale-image-recognition.md)
18. [Accelerating Very Deep Convolutional Networks for Classification and Detection](2016-accelerating-very-deep-convolutional-networks-for-classification-and-detection.md)
19. Fast ConvNets Using Group-Wise Brain Damage
20. [Fast Algorithms for Convolutional Neural Networks](2016-fast-algorithms-for-convolutional-neural-networks.md)
21. [Deep Residual Learning for Image Recognition](2016-deep-residual-learning-for-image-recognition.md)
22. [Visualizing and Understanding Convolutional Networks](2014-visualizing-and-understanding-convolutional-networks.md)
23. [EIE - Efficient Inference Engine on Compressed Deep Neural Network](2016-eie-efficient-inference-engine-on-compressed-deep-neural-network.md)
24. [Binarized Neural Networks - Training Deep Neural Networks with Weights and Activations Constrained to +1 or -1](2016-binarized-neural-networks-training-deep-neural-networks-with-weights-and-activations-constrained-to-1-or-1.md)
25. [ImageNet classification with deep convolutional neural networks](2012-imagenet-classification-with-deep-convolutional-neural-networks.md)
26. [SqueezeNet - AlexNet-level accuracy with 50x fewer parameters and <1MB model size](2016-squeezenet-alexnet-level-accuracy-with-50x-fewer-parameters-and-1mb-model-size.md)
27. [Going deeper with convolutions](2015-going-deeper-with-convolutions.md)
28. [Network In Network](2014-network-in-network.md)
29. [Batch Normalization - Accelerating Deep Network Training by Reducing Internal Covariate Shift](2015-batch-normalization-accelerating-deep-network-training-by-reducing-internal-covariate-shift.md)
30. [BinaryNet - Training Deep Neural Networks with Weights and Activations Constrained to +1 or -1](2016-binarynet-training-deep-neural-networks-with-weights-and-activations-constrained-to-1-or-1.md)
31. Second Order Derivatives for Network Pruning - Optimal Brain Surgeon
32. [Dropout - a simple way to prevent neural networks from overfitting](2014-dropout-a-simple-way-to-prevent-neural-networks-from-overfitting.md)
33. Channel-Level Acceleration of Deep Face Representations
34. Diversity Networks
35. [Predicting Parameters in Deep Learning](2013-predicting-parameters-in-deep-learning.md)
36. [ImageNet Large Scale Visual Recognition Challenge](2015-imagenet-large-scale-visual-recognition-challenge.md)
37. Pruning algorithms-a survey
38. Optimal Brain Damage
39. [Torch7 - A Matlab-like Environment for Machine Learning](2011-torch7-a-matlab-like-environment-for-machine-learning.md)
40. [Published as a conference paper at ICLR 2018 S IMULATING A CTION D YNAMICS WITH N EURAL P ROCESS N ETWORKS](2018-published-as-a-conference-paper-at-iclr-2018-s-imulating-a-ction-d-ynamics-with-n-eural-p-rocess-n-etworks.md)
