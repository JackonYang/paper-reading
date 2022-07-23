---
title: ProxylessNAS - Direct Neural Architecture Search on Target Task and Hardware
authors:
- Han Cai
- Ligeng Zhu
- Song Han
fieldsOfStudy:
- Computer Science
meta_key: 2019-proxylessnas-direct-neural-architecture-search-on-target-task-and-hardware
numCitedBy: 1117
reading_status: TBD
ref_count: 38
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/ProxylessNAS:-Direct-Neural-Architecture-Search-on-Cai-Zhu/dc8b789446416383bfafe9b1c504c4a2b17e68d1?sort=total-citations
venue: ICLR
year: 2019
---

# ProxylessNAS - Direct Neural Architecture Search on Target Task and Hardware

## Abstract

Neural architecture search (NAS) has a great impact by automatically designing effective neural network architectures. However, the prohibitive computational demand of conventional NAS algorithms (e.g. $10^4$ GPU hours) makes it difficult to \emph{directly} search the architectures on large-scale tasks (e.g. ImageNet). Differentiable NAS can reduce the cost of GPU hours via a continuous representation of network architecture but suffers from the high GPU memory consumption issue (grow linearly w.r.t. candidate set size). As a result, they need to utilize~\emph{proxy} tasks, such as training on a smaller dataset, or learning with only a few blocks, or training just for a few epochs. These architectures optimized on proxy tasks are not guaranteed to be optimal on the target task. In this paper, we present \emph{ProxylessNAS} that can \emph{directly} learn the architectures for large-scale target tasks and target hardware platforms. We address the high memory consumption issue of differentiable NAS and reduce the computational cost (GPU hours and GPU memory) to the same level of regular training while still allowing a large candidate set. Experiments on CIFAR-10 and ImageNet demonstrate the effectiveness of directness and specialization. On CIFAR-10, our model achieves 2.08\% test error with only 5.7M parameters, better than the previous state-of-the-art architecture AmoebaNet-B, while using 6$\times$ fewer parameters. On ImageNet, our model achieves 3.1\% better top-1 accuracy than MobileNetV2, while being 1.2$\times$ faster with measured GPU latency. We also apply ProxylessNAS to specialize neural architectures for hardware with direct hardware metrics (e.g. latency) and provide insights for efficient CNN architecture design.

## Paper References

1. [Efficient Architecture Search by Network Transformation](2018-efficient-architecture-search-by-network-transformation.md)
2. [Efficient Neural Architecture Search via Parameter Sharing](2018-efficient-neural-architecture-search-via-parameter-sharing.md)
3. [ShuffleNet V2 - Practical Guidelines for Efficient CNN Architecture Design](2018-shufflenet-v2-practical-guidelines-for-efficient-cnn-architecture-design.md)
4. [SMASH - One-Shot Model Architecture Search through HyperNetworks](2018-smash-one-shot-model-architecture-search-through-hypernetworks.md)
5. [MnasNet - Platform-Aware Neural Architecture Search for Mobile](2019-mnasnet-platform-aware-neural-architecture-search-for-mobile.md)
6. Multi-objective Architecture Search for CNNs
7. Simple And Efficient Architecture Search for Convolutional Neural Networks
8. DPP-Net - Device-aware Progressive Search for Pareto-optimal Neural Architectures
9. [DARTS - Differentiable Architecture Search](2019-darts-differentiable-architecture-search.md)
10. [Practical Block-Wise Neural Network Architecture Generation](2018-practical-block-wise-neural-network-architecture-generation.md)
11. [BinaryConnect - Training Deep Neural Networks with binary weights during propagations](2015-binaryconnect-training-deep-neural-networks-with-binary-weights-during-propagations.md)
12. [Learning Efficient Convolutional Networks through Network Slimming](2017-learning-efficient-convolutional-networks-through-network-slimming.md)
13. [Learning both Weights and Connections for Efficient Neural Network](2015-learning-both-weights-and-connections-for-efficient-neural-network.md)
14. Path-Level Network Transformation for Efficient Architecture Search
15. [Neural Architecture Search with Reinforcement Learning](2017-neural-architecture-search-with-reinforcement-learning.md)
16. [SqueezeNet - AlexNet-level accuracy with 50x fewer parameters and <1MB model size](2016-squeezenet-alexnet-level-accuracy-with-50x-fewer-parameters-and-1mb-model-size.md)
17. [AMC - AutoML for Model Compression and Acceleration on Mobile Devices](2018-amc-automl-for-model-compression-and-acceleration-on-mobile-devices.md)
18. [Learning Transferable Architectures for Scalable Image Recognition](2018-learning-transferable-architectures-for-scalable-image-recognition.md)
19. [Deep Compression - Compressing Deep Neural Network with Pruning, Trained Quantization and Huffman Coding](2016-deep-compression-compressing-deep-neural-network-with-pruning-trained-quantization-and-huffman-coding.md)
20. [Understanding and Simplifying One-Shot Architecture Search](2018-understanding-and-simplifying-one-shot-architecture-search.md)
21. [Progressive Neural Architecture Search](2018-progressive-neural-architecture-search.md)
22. [Deep Networks with Stochastic Depth](2016-deep-networks-with-stochastic-depth.md)
23. [Improved Regularization of Convolutional Neural Networks with Cutout](2017-improved-regularization-of-convolutional-neural-networks-with-cutout.md)
24. Neural Architecture Optimization
25. Neural Architecture Search - A Survey
26. [Deep Pyramidal Residual Networks](2017-deep-pyramidal-residual-networks.md)
27. [Regularized Evolution for Image Classifier Architecture Search](2019-regularized-evolution-for-image-classifier-architecture-search.md)
28. [MobileNetV2 - Inverted Residuals and Linear Bottlenecks](2018-mobilenetv2-inverted-residuals-and-linear-bottlenecks.md)
29. Sparsely Aggregated Convolutional Networks
30. [Hierarchical Representations for Efficient Architecture Search](2018-hierarchical-representations-for-efficient-architecture-search.md)
31. Shakedrop Regularization for Deep Residual Learning
32. [Deep Residual Learning for Image Recognition](2016-deep-residual-learning-for-image-recognition.md)
33. Neural Architecture Construction using EnvelopeNets
34. Fast Neural Architecture Construction using EnvelopeNets
35. [MobileNets - Efficient Convolutional Neural Networks for Mobile Vision Applications](2017-mobilenets-efficient-convolutional-neural-networks-for-mobile-vision-applications.md)
36. [Densely Connected Convolutional Networks](2017-densely-connected-convolutional-networks.md)
37. [Simple statistical gradient-following algorithms for connectionist reinforcement learning](2004-simple-statistical-gradient-following-algorithms-for-connectionist-reinforcement-learning.md)
38. MONAS - Multi-Objective Neural Architecture Search using Reinforcement Learning
