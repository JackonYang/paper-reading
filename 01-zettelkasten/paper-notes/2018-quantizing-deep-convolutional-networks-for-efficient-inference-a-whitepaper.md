---
title: Quantizing deep convolutional networks for efficient inference - A whitepaper
authors:
- Raghuraman Krishnamoorthi
fieldsOfStudy:
- Computer Science
meta_key: 2018-quantizing-deep-convolutional-networks-for-efficient-inference-a-whitepaper
numCitedBy: 450
reading_status: TBD
ref_count: 32
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Quantizing-deep-convolutional-networks-for-A-Krishnamoorthi/3d8b62c060f8444907e7c975c6ae590373b51ed4?sort=total-citations
venue: ArXiv
year: 2018
---

[semanticscholar url](https://www.semanticscholar.org/paper/Quantizing-deep-convolutional-networks-for-A-Krishnamoorthi/3d8b62c060f8444907e7c975c6ae590373b51ed4?sort=total-citations)

# Quantizing deep convolutional networks for efficient inference - A whitepaper

## Abstract

We present an overview of techniques for quantizing convolutional neural networks for inference with integer weights and activations. Per-channel quantization of weights and per-layer quantization of activations to 8-bits of precision post-training produces classification accuracies within 2% of floating point networks for a wide variety of CNN architectures. Model sizes can be reduced by a factor of 4 by quantizing weights to 8-bits, even when 8-bit arithmetic is not supported. This can be achieved with simple, post training quantization of weights.We benchmark latencies of quantized networks on CPUs and DSPs and observe a speedup of 2x-3x for quantized implementations compared to floating point on CPUs. Speedups of up to 10x are observed on specialized processors with fixed point SIMD capabilities, like the Qualcomm QDSPs with HVX. 
Quantization-aware training can provide further improvements, reducing the gap to floating point to 1% at 8-bit precision. Quantization-aware training also allows for reducing the precision of weights to four bits with accuracy losses ranging from 2% to 10%, with higher accuracy drop for smaller networks.We introduce tools in TensorFlow and TensorFlowLite for quantizing convolutional networks and review best practices for quantization-aware training to obtain high accuracy with quantized weights and activations. We recommend that per-channel quantization of weights and per-layer quantization of activations be the preferred quantization scheme for hardware acceleration and kernel optimization. We also propose that future processors and hardware accelerators for optimized inference support precisions of 4, 8 and 16 bits.

## Paper References

1. [Quantization and Training of Neural Networks for Efficient Integer-Arithmetic-Only Inference](2018-quantization-and-training-of-neural-networks-for-efficient-integer-arithmetic-only-inference.md)
2. [Deep Compression - Compressing Deep Neural Network with Pruning, Trained Quantization and Huffman Coding](2016-deep-compression-compressing-deep-neural-network-with-pruning-trained-quantization-and-huffman-coding.md)
3. [BinaryConnect - Training Deep Neural Networks with binary weights during propagations](2015-binaryconnect-training-deep-neural-networks-with-binary-weights-during-propagations.md)
4. Model compression via distillation and quantization
5. [EIE - Efficient Inference Engine on Compressed Deep Neural Network](2016-eie-efficient-inference-engine-on-compressed-deep-neural-network.md)
6. [SqueezeNet - AlexNet-level accuracy with 50x fewer parameters and <1MB model size](2016-squeezenet-alexnet-level-accuracy-with-50x-fewer-parameters-and-1mb-model-size.md)
7. A Quantization-Friendly Separable Convolution for MobileNets
8. Efficient Processing of Deep Neural Networks - A Tutorial and Survey
9. [Rethinking the Inception Architecture for Computer Vision](2016-rethinking-the-inception-architecture-for-computer-vision.md)
10. ADC - Automated Deep Compression and Acceleration with Reinforcement Learning
11. Apprentice - Using Knowledge Distillation Techniques To Improve Low-Precision Network Accuracy
12. [Deep Residual Learning for Image Recognition](2016-deep-residual-learning-for-image-recognition.md)
13. [Batch Normalization - Accelerating Deep Network Training by Reducing Internal Covariate Shift](2015-batch-normalization-accelerating-deep-network-training-by-reducing-internal-covariate-shift.md)
14. [Learning Transferable Architectures for Scalable Image Recognition](2018-learning-transferable-architectures-for-scalable-image-recognition.md)
15. [Identity Mappings in Deep Residual Networks](2016-identity-mappings-in-deep-residual-networks.md)
16. [MobileNets - Efficient Convolutional Neural Networks for Mobile Vision Applications](2017-mobilenets-efficient-convolutional-neural-networks-for-mobile-vision-applications.md)
17. [Distilling the Knowledge in a Neural Network](2015-distilling-the-knowledge-in-a-neural-network.md)
18. [Inverted Residuals and Linear Bottlenecks - Mobile Networks for Classification, Detection and Segmentation](2018-inverted-residuals-and-linear-bottlenecks-mobile-networks-for-classification-detection-and-segmentation.md)
