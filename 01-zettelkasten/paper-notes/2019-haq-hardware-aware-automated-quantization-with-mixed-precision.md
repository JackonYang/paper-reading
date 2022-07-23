---
title: HAQ - Hardware-Aware Automated Quantization With Mixed Precision
authors:
- Kuan Wang
- Zhijian Liu
- Yujun Lin
- Ji Lin
- Song Han
fieldsOfStudy:
- Computer Science
meta_key: 2019-haq-hardware-aware-automated-quantization-with-mixed-precision
numCitedBy: 394
reading_status: TBD
ref_count: 36
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/HAQ:-Hardware-Aware-Automated-Quantization-With-Wang-Liu/54c4642d017830e1faddbb49f0377228d2b01493?sort=total-citations
venue: 2019 IEEE/CVF Conference on Computer Vision and Pattern Recognition (CVPR)
year: 2019
---

[semanticscholar url](https://www.semanticscholar.org/paper/HAQ:-Hardware-Aware-Automated-Quantization-With-Wang-Liu/54c4642d017830e1faddbb49f0377228d2b01493?sort=total-citations)

# HAQ - Hardware-Aware Automated Quantization With Mixed Precision

## Abstract

Model quantization is a widely used technique to compress and accelerate deep neural network (DNN) inference. Emergent DNN hardware accelerators begin to support mixed precision (1-8 bits) to further improve the computation efficiency, which raises a great challenge to find the optimal bitwidth for each layer: it requires domain experts to explore the vast design space trading off among accuracy, latency, energy, and model size, which is both time-consuming and sub-optimal. There are plenty of specialized hardware for neural networks, but little research has been done for specialized neural network optimization for a particular hardware architecture. Conventional quantization algorithm ignores the different hardware architectures and quantizes all the layers in a uniform way. In this paper, we introduce the Hardware-Aware Automated Quantization (HAQ) framework which leverages the reinforcement learning to automatically determine the quantization policy, and we take the hardware accelerator's feedback in the design loop. Rather than relying on proxy signals such as FLOPs and model size, we employ a hardware simulator to generate direct feedback signals (latency and energy) to the RL agent. Compared with conventional methods, our framework is fully automated and can specialize the quantization policy for different neural network architectures and hardware architectures. Our framework effectively reduced the latency by 1.4-1.95x and the energy consumption by 1.9x with negligible loss of accuracy compared with the fixed bitwidth (8 bits) quantization. Our framework reveals that the optimal policies on different hardware architectures (i.e., edge and cloud architectures) under different resource constraints (i.e., latency, energy and model size) are drastically different. We interpreted the implication of different quantization policies, which offer insights for both neural network architecture design and hardware architecture design.

## Paper References

1. [Quantizing deep convolutional networks for efficient inference - A whitepaper](2018-quantizing-deep-convolutional-networks-for-efficient-inference-a-whitepaper.md)
2. Explicit Loss-Error-Aware Quantization for Low-Bit Deep Neural Networks
3. [PACT - Parameterized Clipping Activation for Quantized Neural Networks](2018-pact-parameterized-clipping-activation-for-quantized-neural-networks.md)
4. Bit Fusion - Bit-Level Dynamically Composable Architecture for Accelerating Deep Neural Network
5. [Deep Compression - Compressing Deep Neural Network with Pruning, Trained Quantization and Huffman Coding](2016-deep-compression-compressing-deep-neural-network-with-pruning-trained-quantization-and-huffman-coding.md)
6. [Quantization and Training of Neural Networks for Efficient Integer-Arithmetic-Only Inference](2018-quantization-and-training-of-neural-networks-for-efficient-integer-arithmetic-only-inference.md)
7. [AMC - AutoML for Model Compression and Acceleration on Mobile Devices](2018-amc-automl-for-model-compression-and-acceleration-on-mobile-devices.md)
8. [Trained Ternary Quantization](2017-trained-ternary-quantization.md)
9. [Learning Efficient Convolutional Networks through Network Slimming](2017-learning-efficient-convolutional-networks-through-network-slimming.md)
10. Designing Energy-Efficient Convolutional Neural Networks Using Energy-Aware Pruning
11. [ProxylessNAS - Direct Neural Architecture Search on Target Task and Hardware](2019-proxylessnas-direct-neural-architecture-search-on-target-task-and-hardware.md)
12. [DoReFa-Net - Training Low Bitwidth Convolutional Neural Networks with Low Bitwidth Gradients](2016-dorefa-net-training-low-bitwidth-convolutional-neural-networks-with-low-bitwidth-gradients.md)
13. [Binarized Neural Networks - Training Deep Neural Networks with Weights and Activations Constrained to +1 or -1](2016-binarized-neural-networks-training-deep-neural-networks-with-weights-and-activations-constrained-to-1-or-1.md)
14. [Runtime Neural Pruning](2017-runtime-neural-pruning.md)
15. [NetAdapt - Platform-Aware Neural Network Adaptation for Mobile Applications](2018-netadapt-platform-aware-neural-network-adaptation-for-mobile-applications.md)
16. [Channel Pruning for Accelerating Very Deep Neural Networks](2017-channel-pruning-for-accelerating-very-deep-neural-networks.md)
17. [XNOR-Net - ImageNet Classification Using Binary Convolutional Neural Networks](2016-xnor-net-imagenet-classification-using-binary-convolutional-neural-networks.md)
18. [Efficient Neural Architecture Search via Parameter Sharing](2018-efficient-neural-architecture-search-via-parameter-sharing.md)
19. [Xception - Deep Learning with Depthwise Separable Convolutions](2017-xception-deep-learning-with-depthwise-separable-convolutions.md)
20. [Neural Architecture Search with Reinforcement Learning](2017-neural-architecture-search-with-reinforcement-learning.md)
21. BISMO - A Scalable Bit-Serial Matrix Multiplication Overlay for Reconfigurable Computing
22. [Deep Residual Learning for Image Recognition](2016-deep-residual-learning-for-image-recognition.md)
23. [Adam - A Method for Stochastic Optimization](2015-adam-a-method-for-stochastic-optimization.md)
24. Path-Level Network Transformation for Efficient Architecture Search
25. [MobileNets - Efficient Convolutional Neural Networks for Mobile Vision Applications](2017-mobilenets-efficient-convolutional-neural-networks-for-mobile-vision-applications.md)
26. [MobileNetV2 - Inverted Residuals and Linear Bottlenecks](2018-mobilenetv2-inverted-residuals-and-linear-bottlenecks.md)
27. [Progressive Neural Architecture Search](2018-progressive-neural-architecture-search.md)
28. Continuous control with deep reinforcement learning
29. Continuous Control with Deep Reinforcement Learning for Autonomous Vessels
30. [ImageNet - A large-scale hierarchical image database](2009-imagenet-a-large-scale-hierarchical-image-database.md)
31. Roofline - an insightful visual performance model for multicore architectures
32. Efficient methods and hardware for deep learning
