---
title: DSSD - Deconvolutional Single Shot Detector
authors:
- Cheng-Yang Fu
- W. Liu
- A. Ranga
- A. Tyagi
- A. Berg
fieldsOfStudy:
- Computer Science
meta_key: 2017-dssd-deconvolutional-single-shot-detector
numCitedBy: 1210
reading_status: TBD
ref_count: 27
tags:
- gen-from-ref
- other-default
- paper
venue: ArXiv
year: 2017
---

# DSSD - Deconvolutional Single Shot Detector

## Abstract

The main contribution of this paper is an approach for introducing additional context into state-of-the-art general object detection. To achieve this we first combine a state-of-the-art classifier (Residual-101[14]) with a fast detection framework (SSD[18]). We then augment SSD+Residual-101 with deconvolution layers to introduce additional large-scale context in object detection and improve accuracy, especially for small objects, calling our resulting system DSSD for deconvolutional single shot detector. While these two contributions are easily described at a high-level, a naive implementation does not succeed. Instead we show that carefully adding additional stages of learned transformations, specifically a module for feed-forward connections in deconvolution and a new output module, enables this new approach and forms a potential way forward for further detection research. Results are shown on both PASCAL VOC and COCO detection. Our DSSD with $513 \times 513$ input achieves 81.5% mAP on VOC2007 test, 80.0% mAP on VOC2012 test, and 33.2% mAP on COCO, outperforming a state-of-the-art method R-FCN[3] on each dataset.

## Paper References

1. [SSD - Single Shot MultiBox Detector](2016-ssd-single-shot-multibox-detector)
2. [Learning to Refine Object Segments](2016-learning-to-refine-object-segments)
3. [Rich Feature Hierarchies for Accurate Object Detection and Semantic Segmentation](2014-rich-feature-hierarchies-for-accurate-object-detection-and-semantic-segmentation)
4. [R-FCN - Object Detection via Region-based Fully Convolutional Networks](2016-r-fcn-object-detection-via-region-based-fully-convolutional-networks)
5. [Faster R-CNN - Towards Real-Time Object Detection with Region Proposal Networks](2015-faster-r-cnn-towards-real-time-object-detection-with-region-proposal-networks)
6. A Unified Multi-scale Deep Convolutional Neural Network for Fast Object Detection
7. [Very Deep Convolutional Networks for Large-Scale Image Recognition](2014-vggnet.md)
8. Scalable Object Detection Using Deep Neural Networks
9. [HyperNet - Towards Accurate Region Proposal Generation and Joint Object Detection](2016-hypernet-towards-accurate-region-proposal-generation-and-joint-object-detection)
10. ParseNet - Looking Wider to See Better
11. [Inside-Outside Net - Detecting Objects in Context with Skip Pooling and Recurrent Neural Networks](2016-inside-outside-net-detecting-objects-in-context-with-skip-pooling-and-recurrent-neural-networks)
12. Object Detection via a Multi-region and Semantic Segmentation-Aware CNN Model
13. [Learning Deconvolution Network for Semantic Segmentation](2015-learning-deconvolution-network-for-semantic-segmentation)
14. [Deep Residual Learning for Image Recognition](2015-resnet.md)
15. A discriminatively trained, multiscale, deformable part model
16. [Spatial Pyramid Pooling in Deep Convolutional Networks for Visual Recognition](2015-spatial-pyramid-pooling-in-deep-convolutional-networks-for-visual-recognition)
17. [Selective Search for Object Recognition](2013-selective-search-for-object-recognition)
18. [The Pascal Visual Object Classes (VOC) Challenge](2009-the-pascal-visual-object-classes-voc-challenge)
19. [Fast R-CNN](2015-fast-r-cnn)
20. [ImageNet Large Scale Visual Recognition Challenge](2015-imagenet-large-scale-visual-recognition-challenge)
21. [Compact Bilinear Pooling](2016-compact-bilinear-pooling)
22. [Stacked Hourglass Networks for Human Pose Estimation](2016-stacked-hourglass-networks-for-human-pose-estimation)
23. [Histograms of oriented gradients for human detection](2005-histograms-of-oriented-gradients-for-human-detection)
24. [Multimodal Compact Bilinear Pooling for Visual Question Answering and Visual Grounding](2016-multimodal-compact-bilinear-pooling-for-visual-question-answering-and-visual-grounding)
25. A real-time algorithm for signal analysis with the help of the wavelet transform
26. [You Only Look Once - Unified, Real-Time Object Detection](2016-you-only-look-once-unified-real-time-object-detection)
