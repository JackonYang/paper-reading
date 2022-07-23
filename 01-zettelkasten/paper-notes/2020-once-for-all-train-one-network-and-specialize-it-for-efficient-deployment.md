---
title: Once for All - Train One Network and Specialize it for Efficient Deployment
authors:
- Han Cai
- Chuang Gan
- Song Han
fieldsOfStudy:
- Computer Science
meta_key: 2020-once-for-all-train-one-network-and-specialize-it-for-efficient-deployment
numCitedBy: 512
reading_status: TBD
ref_count: 51
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Once-for-All:-Train-One-Network-and-Specialize-it-Cai-Gan/7823292e5c4b05c47af91ab6ddf671a0da709e82?sort=total-citations
venue: ICLR
year: 2020
---

[semanticscholar url](https://www.semanticscholar.org/paper/Once-for-All:-Train-One-Network-and-Specialize-it-Cai-Gan/7823292e5c4b05c47af91ab6ddf671a0da709e82?sort=total-citations)

# Once for All - Train One Network and Specialize it for Efficient Deployment

## Abstract

We address the challenging problem of efficient inference across many devices and resource constraints, especially on edge devices. Conventional approaches either manually design or use neural architecture search (NAS) to find a specialized neural network and train it from scratch for each case, which is computationally prohibitive (causing $CO_2$ emission as much as 5 cars' lifetime) thus unscalable. In this work, we propose to train a once-for-all (OFA) network that supports diverse architectural settings by decoupling training and search, to reduce the cost. We can quickly get a specialized sub-network by selecting from the OFA network without additional training. To efficiently train OFA networks, we also propose a novel progressive shrinking algorithm, a generalized pruning method that reduces the model size across many more dimensions than pruning (depth, width, kernel size, and resolution). It can obtain a surprisingly large number of sub-networks ($> 10^{19}$) that can fit different hardware platforms and latency constraints while maintaining the same level of accuracy as training independently. On diverse edge devices, OFA consistently outperforms state-of-the-art (SOTA) NAS methods (up to 4.0% ImageNet top1 accuracy improvement over MobileNetV3, or same accuracy but 1.5x faster than MobileNetV3, 2.6x faster than EfficientNet w.r.t measured latency) while reducing many orders of magnitude GPU hours and $CO_2$ emission. In particular, OFA achieves a new SOTA 80.0% ImageNet top-1 accuracy under the mobile setting ($<$600M MACs). OFA is the winning solution for the 3rd Low Power Computer Vision Challenge (LPCVC), DSP classification track and the 4th LPCVC, both classification track and detection track. Code and 50 pre-trained models (for many devices & many latency constraints) are released at this https URL.

## Paper References

1. [FBNet - Hardware-Aware Efficient ConvNet Design via Differentiable Neural Architecture Search](2019-fbnet-hardware-aware-efficient-convnet-design-via-differentiable-neural-architecture-search.md)
2. [MnasNet - Platform-Aware Neural Architecture Search for Mobile](2019-mnasnet-platform-aware-neural-architecture-search-for-mobile.md)
3. AutoSlim - Towards One-Shot Architecture Search for Channel Numbers
4. [ProxylessNAS - Direct Neural Architecture Search on Target Task and Hardware](2019-proxylessnas-direct-neural-architecture-search-on-target-task-and-hardware.md)
5. [Efficient Architecture Search by Network Transformation](2018-efficient-architecture-search-by-network-transformation.md)
6. [Single Path One-Shot Neural Architecture Search with Uniform Sampling](2020-single-path-one-shot-neural-architecture-search-with-uniform-sampling.md)
7. [Learning both Weights and Connections for Efficient Neural Network](2015-learning-both-weights-and-connections-for-efficient-neural-network.md)
8. Multi-Scale Dense Networks for Resource Efficient Image Classification
9. Slimmable Neural Networks
10. Accuracy vs. Efficiency - Achieving Both through FPGA-Implementation Aware Neural Architecture Search
11. [AMC - AutoML for Model Compression and Acceleration on Mobile Devices](2018-amc-automl-for-model-compression-and-acceleration-on-mobile-devices.md)
12. EfficientNet - Rethinking Model Scaling for Convolutional Neural Networks
13. Path-Level Network Transformation for Efficient Architecture Search
14. Stochastic Downsampling for Cost-Adjustable Inference and Improved Regularization in Convolutional Networks
15. [Runtime Neural Pruning](2017-runtime-neural-pruning.md)
16. [Learning Efficient Convolutional Networks through Network Slimming](2017-learning-efficient-convolutional-networks-through-network-slimming.md)
17. BlockDrop - Dynamic Inference Paths in Residual Networks
18. [SqueezeNet - AlexNet-level accuracy with 50x fewer parameters and <1MB model size](2016-squeezenet-alexnet-level-accuracy-with-50x-fewer-parameters-and-1mb-model-size.md)
19. N2N Learning - Network to Network Compression via Policy Gradient Reinforcement Learning
20. [Deep Compression - Compressing Deep Neural Network with Pruning, Trained Quantization and Huffman Coding](2016-deep-compression-compressing-deep-neural-network-with-pruning-trained-quantization-and-huffman-coding.md)
21. [BinaryConnect - Training Deep Neural Networks with binary weights during propagations](2015-binaryconnect-training-deep-neural-networks-with-binary-weights-during-propagations.md)
22. [Densely Connected Convolutional Networks](2017-densely-connected-convolutional-networks.md)
23. [Searching for MobileNetV3](2019-searching-for-mobilenetv3.md)
24. [MobileNetV2 - Inverted Residuals and Linear Bottlenecks](2018-mobilenetv2-inverted-residuals-and-linear-bottlenecks.md)
25. [Trained Ternary Quantization](2017-trained-ternary-quantization.md)
26. Dynamic Deep Neural Networks - Optimizing Accuracy-Efficiency Trade-offs by Selective Execution
27. Hardware/Software Co-Exploration of Neural Architectures
28. SkipNet - Learning Dynamic Routing in Convolutional Networks
29. [ShuffleNet V2 - Practical Guidelines for Efficient CNN Architecture Design](2018-shufflenet-v2-practical-guidelines-for-efficient-cnn-architecture-design.md)
30. [Learning Transferable Architectures for Scalable Image Recognition](2018-learning-transferable-architectures-for-scalable-image-recognition.md)
31. Searching for Activation Functions
32. [Neural Architecture Search with Reinforcement Learning](2017-neural-architecture-search-with-reinforcement-learning.md)
33. [ShuffleNet - An Extremely Efficient Convolutional Neural Network for Mobile Devices](2018-shufflenet-an-extremely-efficient-convolutional-neural-network-for-mobile-devices.md)
34. [Distilling the Knowledge in a Neural Network](2015-distilling-the-knowledge-in-a-neural-network.md)
35. [MobileNets - Efficient Convolutional Neural Networks for Mobile Vision Applications](2017-mobilenets-efficient-convolutional-neural-networks-for-mobile-vision-applications.md)
36. Energy and Policy Considerations for Deep Learning in NLP
37. Universally Slimmable Networks and Improved Training Techniques
38. [Squeeze-and-Excitation Networks](2020-squeeze-and-excitation-networks.md)
39. [Deep Residual Learning for Image Recognition](2016-deep-residual-learning-for-image-recognition.md)
40. [Regularized Evolution for Image Classifier Architecture Search](2019-regularized-evolution-for-image-classifier-architecture-search.md)
41. Swish - a Self-Gated Activation Function
42. [Progressive Neural Architecture Search](2018-progressive-neural-architecture-search.md)
43. [DARTS - Differentiable Architecture Search](2019-darts-differentiable-architecture-search.md)
44. FPGA/DNN Co-Design - An Efficient Design Methodology for 1oT Intelligence on the Edge
45. Superposition of many models into one
46. [ImageNet - A large-scale hierarchical image database](2009-imagenet-a-large-scale-hierarchical-image-database.md)
47. [SGDR - Stochastic Gradient Descent with Warm Restarts](2017-sgdr-stochastic-gradient-descent-with-warm-restarts.md)
48. Roofline - an insightful visual performance model for multicore architectures
49. ‘L'
