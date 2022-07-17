---
title: Speed/Accuracy Trade-Offs for Modern Convolutional Object Detectors
authors:
- Jonathan Huang
- V. Rathod
- Chen Sun
- Menglong Zhu
- A. Balan
- A. Fathi
- Ian S. Fischer
- Z. Wojna
- Yang Song
- S. Guadarrama
- K. Murphy
fieldsOfStudy:
- Computer Science
meta_key: 2017-speed-accuracy-trade-offs-for-modern-convolutional-object-detectors
numCitedBy: 2004
reading_status: TBD
ref_count: 59
tags:
- gen-from-ref
- other-default
- paper
venue: 2017 IEEE Conference on Computer Vision and Pattern Recognition (CVPR)
year: 2017
---

# Speed/Accuracy Trade-Offs for Modern Convolutional Object Detectors

## Abstract

The goal of this paper is to serve as a guide for selecting a detection architecture that achieves the right speed/memory/accuracy balance for a given application and platform. To this end, we investigate various ways to trade accuracy for speed and memory usage in modern convolutional object detection systems. A number of successful systems have been proposed in recent years, but apples-toapples comparisons are difficult due to different base feature extractors (e.g., VGG, Residual Networks), different default image resolutions, as well as different hardware and software platforms. We present a unified implementation of the Faster R-CNN [30], R-FCN [6] and SSD [25] systems, which we view as meta-architectures and trace out the speed/accuracy trade-off curve created by using alternative feature extractors and varying other critical parameters such as image size within each of these meta-architectures. On one extreme end of this spectrum where speed and memory are critical, we present a detector that achieves real time speeds and can be deployed on a mobile device. On the opposite end in which accuracy is critical, we present a detector that achieves state-of-the-art performance measured on the COCO detection task.

## Paper References

1. [Feature Pyramid Networks for Object Detection](2017-feature-pyramid-networks-for-object-detection)
2. PVANET - Deep but Lightweight Neural Networks for Real-time Object Detection
3. [R-FCN - Object Detection via Region-based Fully Convolutional Networks](2016-r-fcn-object-detection-via-region-based-fully-convolutional-networks)
4. [Rethinking the Inception Architecture for Computer Vision](2016-rethinking-the-inception-architecture-for-computer-vision)
5. [SSD - Single Shot MultiBox Detector](2016-ssd-single-shot-multibox-detector)
6. Scalable Object Detection Using Deep Neural Networks
7. [Rich Feature Hierarchies for Accurate Object Detection and Semantic Segmentation](2014-rich-feature-hierarchies-for-accurate-object-detection-and-semantic-segmentation)
8. Scalable, High-Quality Object Detection
9. [Faster R-CNN - Towards Real-Time Object Detection with Region Proposal Networks](2015-faster-r-cnn-towards-real-time-object-detection-with-region-proposal-networks)
10. [Very Deep Convolutional Networks for Large-Scale Image Recognition](2015-very-deep-convolutional-networks-for-large-scale-image-recognition)
11. CRAFT Objects from Images
12. [Instance-Aware Semantic Segmentation via Multi-task Network Cascades](2016-instance-aware-semantic-segmentation-via-multi-task-network-cascades)
13. [Training Region-Based Object Detectors with Online Hard Example Mining](2016-training-region-based-object-detectors-with-online-hard-example-mining)
14. A MultiPath Network for Object Detection
15. [DSSD - Deconvolutional Single Shot Detector](2017-dssd-deconvolutional-single-shot-detector)
16. [Caffe - Convolutional Architecture for Fast Feature Embedding](2014-caffe-convolutional-architecture-for-fast-feature-embedding)
17. [YOLO9000 - Better, Faster, Stronger](2017-yolo9000-better-faster-stronger)
18. [Going deeper with convolutions](2015-going-deeper-with-convolutions)
19. An Analysis of Deep Neural Network Models for Practical Applications
20. [OverFeat - Integrated Recognition, Localization and Detection using Convolutional Networks](2014-overfeat-integrated-recognition-localization-and-detection-using-convolutional-networks)
21. [Inception-v4, Inception-ResNet and the Impact of Residual Connections on Learning](2017-inception-v4-inception-resnet-and-the-impact-of-residual-connections-on-learning)
22. [Fast R-CNN](2015-fast-r-cnn)
23. [Deep Neural Networks for Object Detection](2013-deep-neural-networks-for-object-detection)
24. [Deep Residual Learning for Image Recognition](2016-deep-residual-learning-for-image-recognition)
25. MobileNets - Efficient Convolutional Neural Networks for Mobile Vision Applications
26. [ImageNet classification with deep convolutional neural networks](2012-imagenet-classification-with-deep-convolutional-neural-networks)
27. [Inside-Outside Net - Detecting Objects in Context with Skip Pooling and Recurrent Neural Networks](2016-inside-outside-net-detecting-objects-in-context-with-skip-pooling-and-recurrent-neural-networks)
28. Contextual Priming and Feedback for Faster R-CNN
29. [Microsoft COCO - Common Objects in Context](2014-microsoft-coco-common-objects-in-context)
30. [ImageNet Large Scale Visual Recognition Challenge](2015-imagenet-large-scale-visual-recognition-challenge)
31. [Robust Real-Time Face Detection](2001-robust-real-time-face-detection)
32. Fast Single Shot Detection and Pose Estimation
33. [Batch Normalization - Accelerating Deep Network Training by Reducing Internal Covariate Shift](2015-batch-normalization-accelerating-deep-network-training-by-reducing-internal-covariate-shift)
34. [Spatial Transformer Networks](2015-spatial-transformer-networks)
35. Why M Heads are Better than One - Training a Diverse Ensemble of Deep Networks
36. [Large Scale Distributed Deep Networks](2012-large-scale-distributed-deep-networks)
37. [DRAW - A Recurrent Neural Network For Image Generation](2015-draw-a-recurrent-neural-network-for-image-generation)
38. Visual Discovery at Pinterest
39. [Torch7 - A Matlab-like Environment for Machine Learning](2011-torch7-a-matlab-like-environment-for-machine-learning)
40. [You Only Look Once - Unified, Real-Time Object Detection](2016-you-only-look-once-unified-real-time-object-detection)
41. On robust estimation of the location parameter
