---
title: FBNet - Hardware-Aware Efficient ConvNet Design via Differentiable Neural Architecture Search
authors:
- Bichen Wu
- Xiaoliang Dai
- Peizhao Zhang
- Yanghan Wang
- Fei Sun
- Yiming Wu
- Yuandong Tian
- "P\xE9ter Vajda"
- Yangqing Jia
- K. Keutzer
fieldsOfStudy:
- Computer Science
meta_key: 2019-fbnet-hardware-aware-efficient-convnet-design-via-differentiable-neural-architecture-search
numCitedBy: 731
reading_status: TBD
ref_count: 37
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/FBNet:-Hardware-Aware-Efficient-ConvNet-Design-via-Wu-Dai/45532bffbfbb5553da0b2d0844e95a1b37e59147?sort=total-citations
venue: 2019 IEEE/CVF Conference on Computer Vision and Pattern Recognition (CVPR)
year: 2019
---

# FBNet - Hardware-Aware Efficient ConvNet Design via Differentiable Neural Architecture Search

## Abstract

Designing accurate and efficient ConvNets for mobile devices is challenging because the design space is combinatorially large. Due to this, previous neural architecture search (NAS) methods are computationally expensive. ConvNet architecture optimality depends on factors such as input resolution and target devices. However, existing approaches are too resource demanding for case-by-case redesigns. Also, previous work focuses primarily on reducing FLOPs, but FLOP count does not always reflect actual latency. To address these, we propose a differentiable neural architecture search (DNAS) framework that uses gradient-based methods to optimize ConvNet architectures, avoiding enumerating and training individual architectures separately as in previous methods. FBNets (Facebook-Berkeley-Nets), a family of models discovered by DNAS surpass state-of-the-art models both designed manually and generated automatically. FBNet-B achieves 74.1% top-1 accuracy on ImageNet with 295M FLOPs and 23.1 ms latency on a Samsung S8 phone, 2.4x smaller and 1.5x faster than MobileNetV2-1.3 with similar accuracy. Despite higher accuracy and lower latency than MnasNet, we estimate FBNet-B's search cost is 420x smaller than MnasNet's, at only 216 GPU-hours. Searched for different resolutions and channel sizes, FBNets achieve 1.5% to 6.4% higher accuracy than MobileNetV2. The smallest FBNet achieves 50.2% accuracy and 2.9 ms latency (345 frames per second) on a Samsung S8. Over a Samsung-optimized FBNet, the iPhone-X-optimized model achieves a 1.4x speedup on an iPhone X. FBNet models are open-sourced at https://github. com/facebookresearch/mobile-vision.

## Paper References

1. [MnasNet - Platform-Aware Neural Architecture Search for Mobile](2019-mnasnet-platform-aware-neural-architecture-search-for-mobile.md)
2. Mixed Precision Quantization of ConvNets via Differentiable Neural Architecture Search
3. SqueezeNext - Hardware-Aware Neural Network Design
4. [ShuffleNet V2 - Practical Guidelines for Efficient CNN Architecture Design](2018-shufflenet-v2-practical-guidelines-for-efficient-cnn-architecture-design.md)
5. [Efficient Neural Architecture Search via Parameter Sharing](2018-efficient-neural-architecture-search-via-parameter-sharing.md)
6. [AMC - AutoML for Model Compression and Acceleration on Mobile Devices](2018-amc-automl-for-model-compression-and-acceleration-on-mobile-devices.md)
7. Learning Time/Memory-Efficient Deep Architectures with Budgeted Super Networks
8. [NetAdapt - Platform-Aware Neural Network Adaptation for Mobile Applications](2018-netadapt-platform-aware-neural-network-adaptation-for-mobile-applications.md)
9. [ShuffleNet - An Extremely Efficient Convolutional Neural Network for Mobile Devices](2018-shufflenet-an-extremely-efficient-convolutional-neural-network-for-mobile-devices.md)
10. Synetgy - Algorithm-hardware Co-design for ConvNet Accelerators on Embedded FPGAs
11. SqueezeDet - Unified, Small, Low Power Fully Convolutional Neural Networks for Real-Time Object Detection for Autonomous Driving
12. [DARTS - Differentiable Architecture Search](2019-darts-differentiable-architecture-search.md)
13. - LEVEL ACCURACY WITH 50 X FEWER PARAMETERS AND < 0 . 5 MB MODEL SIZE
14. [Learning Transferable Architectures for Scalable Image Recognition](2018-learning-transferable-architectures-for-scalable-image-recognition.md)
15. SNAS - Stochastic Neural Architecture Search
16. [Progressive Neural Architecture Search](2018-progressive-neural-architecture-search.md)
17. [MobileNets - Efficient Convolutional Neural Networks for Mobile Vision Applications](2017-mobilenets-efficient-convolutional-neural-networks-for-mobile-vision-applications.md)
18. [MobileNetV2 - Inverted Residuals and Linear Bottlenecks](2018-mobilenetv2-inverted-residuals-and-linear-bottlenecks.md)
19. CondenseNet - An Efficient DenseNet Using Learned Group Convolutions
20. [Neural Architecture Search with Reinforcement Learning](2017-neural-architecture-search-with-reinforcement-learning.md)
21. [Going deeper with convolutions](2015-going-deeper-with-convolutions.md)
22. [Very Deep Convolutional Networks for Large-Scale Image Recognition](2015-very-deep-convolutional-networks-for-large-scale-image-recognition.md)
23. [Deep Residual Learning for Image Recognition](2016-deep-residual-learning-for-image-recognition.md)
24. Shift - A Zero FLOP, Zero Parameter Alternative to Spatial Convolutions
25. SqueezeSeg - Convolutional Neural Nets with Recurrent CRF for Real-Time Road-Object Segmentation from 3D LiDAR Point Cloud
26. SqueezeSegV2 - Improved Model Structure and Unsupervised Domain Adaptation for Road-Object Segmentation from a LiDAR Point Cloud
27. [Automatic differentiation in PyTorch](2017-automatic-differentiation-in-pytorch.md)
28. [Adam - A Method for Stochastic Optimization](2015-adam-a-method-for-stochastic-optimization.md)
29. [ImageNet - A large-scale hierarchical image database](2009-imagenet-a-large-scale-hierarchical-image-database.md)
30. Categorical Reparameterization with Gumbel-Softmax
31. The Concrete Distribution - A Continuous Relaxation of Discrete Random Variables
32. Et al
33. ‘L'
