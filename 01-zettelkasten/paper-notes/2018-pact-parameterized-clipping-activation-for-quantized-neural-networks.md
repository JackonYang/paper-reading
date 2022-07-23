---
title: PACT - Parameterized Clipping Activation for Quantized Neural Networks
authors:
- Jungwook Choi
- Zhuo Wang
- Swagath Venkataramani
- P. Chuang
- V. Srinivasan
- K. Gopalakrishnan
fieldsOfStudy:
- Computer Science
meta_key: 2018-pact-parameterized-clipping-activation-for-quantized-neural-networks
numCitedBy: 435
reading_status: TBD
ref_count: 30
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/PACT:-Parameterized-Clipping-Activation-for-Neural-Choi-Wang/49e60f82d6ae835c56473464f67ca5c11d3e95ec?sort=total-citations
venue: ArXiv
year: 2018
---

# PACT - Parameterized Clipping Activation for Quantized Neural Networks

## Abstract

Deep learning algorithms achieve high classification accuracy at the expense of significant computation cost. To address this cost, a number of quantization schemeshave been proposed - but most of these techniques focused on quantizing weights, which are relatively smaller in size compared to activations. This paper proposes a novel quantization scheme for activations during training - that enables neural networks to work well with ultra low precision weights and activations without any significant accuracy degradation. This technique, PArameterized Clipping acTi-vation (PACT), uses an activation clipping parameter α that is optimized duringtraining to find the right quantization scale. PACT allows quantizing activations toarbitrary bit precisions, while achieving much better accuracy relative to publishedstate-of-the-art quantization schemes. We show, for the first time, that both weights and activations can be quantized to 4-bits of precision while still achieving accuracy comparable to full precision networks across a range of popular models and datasets. We also show that exploiting these reduced-precision computational units in hardware can enable a super-linear improvement in inferencing performance dueto a significant reduction in the area of accelerator compute engines coupled with the ability to retain the quantized model and activation data in on-chip memories.

## Paper References

1. Balanced Quantization - An Effective and Efficient Approach to Quantized Neural Networks
2. Weighted-Entropy-Based Quantization for Deep Neural Networks
3. WRPN - Training and Inference using Wide Reduced-Precision Networks
4. Quantized Neural Networks - Training Neural Networks with Low Precision Weights and Activations
5. Convolutional Neural Networks using Logarithmic Data Representation
6. [Trained Ternary Quantization](2017-trained-ternary-quantization.md)
7. Deep Learning with Low Precision by Half-Wave Gaussian Quantization
8. Ternary Neural Networks with Fine-Grained Quantization
9. [BinaryConnect - Training Deep Neural Networks with binary weights during propagations](2015-binaryconnect-training-deep-neural-networks-with-binary-weights-during-propagations.md)
10. [Batch Normalization - Accelerating Deep Network Training by Reducing Internal Covariate Shift](2015-batch-normalization-accelerating-deep-network-training-by-reducing-internal-covariate-shift.md)
11. [DoReFa-Net - Training Low Bitwidth Convolutional Neural Networks with Low Bitwidth Gradients](2016-dorefa-net-training-low-bitwidth-convolutional-neural-networks-with-low-bitwidth-gradients.md)
12. Low-Precision Batch-Normalized Activations
13. Bitwise Neural Networks
14. [Deep Residual Learning for Image Recognition](2016-deep-residual-learning-for-image-recognition.md)
15. Convolutional Deep Belief Networks on CIFAR-10
16. [Adam - A Method for Stochastic Optimization](2015-adam-a-method-for-stochastic-optimization.md)
17. Fixed-point feedforward deep neural network design using weights +1, 0, and −1
18. [ImageNet classification with deep convolutional neural networks](2012-imagenet-classification-with-deep-convolutional-neural-networks.md)
19. [Estimating or Propagating Gradients Through Stochastic Neurons for Conditional Computation](2013-estimating-or-propagating-gradients-through-stochastic-neurons-for-conditional-computation.md)
20. Towards End-to-End Speech Recognition with Deep Convolutional Neural Networks
21. [Convolutional Sequence to Sequence Learning](2017-convolutional-sequence-to-sequence-learning.md)
22. POSTER - Design Space Exploration for Performance Optimization of Deep Neural Networks on Shared Memory Accelerators
23. [Reading Digits in Natural Images with Unsupervised Feature Learning](2011-reading-digits-in-natural-images-with-unsupervised-feature-learning.md)
24. [Rectified Linear Units Improve Restricted Boltzmann Machines](2010-rectified-linear-units-improve-restricted-boltzmann-machines.md)
25. [ImageNet Large Scale Visual Recognition Challenge](2015-imagenet-large-scale-visual-recognition-challenge.md)
