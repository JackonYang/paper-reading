---
title: PixelLink - Detecting Scene Text via Instance Segmentation
authors:
- Dan Deng
- Haifeng Liu
- Xuelong Li
- Deng Cai
fieldsOfStudy:
- Computer Science
meta_key: 2018-pixellink-detecting-scene-text-via-instance-segmentation
numCitedBy: 333
reading_status: TBD
ref_count: 28
tags:
- gen-from-ref
- other-default
- paper
venue: AAAI
year: 2018
---

# PixelLink - Detecting Scene Text via Instance Segmentation

## Abstract

Most state-of-the-art scene text detection algorithms are deep learning based methods that depend on bounding box regression and perform at least two kinds of predictions: text/non-text classification and location regression. Regression plays a key role in the acquisition of bounding boxes in these methods, but it is not indispensable because text/non-text prediction can also be considered as a kind of semantic segmentation that contains full location information in itself. However, text instances in scene images often lie very close to each other, making them very difficult to separate via semantic segmentation. Therefore, instance segmentation is needed to address this problem. In this paper, PixelLink, a novel scene text detection algorithm based on instance segmentation, is proposed. Text instances are first segmented out by linking pixels within the same instance together. Text bounding boxes are then extracted directly from the segmentation result without location regression. Experiments show that, compared with regression-based methods, PixelLink can achieve better or comparable performance on several benchmarks, while requiring many fewer training iterations and less training data.

## Paper References

1. [Scene Text Detection via Holistic, Multi-Channel Prediction](2016-scene-text-detection-via-holistic-multi-channel-prediction)
2. [Deep Direct Regression for Multi-oriented Scene Text Detection](2017-deep-direct-regression-for-multi-oriented-scene-text-detection)
3. [Detecting Oriented Text in Natural Images by Linking Segments](2017-detecting-oriented-text-in-natural-images-by-linking-segments)
4. Accurate Text Localization in Natural Image with Cascaded Convolutional Text Network
5. [Synthetic Data for Text Localisation in Natural Images](2016-synthetic-data-for-text-localisation-in-natural-images)
6. [EAST - An Efficient and Accurate Scene Text Detector](2017-east-an-efficient-and-accurate-scene-text-detector)
7. [Detecting Text in Natural Image with Connectionist Text Proposal Network](2016-detecting-text-in-natural-image-with-connectionist-text-proposal-network)
8. [Multi-oriented Text Detection with Fully Convolutional Networks](2016-multi-oriented-text-detection-with-fully-convolutional-networks)
9. [Arbitrary-Oriented Scene Text Detection via Rotation Proposals](2018-arbitrary-oriented-scene-text-detection-via-rotation-proposals)
10. A Unified Framework for Multioriented Text Detection and Recognition
11. [R-FCN - Object Detection via Region-based Fully Convolutional Networks](2016-r-fcn-object-detection-via-region-based-fully-convolutional-networks)
12. [SSD - Single Shot MultiBox Detector](2016-ssd-single-shot-multibox-detector)
13. [COCO-Text - Dataset and Benchmark for Text Detection and Recognition in Natural Images](2016-coco-text-dataset-and-benchmark-for-text-detection-and-recognition-in-natural-images)
14. [Training Region-Based Object Detectors with Online Hard Example Mining](2016-training-region-based-object-detectors-with-online-hard-example-mining)
15. [Fully Convolutional Networks for Semantic Segmentation](2017-fully-convolutional-networks-for-semantic-segmentation)
16. [Faster R-CNN - Towards Real-Time Object Detection with Region Proposal Networks](2015-faster-r-cnn-towards-real-time-object-detection-with-region-proposal-networks)
17. PVANET - Deep but Lightweight Neural Networks for Real-time Object Detection
18. Fully Convolutional Instance-Aware Semantic Segmentation
19. Detecting texts of arbitrary orientations in natural images
20. Text Detection and Recognition in Imagery - A Survey
21. ICDAR 2015 competition on Robust Reading
22. [Very Deep Convolutional Networks for Large-Scale Image Recognition](2015-very-deep-convolutional-networks-for-large-scale-image-recognition)
23. ICDAR 2013 Robust Reading Competition
24. [Understanding the difficulty of training deep feedforward neural networks](2010-understanding-the-difficulty-of-training-deep-feedforward-neural-networks)
25. Efficient Maximally Stable Extremal Region (MSER) Tracking
26. [Mask R-CNN](2020-mask-r-cnn)
27. [TextBoxes - A Fast Text Detector with a Single Deep Neural Network](2017-textboxes-a-fast-text-detector-with-a-single-deep-neural-network)
