---
title: SSD - Single Shot MultiBox Detector
authors:
- W. Liu
- Dragomir Anguelov
- D. Erhan
- Christian Szegedy
- Scott E. Reed
- Cheng-Yang Fu
- A. Berg
fieldsOfStudy:
- Computer Science
meta_key: 2016-ssd-single-shot-multibox-detector
numCitedBy: 15552
reading_status: TBD
ref_count: 40
tags:
- gen-from-ref
- paper
venue: ECCV
year: 2016
---

# SSD - Single Shot MultiBox Detector

## Abstract

We present a method for detecting objects in images using a single deep neural network. Our approach, named SSD, discretizes the output space of bounding boxes into a set of default boxes over different aspect ratios and scales per feature map location. At prediction time, the network generates scores for the presence of each object category in each default box and produces adjustments to the box to better match the object shape. Additionally, the network combines predictions from multiple feature maps with different resolutions to naturally handle objects of various sizes. Our SSD model is simple relative to methods that require object proposals because it completely eliminates proposal generation and subsequent pixel or feature resampling stage and encapsulates all computation in a single network. This makes SSD easy to train and straightforward to integrate into systems that require a detection component. Experimental results on the PASCAL VOC, MS COCO, and ILSVRC datasets confirm that SSD has comparable accuracy to methods that utilize an additional object proposal step and is much faster, while providing a unified framework for both training and inference. Compared to other single stage methods, SSD has much better accuracy, even with a smaller input image size. For $300\times 300$ input, SSD achieves 72.1% mAP on VOC2007 test at 58 FPS on a Nvidia Titan X and for $500\times 500$ input, SSD achieves 75.1% mAP, outperforming a comparable state of the art Faster R-CNN model. Code is available at this https URL .

## Paper References

1. Scalable Object Detection Using Deep Neural Networks
2. [Feature Pyramid Networks for Object Detection](2017-feature-pyramid-networks-for-object-detection)
3. [Rich Feature Hierarchies for Accurate Object Detection and Semantic Segmentation](2014-rich-feature-hierarchies-for-accurate-object-detection-and-semantic-segmentation)
4. [Faster R-CNN - Towards Real-Time Object Detection with Region Proposal Networks](2015-faster-r-cnn-towards-real-time-object-detection-with-region-proposal-networks)
5. Scalable, High-Quality Object Detection
6. [Semantic Image Segmentation with Deep Convolutional Nets and Fully Connected CRFs](2015-semantic-image-segmentation-with-deep-convolutional-nets-and-fully-connected-crfs)
7. [OverFeat - Integrated Recognition, Localization and Detection using Convolutional Networks](2014-overfeat-integrated-recognition-localization-and-detection-using-convolutional-networks)
8. [Rethinking the Inception Architecture for Computer Vision](2016-rethinking-the-inception-architecture-for-computer-vision)
9. [Spatial Pyramid Pooling in Deep Convolutional Networks for Visual Recognition](2015-spatial-pyramid-pooling-in-deep-convolutional-networks-for-visual-recognition)
10. [Selective Search for Object Recognition](2013-selective-search-for-object-recognition)
11. Object Detectors Emerge in Deep Scene CNNs
12. [Fully Convolutional Networks for Semantic Segmentation](2017-fully-convolutional-networks-for-semantic-segmentation)
13. [Hypercolumns for object segmentation and fine-grained localization](2015-hypercolumns-for-object-segmentation-and-fine-grained-localization)
14. [Very Deep Convolutional Networks for Large-Scale Image Recognition](2015-very-deep-convolutional-networks-for-large-scale-image-recognition)
15. [Inside-Outside Net - Detecting Objects in Context with Skip Pooling and Recurrent Neural Networks](2016-inside-outside-net-detecting-objects-in-context-with-skip-pooling-and-recurrent-neural-networks)
16. [Deep Residual Learning for Image Recognition](2016-deep-residual-learning-for-image-recognition)
17. A discriminatively trained, multiscale, deformable part model
18. [Fast R-CNN](2015-fast-r-cnn)
19. [Caffe - Convolutional Architecture for Fast Feature Embedding](2014-caffe-convolutional-architecture-for-fast-feature-embedding)
20. ParseNet - Looking Wider to See Better
21. [ImageNet Large Scale Visual Recognition Challenge](2015-imagenet-large-scale-visual-recognition-challenge)
22. [The Pascal Visual Object Classes (VOC) Challenge](2009-the-pascal-visual-object-classes-voc-challenge)
23. [ImageNet classification with deep convolutional neural networks](2012-imagenet-classification-with-deep-convolutional-neural-networks)
24. Diagnosing Error in Object Detectors
25. Some Improvements on Deep Convolutional Neural Network Based Image Classification
26. [Going deeper with convolutions](2015-going-deeper-with-convolutions)
27. [Batch Normalization - Accelerating Deep Network Training by Reducing Internal Covariate Shift](2015-batch-normalization-accelerating-deep-network-training-by-reducing-internal-covariate-shift)
28. Objects in Context
29. [Understanding the difficulty of training deep feedforward neural networks](2010-understanding-the-difficulty-of-training-deep-feedforward-neural-networks)
30. [Adaptive Subgradient Methods for Online Learning and Stochastic Optimization](2010-adaptive-subgradient-methods-for-online-learning-and-stochastic-optimization)
31. A real-time algorithm for signal analysis with the help of the wavelet transform
32. Is Faster R-CNN Doing Well for Pedestrian Detection?
33. [You Only Look Once - Unified, Real-Time Object Detection](2016-you-only-look-once-unified-real-time-object-detection)
