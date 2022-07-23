---
title: MnasNet - Platform-Aware Neural Architecture Search for Mobile
authors:
- Mingxing Tan
- Bo Chen
- Ruoming Pang
- Vijay Vasudevan
- Quoc V. Le
fieldsOfStudy:
- Computer Science
meta_key: 2019-mnasnet-platform-aware-neural-architecture-search-for-mobile
numCitedBy: 1613
reading_status: TBD
ref_count: 52
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/MnasNet:-Platform-Aware-Neural-Architecture-Search-Tan-Chen/693c97ecedb0a84539b7162c95e89fa3cd84ca73?sort=total-citations
venue: 2019 IEEE/CVF Conference on Computer Vision and Pattern Recognition (CVPR)
year: 2019
---

[semanticscholar url](https://www.semanticscholar.org/paper/MnasNet:-Platform-Aware-Neural-Architecture-Search-Tan-Chen/693c97ecedb0a84539b7162c95e89fa3cd84ca73?sort=total-citations)

# MnasNet - Platform-Aware Neural Architecture Search for Mobile

## Abstract

Designing convolutional neural networks (CNN) for mobile devices is challenging because mobile models need to be small and fast, yet still accurate. Although significant efforts have been dedicated to design and improve mobile CNNs on all dimensions, it is very difficult to manually balance these trade-offs when there are so many architectural possibilities to consider. In this paper, we propose an automated mobile neural architecture search (MNAS) approach, which explicitly incorporate model latency into the main objective so that the search can identify a model that achieves a good trade-off between accuracy and latency. Unlike previous work, where latency is considered via another, often inaccurate proxy (e.g., FLOPS), our approach directly measures real-world inference latency by executing the model on mobile phones. To further strike the right balance between flexibility and search space size, we propose a novel factorized hierarchical search space that encourages layer diversity throughout the network. Experimental results show that our approach consistently outperforms state-of-the-art mobile CNN models across multiple vision tasks. On the ImageNet classification task, our MnasNet achieves 75.2% top-1 accuracy with 78ms latency on a Pixel phone, which is 1.8× faster than MobileNetV2 with 0.5% higher accuracy and 2.3× faster than NASNet with 1.2% higher accuracy. Our MnasNet also achieves better mAP quality than MobileNets for COCO object detection. Code is at https://github.com/tensorflow/tpu/tree/master/models/official/mnasnet.

## Paper References

1. [MobileNetV2 - Inverted Residuals and Linear Bottlenecks](2018-mobilenetv2-inverted-residuals-and-linear-bottlenecks.md)
2. [NetAdapt - Platform-Aware Neural Network Adaptation for Mobile Applications](2018-netadapt-platform-aware-neural-network-adaptation-for-mobile-applications.md)
3. DPP-Net - Device-aware Progressive Search for Pareto-optimal Neural Architectures
4. [ShuffleNet - An Extremely Efficient Convolutional Neural Network for Mobile Devices](2018-shufflenet-an-extremely-efficient-convolutional-neural-network-for-mobile-devices.md)
5. [MobileNets - Efficient Convolutional Neural Networks for Mobile Vision Applications](2017-mobilenets-efficient-convolutional-neural-networks-for-mobile-vision-applications.md)
6. PPP-Net - Platform-aware Progressive Search for Pareto-optimal Neural Architectures
7. Multi-objective Architecture Search for CNNs
8. [ShuffleNet V2 - Practical Guidelines for Efficient CNN Architecture Design](2018-shufflenet-v2-practical-guidelines-for-efficient-cnn-architecture-design.md)
9. [AMC - AutoML for Model Compression and Acceleration on Mobile Devices](2018-amc-automl-for-model-compression-and-acceleration-on-mobile-devices.md)
10. [Learning Transferable Architectures for Scalable Image Recognition](2018-learning-transferable-architectures-for-scalable-image-recognition.md)
11. [Efficient Neural Architecture Search via Parameter Sharing](2018-efficient-neural-architecture-search-via-parameter-sharing.md)
12. SqueezeNext - Hardware-Aware Neural Network Design
13. Resource-Efficient Neural Architect
14. [Squeeze-and-Excitation Networks](2020-squeeze-and-excitation-networks.md)
15. [Neural Architecture Search with Reinforcement Learning](2017-neural-architecture-search-with-reinforcement-learning.md)
16. Reinforcement Learning for Architecture Search by Network Transformation
17. - LEVEL ACCURACY WITH 50 X FEWER PARAMETERS AND < 0 . 5 MB MODEL SIZE
18. CondenseNet - An Efficient DenseNet Using Learned Group Convolutions
19. [Progressive Neural Architecture Search](2018-progressive-neural-architecture-search.md)
20. [Inception-v4, Inception-ResNet and the Impact of Residual Connections on Learning](2017-inception-v4-inception-resnet-and-the-impact-of-residual-connections-on-learning.md)
21. [Designing Neural Network Architectures using Reinforcement Learning](2017-designing-neural-network-architectures-using-reinforcement-learning.md)
22. [Accurate, Large Minibatch SGD - Training ImageNet in 1 Hour](2017-accurate-large-minibatch-sgd-training-imagenet-in-1-hour.md)
23. [SqueezeNet - AlexNet-level accuracy with 50x fewer parameters and <1MB model size](2016-squeezenet-alexnet-level-accuracy-with-50x-fewer-parameters-and-1mb-model-size.md)
24. [Quantization and Training of Neural Networks for Efficient Integer-Arithmetic-Only Inference](2018-quantization-and-training-of-neural-networks-for-efficient-integer-arithmetic-only-inference.md)
25. [DARTS - Differentiable Architecture Search](2019-darts-differentiable-architecture-search.md)
26. [Deep Compression - Compressing Deep Neural Network with Pruning, Trained Quantization and Huffman Coding](2016-deep-compression-compressing-deep-neural-network-with-pruning-trained-quantization-and-huffman-coding.md)
27. [Deep Residual Learning for Image Recognition](2016-deep-residual-learning-for-image-recognition.md)
28. Neural Architecture Optimization
29. MorphNet - Fast & Simple Resource-Constrained Structure Learning of Deep Networks
30. [Regularized Evolution for Image Classifier Architecture Search](2019-regularized-evolution-for-image-classifier-architecture-search.md)
31. [YOLO9000 - Better, Faster, Stronger](2017-yolo9000-better-faster-stronger.md)
32. [SSD - Single Shot MultiBox Detector](2016-ssd-single-shot-multibox-detector.md)
33. [Hierarchical Representations for Efficient Architecture Search](2018-hierarchical-representations-for-efficient-architecture-search.md)
34. Neural Architecture Search with Bayesian Optimisation and Optimal Transport
35. [Microsoft COCO - Common Objects in Context](2014-microsoft-coco-common-objects-in-context.md)
36. [ImageNet Large Scale Visual Recognition Challenge](2015-imagenet-large-scale-visual-recognition-challenge.md)
37. Novel Dataset for Fine-Grained Image Categorization - Stanford Dogs
38. [Proximal Policy Optimization Algorithms](2017-proximal-policy-optimization-algorithms.md)
39. Et al
40. Multi-objective Optimization
41. ‘S'
42. ‘L'
43. MONAS - Multi-Objective Neural Architecture Search using Reinforcement Learning
