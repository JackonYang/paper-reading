---
title: Focal Loss for Dense Object Detection
authors:
- Tsung-Yi Lin
- Priya Goyal
- Ross B. Girshick
- Kaiming He
- "Piotr Doll\xE1r"
fieldsOfStudy:
- Computer Science
meta_key: 2017-focal-loss-for-dense-object-detection
numCitedBy: 3944
reading_status: TBD
ref_count: 49
tags:
- gen-from-ref
- other-default
- paper
venue: 2017 IEEE International Conference on Computer Vision (ICCV)
year: 2017
---

# Focal Loss for Dense Object Detection

## Abstract

The highest accuracy object detectors to date are based on a two-stage approach popularized by R-CNN, where a classifier is applied to a sparse set of candidate object locations. In contrast, one-stage detectors that are applied over a regular, dense sampling of possible object locations have the potential to be faster and simpler, but have trailed the accuracy of two-stage detectors thus far. In this paper, we investigate why this is the case. We discover that the extreme foreground-background class imbalance encountered during training of dense detectors is the central cause. We propose to address this class imbalance by reshaping the standard cross entropy loss such that it down-weights the loss assigned to well-classified examples. Our novel Focal Loss focuses training on a sparse set of hard examples and prevents the vast number of easy negatives from overwhelming the detector during training. To evaluate the effectiveness of our loss, we design and train a simple dense detector we call RetinaNet. Our results show that when trained with the focal loss, RetinaNet is able to match the speed of previous one-stage detectors while surpassing the accuracy of all existing state-of-the-art two-stage detectors.

## Paper References

1. [Rich Feature Hierarchies for Accurate Object Detection and Semantic Segmentation](2014-rich-feature-hierarchies-for-accurate-object-detection-and-semantic-segmentation)
2. [R-FCN - Object Detection via Region-based Fully Convolutional Networks](2016-r-fcn-object-detection-via-region-based-fully-convolutional-networks)
3. Learning to Segment Object Candidates
4. [Training Region-Based Object Detectors with Online Hard Example Mining](2016-training-region-based-object-detectors-with-online-hard-example-mining)
5. [SSD - Single Shot MultiBox Detector](2016-ssd-single-shot-multibox-detector)
6. [Faster R-CNN - Towards Real-Time Object Detection with Region Proposal Networks](2015-faster-r-cnn-towards-real-time-object-detection-with-region-proposal-networks)
7. [Feature Pyramid Networks for Object Detection](2017-feature-pyramid-networks-for-object-detection)
8. Scalable Object Detection Using Deep Neural Networks
9. [Rapid object detection using a boosted cascade of simple features](2001-rapid-object-detection-using-a-boosted-cascade-of-simple-features)
10. [Speed/Accuracy Trade-Offs for Modern Convolutional Object Detectors](2017-speed-accuracy-trade-offs-for-modern-convolutional-object-detectors)
11. [DSSD - Deconvolutional Single Shot Detector](2017-dssd-deconvolutional-single-shot-detector)
12. [Learning to Refine Object Segments](2016-learning-to-refine-object-segments)
13. [Selective Search for Object Recognition](2013-selective-search-for-object-recognition)
14. [Microsoft COCO - Common Objects in Context](2014-microsoft-coco-common-objects-in-context)
15. [Edge Boxes - Locating Object Proposals from Edges](2014-edge-boxes-locating-object-proposals-from-edges)
16. Loss Max-Pooling for Semantic Image Segmentation
17. [YOLO9000 - Better, Faster, Stronger](2017-yolo9000-better-faster-stronger)
18. [Deep Residual Learning for Image Recognition](2016-deep-residual-learning-for-image-recognition)
19. [OverFeat - Integrated Recognition, Localization and Detection using Convolutional Networks](2014-overfeat-integrated-recognition-localization-and-detection-using-convolutional-networks)
20. Beyond Skip Connections - Top-Down Modulation for Object Detection
21. [Fast R-CNN](2015-fast-r-cnn)
22. [Inside-Outside Net - Detecting Objects in Context with Skip Pooling and Recurrent Neural Networks](2016-inside-outside-net-detecting-objects-in-context-with-skip-pooling-and-recurrent-neural-networks)
23. [The Pascal Visual Object Classes (VOC) Challenge](2009-the-pascal-visual-object-classes-voc-challenge)
24. Learning and example selection for object and pattern detection
25. [ImageNet classification with deep convolutional neural networks](2012-imagenet-classification-with-deep-convolutional-neural-networks)
26. Cascade object detection with deformable part models
27. Integral Channel Features
28. [Fully Convolutional Networks for Semantic Segmentation](2017-fully-convolutional-networks-for-semantic-segmentation)
29. [Spatial Pyramid Pooling in Deep Convolutional Networks for Visual Recognition](2015-spatial-pyramid-pooling-in-deep-convolutional-networks-for-visual-recognition)
30. [Histograms of oriented gradients for human detection](2005-histograms-of-oriented-gradients-for-human-detection)
31. [Aggregated Residual Transformations for Deep Neural Networks](2017-aggregated-residual-transformations-for-deep-neural-networks)
32. [Inception-v4, Inception-ResNet and the Impact of Residual Connections on Learning](2017-inception-v4-inception-resnet-and-the-impact-of-residual-connections-on-learning)
33. Human Face Detection in Visual Scenes
34. Original approach for the localisation of objects in images
35. Backpropagation Applied to Handwritten Zip Code Recognition
36. [The Elements of Statistical Learning](2003-the-elements-of-statistical-learning)
37. K
38. Обнаружение транспортных средств на изображениях загородных шоссе на основе метода Single shot multibox Detector
39. [You Only Look Once - Unified, Real-Time Object Detection](2016-you-only-look-once-unified-real-time-object-detection)
