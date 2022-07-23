---
title: FINN - A Framework for Fast, Scalable Binarized Neural Network Inference
authors:
- Yaman Umuroglu
- Nicholas J. Fraser
- G. Gambardella
- Michaela Blott
- P. Leong
- Magnus Jahre
- K. Vissers
fieldsOfStudy:
- Computer Science
meta_key: 2017-finn-a-framework-for-fast-scalable-binarized-neural-network-inference
numCitedBy: 590
reading_status: TBD
ref_count: 35
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/FINN:-A-Framework-for-Fast,-Scalable-Binarized-Umuroglu-Fraser/3b2491ddeeaa7beae4d311b217c292a9e16112cf?sort=total-citations
venue: FPGA
year: 2017
---

# FINN - A Framework for Fast, Scalable Binarized Neural Network Inference

## Abstract

Research has shown that convolutional neural networks contain significant redundancy, and high classification accuracy can be obtained even when weights and activations are reduced from floating point to binary values. In this paper, we present FINN, a framework for building fast and flexible FPGA accelerators using a flexible heterogeneous streaming architecture. By utilizing a novel set of optimizations that enable efficient mapping of binarized neural networks to hardware, we implement fully connected, convolutional and pooling layers, with per-layer compute resources being tailored to user-provided throughput requirements. On a ZC706 embedded FPGA platform drawing less than 25 W total system power, we demonstrate up to 12.3 million image classifications per second with 0.31 μs latency on the MNIST dataset with 95.8% accuracy, and 21906 image classifications per second with 283 μs latency on the CIFAR-10 and SVHN datasets with respectively 80.1% and 94.9% accuracy. To the best of our knowledge, ours are the fastest classification rates reported to date on these benchmarks.

## Paper References

1. [Binarized Neural Networks - Training Deep Neural Networks with Weights and Activations Constrained to +1 or -1](2016-binarized-neural-networks-training-deep-neural-networks-with-weights-and-activations-constrained-to-1-or-1.md)
2. fpgaConvNet - A Framework for Mapping Convolutional Neural Networks on FPGAs
3. Accelerating Binarized Neural Networks - Comparison of FPGA, CPU, GPU, and ASIC
4. Accelerating Deep Convolutional Neural Networks Using Specialized Hardware
5. YodaNN - An Ultra-Low Power Convolutional Neural Network Accelerator Based on Binary Weights
6. Throughput-Optimized OpenCL-based FPGA Accelerator for Large-Scale Convolutional Neural Networks
7. [Eyeriss - A Spatial Architecture for Energy-Efficient Dataflow for Convolutional Neural Networks](2016-eyeriss-a-spatial-architecture-for-energy-efficient-dataflow-for-convolutional-neural-networks.md)
8. Ternary neural networks for resource-efficient AI applications
9. CNP - An FPGA-based processor for Convolutional Networks
10. [Optimizing FPGA-based Accelerator Design for Deep Convolutional Neural Networks](2015-optimizing-fpga-based-accelerator-design-for-deep-convolutional-neural-networks.md)
11. [DoReFa-Net - Training Low Bitwidth Convolutional Neural Networks with Low Bitwidth Gradients](2016-dorefa-net-training-low-bitwidth-convolutional-neural-networks-with-low-bitwidth-gradients.md)
12. [BinaryNet - Training Deep Neural Networks with Weights and Activations Constrained to +1 or -1](2016-binarynet-training-deep-neural-networks-with-weights-and-activations-constrained-to-1-or-1.md)
13. CaffePresso - An optimized library for Deep Learning on embedded accelerator-based platforms
14. [XNOR-Net - ImageNet Classification Using Binary Convolutional Neural Networks](2016-xnor-net-imagenet-classification-using-binary-convolutional-neural-networks.md)
15. [ImageNet classification with deep convolutional neural networks](2012-imagenet-classification-with-deep-convolutional-neural-networks.md)
16. [Deep Compression - Compressing Deep Neural Network with Pruning, Trained Quantization and Huffman Coding](2016-deep-compression-compressing-deep-neural-network-with-pruning-trained-quantization-and-huffman-coding.md)
17. Convolutional networks for fast, energy-efficient neuromorphic computing
18. [Bitwise Neural Networks](2016-bitwise-neural-networks.md)
19. [SqueezeNet - AlexNet-level accuracy with 50x fewer parameters and <1MB model size](2016-squeezenet-alexnet-level-accuracy-with-50x-fewer-parameters-and-1mb-model-size.md)
20. FPGA based implementation of deep neural networks using on-chip memory only
21. Resiliency of Deep Neural Networks under Quantization
22. High Performance Convolutional Neural Networks for Document Processing
23. [Very Deep Convolutional Networks for Large-Scale Image Recognition](2015-very-deep-convolutional-networks-for-large-scale-image-recognition.md)
24. [Batch Normalization - Accelerating Deep Network Training by Reducing Internal Covariate Shift](2015-batch-normalization-accelerating-deep-network-training-by-reducing-internal-covariate-shift.md)
25. [Learning Multiple Layers of Features from Tiny Images](2009-learning-multiple-layers-of-features-from-tiny-images.md)
26. Artificial neural networks in hardware - A survey of two decades of progress
27. [Gradient-based learning applied to document recognition](1998-gradient-based-learning-applied-to-document-recognition.md)
28. PlaNet - Photo Geolocation with Convolutional Neural Networks
29. [Reading Digits in Natural Images with Unsupervised Feature Learning](2011-reading-digits-in-natural-images-with-unsupervised-feature-learning.md)
30. [Deep learning in neural networks - An overview](2015-deep-learning-in-neural-networks-an-overview.md)
31. [ImageNet Large Scale Visual Recognition Challenge](2015-imagenet-large-scale-visual-recognition-challenge.md)
32. A Semi-Automated Tool Flow for Roofline Anaylsis of OpenCL Kernels on Accelerators
33. Roofline - an insightful visual performance model for multicore architectures
