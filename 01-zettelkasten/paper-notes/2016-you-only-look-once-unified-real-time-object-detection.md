---
title: You Only Look Once - Unified, Real-Time Object Detection
authors:
- Joseph Redmon
- S. Divvala
- Ross B. Girshick
- Ali Farhadi
fieldsOfStudy:
- Computer Science
meta_key: 2016-you-only-look-once-unified-real-time-object-detection
numCitedBy: 16710
reading_status: TBD
ref_count: 50
tags:
- gen-from-ref
- paper
venue: 2016 IEEE Conference on Computer Vision and Pattern Recognition (CVPR)
year: 2016
---

# You Only Look Once - Unified, Real-Time Object Detection

## Abstract

We present YOLO, a new approach to object detection. Prior work on object detection repurposes classifiers to perform detection. Instead, we frame object detection as a regression problem to spatially separated bounding boxes and associated class probabilities. A single neural network predicts bounding boxes and class probabilities directly from full images in one evaluation. Since the whole detection pipeline is a single network, it can be optimized end-to-end directly on detection performance. Our unified architecture is extremely fast. Our base YOLO model processes images in real-time at 45 frames per second. A smaller version of the network, Fast YOLO, processes an astounding 155 frames per second while still achieving double the mAP of other real-time detectors. Compared to state-of-the-art detection systems, YOLO makes more localization errors but is less likely to predict false positives on background. Finally, YOLO learns very general representations of objects. It outperforms other detection methods, including DPM and R-CNN, when generalizing from natural images to other domains like artwork.

## Paper References

1. [Simultaneous Detection and Segmentation](2014-simultaneous-detection-and-segmentation)
2. [Rich Feature Hierarchies for Accurate Object Detection and Semantic Segmentation](2014-rich-feature-hierarchies-for-accurate-object-detection-and-semantic-segmentation)
3. Scalable Object Detection Using Deep Neural Networks
4. [Faster R-CNN - Towards Real-Time Object Detection with Region Proposal Networks](2015-faster-r-cnn-towards-real-time-object-detection-with-region-proposal-networks)
5. [Robust Real-time Object Detection](2001-robust-real-time-object-detection)
6. Learning to Localize Objects with Structured Output Regression
7. [OverFeat - Integrated Recognition, Localization and Detection using Convolutional Networks](2014-overfeat-integrated-recognition-localization-and-detection-using-convolutional-networks)
8. Fast, Accurate Detection of 100,000 Object Classes on a Single Machine
9. [Object Detection with Discriminatively Trained Part Based Models](2009-object-detection-with-discriminatively-trained-part-based-models)
10. Diagnosing Error in Object Detectors
11. Object Detection via a Multi-region and Semantic Segmentation-Aware CNN Model
12. [Selective Search for Object Recognition](2013-selective-search-for-object-recognition)
13. A general framework for object detection
14. [Object Detection Networks on Convolutional Feature Maps](2017-object-detection-networks-on-convolutional-feature-maps)
15. [Edge Boxes - Locating Object Proposals from Edges](2014-edge-boxes-locating-object-proposals-from-edges)
16. Do More Dropouts in Pool5 Feature Maps for Better Object Detection
17. The Fastest Deformable Part Model for Object Detection
18. [The Pascal Visual Object Classes Challenge - A Retrospective](2014-the-pascal-visual-object-classes-challenge-a-retrospective)
19. R-CNN minus R
20. Towards Unified Object Detection and Semantic Segmentation
21. [DeCAF - A Deep Convolutional Activation Feature for Generic Visual Recognition](2014-decaf-a-deep-convolutional-activation-feature-for-generic-visual-recognition)
22. [ImageNet Large Scale Visual Recognition Challenge](2015-imagenet-large-scale-visual-recognition-challenge)
23. [Robust Real-Time Face Detection](2001-robust-real-time-face-detection)
24. 30Hz Object Detection with DPM V5
25. [Histograms of oriented gradients for human detection](2005-histograms-of-oriented-gradients-for-human-detection)
26. Poselets - Body part detectors trained using 3D human pose annotations
27. An extended set of Haar-like features for rapid object detection
28. Real-time grasp detection using convolutional neural networks
29. Region-based Segmentation and Object Detection
30. [Fast R-CNN](2015-fast-r-cnn)
31. The Cross-Depiction Problem - Computer Vision Algorithms for Recognising Objects in Artwork and in Photographs
32. [Object recognition from local scale-invariant features](1999-object-recognition-from-local-scale-invariant-features)
33. [Spatial Pyramid Pooling in Deep Convolutional Networks for Visual Recognition](2015-spatial-pyramid-pooling-in-deep-convolutional-networks-for-visual-recognition)
34. [Going deeper with convolutions](2015-going-deeper-with-convolutions)
35. [Delving Deep into Rectifiers - Surpassing Human-Level Performance on ImageNet Classification](2015-delving-deep-into-rectifiers-surpassing-human-level-performance-on-imagenet-classification)
36. [Network In Network](2014-network-in-network)
37. [Improving neural networks by preventing co-adaptation of feature detectors](2012-improving-neural-networks-by-preventing-co-adaptation-of-feature-detectors)
38. Detecting people in Cubist art
