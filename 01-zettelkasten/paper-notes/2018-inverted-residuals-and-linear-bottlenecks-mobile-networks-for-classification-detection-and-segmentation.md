---
title: Inverted Residuals and Linear Bottlenecks - Mobile Networks for Classification, Detection and Segmentation
authors:
- M. Sandler
- Andrew G. Howard
- Menglong Zhu
- A. Zhmoginov
- Liang-Chieh Chen
fieldsOfStudy:
- Computer Science
meta_key: 2018-inverted-residuals-and-linear-bottlenecks-mobile-networks-for-classification-detection-and-segmentation
numCitedBy: 609
reading_status: TBD
ref_count: 44
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Inverted-Residuals-and-Linear-Bottlenecks:-Mobile-Sandler-Howard/16b42f570873fc03d503090adb0a75a467c5f30c?sort=total-citations
venue: ArXiv
year: 2018
---

[semanticscholar url](https://www.semanticscholar.org/paper/Inverted-Residuals-and-Linear-Bottlenecks:-Mobile-Sandler-Howard/16b42f570873fc03d503090adb0a75a467c5f30c?sort=total-citations)

# Inverted Residuals and Linear Bottlenecks - Mobile Networks for Classification, Detection and Segmentation

## Abstract

In this paper we describe a new mobile architecture, MobileNetV2, that improves the state of the art performance of mobile models on multiple tasks and benchmarks as well as across a spectrum of different model sizes. We also describe efficient ways of applying these mobile models to object detection in a novel framework we call SSDLite. Additionally, we demonstrate how to build mobile semantic segmentation models through a reduced form of DeepLabv3 which we call Mobile DeepLabv3. 
The MobileNetV2 architecture is based on an inverted residual structure where the input and output of the residual block are thin bottleneck layers opposite to traditional residual models which use expanded representations in the input an MobileNetV2 uses lightweight depthwise convolutions to filter features in the intermediate expansion layer. Additionally, we find that it is important to remove non-linearities in the narrow layers in order to maintain representational power. We demonstrate that this improves performance and provide an intuition that led to this design. Finally, our approach allows decoupling of the input/output domains from the expressiveness of the transformation, which provides a convenient framework for further analysis. We measure our performance on Imagenet classification, COCO object detection, VOC image segmentation. We evaluate the trade-offs between accuracy, and number of operations measured by multiply-adds (MAdd), as well as the number of parameters

## Paper References

1. [Deep Residual Learning for Image Recognition](2016-deep-residual-learning-for-image-recognition.md)
2. [ShuffleNet - An Extremely Efficient Convolutional Neural Network for Mobile Devices](2018-shufflenet-an-extremely-efficient-convolutional-neural-network-for-mobile-devices.md)
3. [SSD - Single Shot MultiBox Detector](2016-ssd-single-shot-multibox-detector.md)
4. Rethinking Atrous Convolution for Semantic Image Segmentation
5. [MobileNets - Efficient Convolutional Neural Networks for Mobile Vision Applications](2017-mobilenets-efficient-convolutional-neural-networks-for-mobile-vision-applications.md)
6. [DeepLab - Semantic Image Segmentation with Deep Convolutional Nets, Atrous Convolution, and Fully Connected CRFs](2018-deeplab-semantic-image-segmentation-with-deep-convolutional-nets-atrous-convolution-and-fully-connected-crfs.md)
7. A real-time algorithm for signal analysis with the help of the wavelet transform
8. [Learning Transferable Architectures for Scalable Image Recognition](2018-learning-transferable-architectures-for-scalable-image-recognition.md)
9. Connectivity Learning in Multi-Branch Networks
10. Learning Time-Efficient Deep Architectures with Budgeted Super Networks
11. [Large-Scale Evolution of Image Classifiers](2017-large-scale-evolution-of-image-classifiers.md)
12. The Power of Sparsity in Convolutional Neural Networks
13. Design of Efficient Convolutional Layers using Single Intra-channel Convolution, Topological Subdivisioning and Spatial Bottleneck Structure
14. [YOLO9000 - Better, Faster, Stronger](2017-yolo9000-better-faster-stronger.md)
15. [Aggregated Residual Transformations for Deep Neural Networks](2017-aggregated-residual-transformations-for-deep-neural-networks.md)
16. [Speed/Accuracy Trade-Offs for Modern Convolutional Object Detectors](2017-speed-accuracy-trade-offs-for-modern-convolutional-object-detectors.md)
17. [Neural Architecture Search with Reinforcement Learning](2017-neural-architecture-search-with-reinforcement-learning.md)
18. [Xception - Deep Learning with Depthwise Separable Convolutions](2017-xception-deep-learning-with-depthwise-separable-convolutions.md)
19. [Pruning Filters for Efficient ConvNets](2017-pruning-filters-for-efficient-convnets.md)
20. Dynamic Network Surgery for Efficient DNNs
21. DSD - Regularizing Deep Neural Networks with Dense-Sparse-Dense Training Flow
22. [R-FCN - Object Detection via Region-based Fully Convolutional Networks](2016-r-fcn-object-detection-via-region-based-fully-convolutional-networks.md)
23. Residual Networks are Exponential Ensembles of Relatively Shallow Networks
24. [Inception-v4, Inception-ResNet and the Impact of Residual Connections on Learning](2017-inception-v4-inception-resnet-and-the-impact-of-residual-connections-on-learning.md)
25. [TensorFlow - Large-Scale Machine Learning on Heterogeneous Distributed Systems](2016-tensorflow-large-scale-machine-learning-on-heterogeneous-distributed-systems.md)
26. Modeling local and global deformations in Deep Learning - Epitomic convolution, Multiple Instance Learning, and sliding window detection
27. Scalable Bayesian Optimization Using Deep Neural Networks
28. ParseNet - Looking Wider to See Better
29. [Learning both Weights and Connections for Efficient Neural Network](2015-learning-both-weights-and-connections-for-efficient-neural-network.md)
30. [Faster R-CNN - Towards Real-Time Object Detection with Region Proposal Networks](2015-faster-r-cnn-towards-real-time-object-detection-with-region-proposal-networks.md)
31. [Very Deep Convolutional Networks for Large-Scale Image Recognition](2015-very-deep-convolutional-networks-for-large-scale-image-recognition.md)
32. [The Pascal Visual Object Classes Challenge - A Retrospective](2014-the-pascal-visual-object-classes-challenge-a-retrospective.md)
33. [Microsoft COCO - Common Objects in Context](2014-microsoft-coco-common-objects-in-context.md)
34. [ImageNet Large Scale Visual Recognition Challenge](2015-imagenet-large-scale-visual-recognition-challenge.md)
35. Optimal Brain Damage
36. Second Order Derivatives for Network Pruning - Optimal Brain Surgeon
37. [Semantic contours from inverse detectors](2011-semantic-contours-from-inverse-detectors.md)
38. [Random Search for Hyper-Parameter Optimization](2012-random-search-for-hyper-parameter-optimization.md)
39. [Going deeper with convolutions](2015-going-deeper-with-convolutions.md)
40. [Caffe - Convolutional Architecture for Fast Feature Embedding](2014-caffe-convolutional-architecture-for-fast-feature-embedding.md)
41. On the Number of Linear Regions of Deep Neural Networks
42. [OverFeat - Integrated Recognition, Localization and Detection using Convolutional Networks](2014-overfeat-integrated-recognition-localization-and-detection-using-convolutional-networks.md)
