---
title: Trained Ternary Quantization
authors:
- Chenzhuo Zhu
- Song Han
- Huizi Mao
- W. Dally
fieldsOfStudy:
- Computer Science
meta_key: 2017-trained-ternary-quantization
numCitedBy: 801
reading_status: TBD
ref_count: 19
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Trained-Ternary-Quantization-Zhu-Han/d418295cd3027c43eccc5592ae5b8303ba8192be?sort=total-citations
venue: ICLR
year: 2017
---

# Trained Ternary Quantization

## Abstract

Deep neural networks are widely used in machine learning applications. However, the deployment of large neural networks models can be difficult to deploy on mobile devices with limited power budgets. To solve this problem, we propose Trained Ternary Quantization (TTQ), a method that can reduce the precision of weights in neural networks to ternary values. This method has very little accuracy degradation and can even improve the accuracy of some models (32, 44, 56-layer ResNet) on CIFAR-10 and AlexNet on ImageNet. And our AlexNet model is trained from scratch, which means it's as easy as to train normal full precision model. We highlight our trained quantization method that can learn both ternary values and ternary assignment. During inference, only ternary values (2-bit weights) and scaling factors are needed, therefore our models are nearly 16x smaller than full-precision models. Our ternary models can also be viewed as sparse binary weight networks, which can potentially be accelerated with custom circuit. Experiments on CIFAR-10 show that the ternary models obtained by trained quantization method outperform full-precision models of ResNet-32,44,56 by 0.04%, 0.16%, 0.36%, respectively. On ImageNet, our model outperforms full-precision AlexNet model by 0.3% of Top-1 accuracy and outperforms previous ternary models by 3%.

## Paper References

1. Quantized Neural Networks - Training Neural Networks with Low Precision Weights and Activations
2. [BinaryConnect - Training Deep Neural Networks with binary weights during propagations](2015-binaryconnect-training-deep-neural-networks-with-binary-weights-during-propagations.md)
3. [Deep Compression - Compressing Deep Neural Network with Pruning, Trained Quantization and Huffman Coding](2016-deep-compression-compressing-deep-neural-network-with-pruning-trained-quantization-and-huffman-coding.md)
4. [XNOR-Net - ImageNet Classification Using Binary Convolutional Neural Networks](2016-xnor-net-imagenet-classification-using-binary-convolutional-neural-networks.md)
5. [ImageNet classification with deep convolutional neural networks](2012-imagenet-classification-with-deep-convolutional-neural-networks.md)
6. [DoReFa-Net - Training Low Bitwidth Convolutional Neural Networks with Low Bitwidth Gradients](2016-dorefa-net-training-low-bitwidth-convolutional-neural-networks-with-low-bitwidth-gradients.md)
7. Neural Networks with Few Multiplications
8. [Deep Residual Learning for Image Recognition](2016-deep-residual-learning-for-image-recognition.md)
9. [Batch Normalization - Accelerating Deep Network Training by Reducing Internal Covariate Shift](2015-batch-normalization-accelerating-deep-network-training-by-reducing-internal-covariate-shift.md)
10. [EIE - Efficient Inference Engine on Compressed Deep Neural Network](2016-eie-efficient-inference-engine-on-compressed-deep-neural-network.md)
11. [Learning Multiple Layers of Features from Tiny Images](2009-learning-multiple-layers-of-features-from-tiny-images.md)
12. [Caffe - Convolutional Architecture for Fast Feature Embedding](2014-caffe-convolutional-architecture-for-fast-feature-embedding.md)
13. Ternary Weight Networks
14. [Adam - A Method for Stochastic Optimization](2015-adam-a-method-for-stochastic-optimization.md)
15. [Identity Mappings in Deep Residual Networks](2016-identity-mappings-in-deep-residual-networks.md)
16. [Deep Speech 2 - End-to-End Speech Recognition in English and Mandarin](2016-deep-speech-2-end-to-end-speech-recognition-in-english-and-mandarin.md)
17. [ImageNet Large Scale Visual Recognition Challenge](2015-imagenet-large-scale-visual-recognition-challenge.md)
