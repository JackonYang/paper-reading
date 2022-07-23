---
title: MobileNetV2 - Inverted Residuals and Linear Bottlenecks
authors:
- M. Sandler
- Andrew G. Howard
- Menglong Zhu
- A. Zhmoginov
- Liang-Chieh Chen
fieldsOfStudy:
- Computer Science
meta_key: 2018-mobilenetv2-inverted-residuals-and-linear-bottlenecks
numCitedBy: 7406
reading_status: TBD
ref_count: 55
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/MobileNetV2:-Inverted-Residuals-and-Linear-Sandler-Howard/dd9cfe7124c734f5a6fc90227d541d3dbcd72ba4?sort=total-citations
venue: 2018 IEEE/CVF Conference on Computer Vision and Pattern Recognition
year: 2018
---

# MobileNetV2 - Inverted Residuals and Linear Bottlenecks

## Abstract

In this paper we describe a new mobile architecture, MobileNetV2, that improves the state of the art performance of mobile models on multiple tasks and benchmarks as well as across a spectrum of different model sizes. We also describe efficient ways of applying these mobile models to object detection in a novel framework we call SSDLite. Additionally, we demonstrate how to build mobile semantic segmentation models through a reduced form of DeepLabv3 which we call Mobile DeepLabv3. is based on an inverted residual structure where the shortcut connections are between the thin bottleneck layers. The intermediate expansion layer uses lightweight depthwise convolutions to filter features as a source of non-linearity. Additionally, we find that it is important to remove non-linearities in the narrow layers in order to maintain representational power. We demonstrate that this improves performance and provide an intuition that led to this design. Finally, our approach allows decoupling of the input/output domains from the expressiveness of the transformation, which provides a convenient framework for further analysis. We measure our performance on ImageNet [1] classification, COCO object detection [2], VOC image segmentation [3]. We evaluate the trade-offs between accuracy, and number of operations measured by multiply-adds (MAdd), as well as actual latency, and the number of parameters.

## Paper References

1. [Aggregated Residual Transformations for Deep Neural Networks](2017-aggregated-residual-transformations-for-deep-neural-networks.md)
2. ParseNet - Looking Wider to See Better
3. [DeepLab - Semantic Image Segmentation with Deep Convolutional Nets, Atrous Convolution, and Fully Connected CRFs](2018-deeplab-semantic-image-segmentation-with-deep-convolutional-nets-atrous-convolution-and-fully-connected-crfs.md)
4. [MobileNets - Efficient Convolutional Neural Networks for Mobile Vision Applications](2017-mobilenets-efficient-convolutional-neural-networks-for-mobile-vision-applications.md)
5. Rethinking Atrous Convolution for Semantic Image Segmentation
6. [SSD - Single Shot MultiBox Detector](2016-ssd-single-shot-multibox-detector.md)
7. [Learning Transferable Architectures for Scalable Image Recognition](2018-learning-transferable-architectures-for-scalable-image-recognition.md)
8. [Deep Pyramidal Residual Networks](2017-deep-pyramidal-residual-networks.md)
9. [Speed/Accuracy Trade-Offs for Modern Convolutional Object Detectors](2017-speed-accuracy-trade-offs-for-modern-convolutional-object-detectors.md)
10. [Inception-v4, Inception-ResNet and the Impact of Residual Connections on Learning](2017-inception-v4-inception-resnet-and-the-impact-of-residual-connections-on-learning.md)
11. [Very Deep Convolutional Networks for Large-Scale Image Recognition](2015-very-deep-convolutional-networks-for-large-scale-image-recognition.md)
12. Modeling local and global deformations in Deep Learning - Epitomic convolution, Multiple Instance Learning, and sliding window detection
13. [YOLO9000 - Better, Faster, Stronger](2017-yolo9000-better-faster-stronger.md)
14. [R-FCN - Object Detection via Region-based Fully Convolutional Networks](2016-r-fcn-object-detection-via-region-based-fully-convolutional-networks.md)
15. [OverFeat - Integrated Recognition, Localization and Detection using Convolutional Networks](2014-overfeat-integrated-recognition-localization-and-detection-using-convolutional-networks.md)
16. [Microsoft COCO - Common Objects in Context](2014-microsoft-coco-common-objects-in-context.md)
17. [Deep Residual Learning for Image Recognition](2016-deep-residual-learning-for-image-recognition.md)
18. Learning Time/Memory-Efficient Deep Architectures with Budgeted Super Networks
19. Dynamic Network Surgery for Efficient DNNs
20. [Going deeper with convolutions](2015-going-deeper-with-convolutions.md)
21. [Xception - Deep Learning with Depthwise Separable Convolutions](2017-xception-deep-learning-with-depthwise-separable-convolutions.md)
22. [Faster R-CNN - Towards Real-Time Object Detection with Region Proposal Networks](2015-faster-r-cnn-towards-real-time-object-detection-with-region-proposal-networks.md)
23. [The Pascal Visual Object Classes Challenge - A Retrospective](2014-the-pascal-visual-object-classes-challenge-a-retrospective.md)
24. [Pruning Filters for Efficient ConvNets](2017-pruning-filters-for-efficient-convnets.md)
25. [Caffe - Convolutional Architecture for Fast Feature Embedding](2014-caffe-convolutional-architecture-for-fast-feature-embedding.md)
26. Design of Efficient Convolutional Layers using Single Intra-channel Convolution, Topological Subdivisioning and Spatial Bottleneck Structure
27. DSD - Regularizing Deep Neural Networks with Dense-Sparse-Dense Training Flow
28. [Large-Scale Evolution of Image Classifiers](2017-large-scale-evolution-of-image-classifiers.md)
29. Connectivity Learning in Multi-Branch Networks
30. [Learning both Weights and Connections for Efficient Neural Network](2015-learning-both-weights-and-connections-for-efficient-neural-network.md)
31. [ShuffleNet - An Extremely Efficient Convolutional Neural Network for Mobile Devices](2018-shufflenet-an-extremely-efficient-convolutional-neural-network-for-mobile-devices.md)
32. Learning Time-Efficient Deep Architectures with Budgeted Super Networks
33. Residual Networks are Exponential Ensembles of Relatively Shallow Networks
34. The Power of Sparsity in Convolutional Neural Networks
35. [ImageNet classification with deep convolutional neural networks](2012-imagenet-classification-with-deep-convolutional-neural-networks.md)
36. [Neural Architecture Search with Reinforcement Learning](2017-neural-architecture-search-with-reinforcement-learning.md)
37. Scalable Bayesian Optimization Using Deep Neural Networks
38. [TensorFlow - Large-Scale Machine Learning on Heterogeneous Distributed Systems](2016-tensorflow-large-scale-machine-learning-on-heterogeneous-distributed-systems.md)
39. On the Number of Linear Regions of Deep Neural Networks
40. [ImageNet Large Scale Visual Recognition Challenge](2015-imagenet-large-scale-visual-recognition-challenge.md)
41. [Practical Bayesian Optimization of Machine Learning Algorithms](2012-practical-bayesian-optimization-of-machine-learning-algorithms.md)
42. [Semantic contours from inverse detectors](2011-semantic-contours-from-inverse-detectors.md)
43. Second Order Derivatives for Network Pruning - Optimal Brain Surgeon
44. [Random Search for Hyper-Parameter Optimization](2012-random-search-for-hyper-parameter-optimization.md)
45. Optimal Brain Damage
46. In Advances in Neural Information Processing Systems
47. A real-time algorithm for signal analysis with the help of the wavelet transform
