---
title: HyperNet - Towards Accurate Region Proposal Generation and Joint Object Detection
authors:
- Tao Kong
- Anbang Yao
- Yurong Chen
- F. Sun
fieldsOfStudy:
- Computer Science
meta_key: 2016-hypernet-towards-accurate-region-proposal-generation-and-joint-object-detection
numCitedBy: 611
reading_status: TBD
ref_count: 40
tags:
- gen-from-ref
- other-default
- paper
venue: 2016 IEEE Conference on Computer Vision and Pattern Recognition (CVPR)
year: 2016
---

# HyperNet - Towards Accurate Region Proposal Generation and Joint Object Detection

## Abstract

Almost all of the current top-performing object detection networks employ region proposals to guide the search for object instances. State-of-the-art region proposal methods usually need several thousand proposals to get high recall, thus hurting the detection efficiency. Although the latest Region Proposal Network method gets promising detection accuracy with several hundred proposals, it still struggles in small-size object detection and precise localization (e.g., large IoU thresholds), mainly due to the coarseness of its feature maps. In this paper, we present a deep hierarchical network, namely HyperNet, for handling region proposal generation and object detection jointly. Our HyperNet is primarily based on an elaborately designed Hyper Feature which aggregates hierarchical feature maps first and then compresses them into a uniform space. The Hyper Features well incorporate deep but highly semantic, intermediate but really complementary, and shallow but naturally high-resolution features of the image, thus enabling us to construct HyperNet by sharing them both in generating proposals and detecting objects via an end-to-end joint training strategy. For the deep VGG16 model, our method achieves completely leading recall and state-of-the-art object detection accuracy on PASCAL VOC 2007 and 2012 using only 100 proposals per image. It runs with a speed of 5 fps (including all steps) on a GPU, thus having the potential for real-time processing.

## Paper References

1. [Faster R-CNN - Towards Real-Time Object Detection with Region Proposal Networks](2015-faster-r-cnn-towards-real-time-object-detection-with-region-proposal-networks)
2. [Rich Feature Hierarchies for Accurate Object Detection and Semantic Segmentation](2014-rich-feature-hierarchies-for-accurate-object-detection-and-semantic-segmentation)
3. [What Makes for Effective Detection Proposals?](2016-what-makes-for-effective-detection-proposals)
4. DeepBox - Learning Objectness with Convolutional Networks
5. Object Detection via a Multi-region and Semantic Segmentation-Aware CNN Model
6. Learning to Combine Mid-Level Cues for Object Proposal Generation
7. Scalable Object Detection Using Deep Neural Networks
8. DeepProposal - Hunting Objects by Cascading Deep Convolutional Layers
9. BING - Binarized normed gradients for objectness estimation at 300fps
10. Improving object detection with deep convolutional networks via Bayesian optimization and structured prediction
11. [Edge Boxes - Locating Object Proposals from Edges](2014-edge-boxes-locating-object-proposals-from-edges)
12. Segmentation as selective search for object recognition
13. Category-Independent Object-Level Saliency Detection
14. [Fully Convolutional Networks for Semantic Segmentation](2017-fully-convolutional-networks-for-semantic-segmentation)
15. Object Detection Using Strongly-Supervised Deformable Part Models
16. [OverFeat - Integrated Recognition, Localization and Detection using Convolutional Networks](2014-overfeat-integrated-recognition-localization-and-detection-using-convolutional-networks)
17. [Object Detection Networks on Convolutional Feature Maps](2017-object-detection-networks-on-convolutional-feature-maps)
18. [Hypercolumns for object segmentation and fine-grained localization](2015-hypercolumns-for-object-segmentation-and-fine-grained-localization)
19. Constrained parametric min-cuts for automatic object segmentation
20. Online Object Tracking with Proposal Selection
21. What is an object?
22. [Fast Feature Pyramids for Object Detection](2014-fast-feature-pyramids-for-object-detection)
23. [Very Deep Convolutional Networks for Large-Scale Image Recognition](2015-very-deep-convolutional-networks-for-large-scale-image-recognition)
24. An HOG-LBP human detector with partial occlusion handling
25. [ImageNet Large Scale Visual Recognition Challenge](2015-imagenet-large-scale-visual-recognition-challenge)
26. [Object Detection with Discriminatively Trained Part Based Models](2009-object-detection-with-discriminatively-trained-part-based-models)
27. [Fast R-CNN](2015-fast-r-cnn)
28. [Multiscale Combinatorial Grouping](2014-multiscale-combinatorial-grouping)
29. [The Pascal Visual Object Classes Challenge - A Retrospective](2014-the-pascal-visual-object-classes-challenge-a-retrospective)
30. Occlusion Patterns for Object Class Detection
31. [ImageNet classification with deep convolutional neural networks](2012-imagenet-classification-with-deep-convolutional-neural-networks)
32. [Spatial Pyramid Pooling in Deep Convolutional Networks for Visual Recognition](2015-spatial-pyramid-pooling-in-deep-convolutional-networks-for-visual-recognition)
33. [Caffe - Convolutional Architecture for Fast Feature Embedding](2014-caffe-convolutional-architecture-for-fast-feature-embedding)
34. [Histograms of oriented gradients for human detection](2005-histograms-of-oriented-gradients-for-human-detection)
35. [Distinctive Image Features from Scale-Invariant Keypoints](2004-distinctive-image-features-from-scale-invariant-keypoints)
36. [You Only Look Once - Unified, Real-Time Object Detection](2016-you-only-look-once-unified-real-time-object-detection)
