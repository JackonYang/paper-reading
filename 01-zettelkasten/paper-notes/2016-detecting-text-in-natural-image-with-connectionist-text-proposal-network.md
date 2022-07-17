---
title: Detecting Text in Natural Image with Connectionist Text Proposal Network
authors:
- Zhi Tian
- Weilin Huang
- Tong He
- Pan He
- Y. Qiao
fieldsOfStudy:
- Computer Science
meta_key: 2016-detecting-text-in-natural-image-with-connectionist-text-proposal-network
numCitedBy: 648
reading_status: TBD
ref_count: 39
tags:
- gen-from-ref
- other-default
- paper
venue: ECCV
year: 2016
---

# Detecting Text in Natural Image with Connectionist Text Proposal Network

## Abstract

We propose a novel Connectionist Text Proposal Network (CTPN) that accurately localizes text lines in natural image. The CTPN detects a text line in a sequence of fine-scale text proposals directly in convolutional feature maps. We develop a vertical anchor mechanism that jointly predicts location and text/non-text score of each fixed-width proposal, considerably improving localization accuracy. The sequential proposals are naturally connected by a recurrent neural network, which is seamlessly incorporated into the convolutional network, resulting in an end-to-end trainable model. This allows the CTPN to explore rich context information of image, making it powerful to detect extremely ambiguous text. The CTPN works reliably on multi-scale and multi-language text without further post-processing, departing from previous bottom-up methods requiring multi-step post filtering. It achieves 0.88 and 0.61 F-measure on the ICDAR 2013 and 2015 benchmarks, surpassing recent results [8, 35] by a large margin. The CTPN is computationally efficient with 0.14 s/image, by using the very deep VGG16 model [27]. Online demo is available: http://textdet.com/.

## Paper References

1. Accurate Text Localization in Natural Image with Cascaded Convolutional Text Network
2. [Text-Attentional Convolutional Neural Network for Scene Text Detection](2016-text-attentional-convolutional-neural-network-for-scene-text-detection)
3. [Reading Scene Text in Deep Convolutional Sequences](2016-reading-scene-text-in-deep-convolutional-sequences)
4. Reading Text in the Wild with Convolutional Neural Networks
5. [Multi-oriented Text Detection with Fully Convolutional Networks](2016-multi-oriented-text-detection-with-fully-convolutional-networks)
6. Text Flow - A Unified Text Detection System in Natural Scene Images
7. [Synthetic Data for Text Localisation in Natural Images](2016-synthetic-data-for-text-localisation-in-natural-images)
8. A Hybrid Approach to Detect and Localize Texts in Natural Scene Images
9. Robust Scene Text Detection with Convolution Neural Network Induced MSER Trees
10. Deep Features for Text Spotting
11. Text Localization in Natural Images Using Stroke Feature Transform and Text Covariance Descriptors
12. Robust Text Detection in Natural Scene Images
13. Symmetry-based text line detection in natural scenes
14. Scale based region growing for scene text detection
15. End-to-end scene text recognition
16. A Unified Framework for Multioriented Text Detection and Recognition
17. [Faster R-CNN - Towards Real-Time Object Detection with Region Proposal Networks](2015-faster-r-cnn-towards-real-time-object-detection-with-region-proposal-networks)
18. [Real-Time Lexicon-Free Scene Text Localization and Recognition](2016-real-time-lexicon-free-scene-text-localization-and-recognition)
19. FASText - Efficient Unconstrained Scene Text Detector
20. Snoopertext - A multiresolution system for text detection in complex visual scenes
21. Multi-Orientation Scene Text Detection with Adaptive Clustering
22. ICDAR 2015 competition on Robust Reading
23. [Rich Feature Hierarchies for Accurate Object Detection and Semantic Segmentation](2014-rich-feature-hierarchies-for-accurate-object-detection-and-semantic-segmentation)
24. BING - Binarized normed gradients for objectness estimation at 300fps
25. [Very Deep Convolutional Networks for Large-Scale Image Recognition](2015-very-deep-convolutional-networks-for-large-scale-image-recognition)
26. Detecting text in natural scenes with stroke width transform
27. Efficient Scene text localization and recognition with local character refinement
28. ICDAR 2013 Robust Reading Competition
29. [Fast R-CNN](2015-fast-r-cnn)
30. [Caffe - Convolutional Architecture for Fast Feature Embedding](2014-caffe-convolutional-architecture-for-fast-feature-embedding)
31. [ImageNet Large Scale Visual Recognition Challenge](2015-imagenet-large-scale-visual-recognition-challenge)
32. [Framewise phoneme classification with bidirectional LSTM and other neural network architectures](2005-framewise-phoneme-classification-with-bidirectional-lstm-and-other-neural-network-architectures)
33. [Long Short-Term Memory](1997-long-short-term-memory)
34. [The Pascal Visual Object Classes (VOC) Challenge](2009-the-pascal-visual-object-classes-voc-challenge)
35. Object count/area graphs for the evaluation of object detection and segmentation algorithms
36. [Text-Attentional Convolutional Neural Networks for Scene Text Detection](2016-text-attentional-convolutional-neural-networks-for-scene-text-detection)
