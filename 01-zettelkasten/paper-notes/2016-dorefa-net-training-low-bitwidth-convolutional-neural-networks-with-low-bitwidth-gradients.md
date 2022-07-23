---
title: DoReFa-Net - Training Low Bitwidth Convolutional Neural Networks with Low Bitwidth Gradients
authors:
- Shuchang Zhou
- Zekun Ni
- Xinyu Zhou
- He Wen
- Yuxin Wu
- Yuheng Zou
fieldsOfStudy:
- Computer Science
meta_key: 2016-dorefa-net-training-low-bitwidth-convolutional-neural-networks-with-low-bitwidth-gradients
numCitedBy: 1360
reading_status: TBD
ref_count: 39
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/DoReFa-Net:-Training-Low-Bitwidth-Convolutional-Low-Zhou-Ni/8b053389eb8c18c61b84d7e59a95cb7e13f205b7?sort=total-citations
venue: ArXiv
year: 2016
---

# DoReFa-Net - Training Low Bitwidth Convolutional Neural Networks with Low Bitwidth Gradients

## Abstract

We propose DoReFa-Net, a method to train convolutional neural networks that have low bitwidth weights and activations using low bitwidth parameter gradients. In particular, during backward pass, parameter gradients are stochastically quantized to low bitwidth numbers before being propagated to convolutional layers. As convolutions during forward/backward passes can now operate on low bitwidth weights and activations/gradients respectively, DoReFa-Net can use bit convolution kernels to accelerate both training and inference. Moreover, as bit convolutions can be efficiently implemented on CPU, FPGA, ASIC and GPU, DoReFa-Net opens the way to accelerate training of low bitwidth neural network on these hardware. Our experiments on SVHN and ImageNet datasets prove that DoReFa-Net can achieve comparable prediction accuracy as 32-bit counterparts. For example, a DoReFa-Net derived from AlexNet that has 1-bit weights, 2-bit activations, can be trained from scratch using 6-bit gradients to get 46.1\% top-1 accuracy on ImageNet validation set. The DoReFa-Net AlexNet model is released publicly.

## Paper References

1. [Binarized Neural Networks - Training Deep Neural Networks with Weights and Activations Constrained to +1 or -1](2016-binarized-neural-networks-training-deep-neural-networks-with-weights-and-activations-constrained-to-1-or-1.md)
2. [XNOR-Net - ImageNet Classification Using Binary Convolutional Neural Networks](2016-xnor-net-imagenet-classification-using-binary-convolutional-neural-networks.md)
3. Bitwise Neural Networks
4. [BinaryNet - Training Deep Neural Networks with Weights and Activations Constrained to +1 or -1](2016-binarynet-training-deep-neural-networks-with-weights-and-activations-constrained-to-1-or-1.md)
5. [Deep Compression - Compressing Deep Neural Network with Pruning, Trained Quantization and Huffman Coding](2016-deep-compression-compressing-deep-neural-network-with-pruning-trained-quantization-and-huffman-coding.md)
6. [DaDianNao - A Machine-Learning Supercomputer](2014-dadiannao-a-machine-learning-supercomputer.md)
7. Training deep neural networks with low precision multiplications
8. 1-bit stochastic gradient descent and its application to data-parallel distributed training of speech DNNs
9. Compressing Deep Convolutional Networks using Vector Quantization
10. Improving the speed of neural networks on CPUs
11. Neural Networks with Few Multiplications
12. [ImageNet classification with deep convolutional neural networks](2012-imagenet-classification-with-deep-convolutional-neural-networks.md)
13. Quantized Convolutional Neural Networks for Mobile Devices
14. Deep neural networks are robust to weight binarization and other non-linear distortions
15. [Learning both Weights and Connections for Efficient Neural Network](2015-learning-both-weights-and-connections-for-efficient-neural-network.md)
16. [Deep Learning with Limited Numerical Precision](2015-deep-learning-with-limited-numerical-precision.md)
17. Adding Gradient Noise Improves Learning for Very Deep Networks
18. [DianNao - a small-footprint high-throughput accelerator for ubiquitous machine-learning](2014-diannao-a-small-footprint-high-throughput-accelerator-for-ubiquitous-machine-learning.md)
19. [Batch Normalization - Accelerating Deep Network Training by Reducing Internal Covariate Shift](2015-batch-normalization-accelerating-deep-network-training-by-reducing-internal-covariate-shift.md)
20. Ternary Weight Networks
21. Large-Scale FPGA-based Convolutional Networks
22. NeuFlow - Dataflow vision processing system-on-a-chip
23. [Adam - A Method for Stochastic Optimization](2015-adam-a-method-for-stochastic-optimization.md)
24. [Estimating or Propagating Gradients Through Stochastic Neurons for Conditional Computation](2013-estimating-or-propagating-gradients-through-stochastic-neurons-for-conditional-computation.md)
25. Scaling up machine learning - parallel and distributed approaches
26. [Reading Digits in Natural Images with Unsupervised Feature Learning](2011-reading-digits-in-natural-images-with-unsupervised-feature-learning.md)
27. [Neural Machine Translation by Jointly Learning to Align and Translate](2015-neural-machine-translation-by-jointly-learning-to-align-and-translate.md)
28. [Deep Neural Networks for Acoustic Modeling in Speech Recognition - The Shared Views of Four Research Groups](2012-deep-neural-networks-for-acoustic-modeling-in-speech-recognition-the-shared-views-of-four-research-groups.md)
29. [ImageNet - A large-scale hierarchical image database](2009-imagenet-a-large-scale-hierarchical-image-database.md)
30. Neural Networks in Machine Learning
31. Neural Networks for Machine Learning
