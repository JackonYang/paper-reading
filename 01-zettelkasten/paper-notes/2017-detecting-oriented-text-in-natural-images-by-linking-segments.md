---
title: Detecting Oriented Text in Natural Images by Linking Segments
authors:
- Baoguang Shi
- X. Bai
- Serge J. Belongie
fieldsOfStudy:
- Computer Science
meta_key: 2017-detecting-oriented-text-in-natural-images-by-linking-segments
numCitedBy: 461
reading_status: TBD
ref_count: 37
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Detecting-Oriented-Text-in-Natural-Images-by-Shi-Bai/0016d247423bede7f66224044ccc08f21d49fd39?sort=total-citations
venue: 2017 IEEE Conference on Computer Vision and Pattern Recognition (CVPR)
year: 2017
---

# Detecting Oriented Text in Natural Images by Linking Segments

## Abstract

Most state-of-the-art text detection methods are specific to horizontal Latin text and are not fast enough for real-time applications. We introduce Segment Linking (SegLink), an oriented text detection method. The main idea is to decompose text into two locally detectable elements, namely segments and links. A segment is an oriented box covering a part of a word or text line, A link connects two adjacent segments, indicating that they belong to the same word or text line. Both elements are detected densely at multiple scales by an end-to-end trained, fully-convolutional neural network. Final detections are produced by combining segments connected by links. Compared with previous methods, SegLink improves along the dimensions of accuracy, speed, and ease of training. It achieves an f-measure of 75.0% on the standard ICDAR 2015 Incidental (Challenge 4) benchmark, outperforming the previous best by a large margin. It runs at over 20 FPS on 512x512 images. Moreover, without modification, SegLink is able to detect long lines of non-Latin text, such as Chinese.

## Paper References

1. [Detecting Text in Natural Image with Connectionist Text Proposal Network](2016-detecting-text-in-natural-image-with-connectionist-text-proposal-network)
2. [Multi-oriented Text Detection with Fully Convolutional Networks](2016-multi-oriented-text-detection-with-fully-convolutional-networks)
3. Reading Text in the Wild with Convolutional Neural Networks
4. [Scene Text Detection via Holistic, Multi-Channel Prediction](2016-scene-text-detection-via-holistic-multi-channel-prediction)
5. Deep Features for Text Spotting
6. Robust Text Detection in Natural Scene Images
7. [Synthetic Data for Text Localisation in Natural Images](2016-synthetic-data-for-text-localisation-in-natural-images)
8. [Real-Time Lexicon-Free Scene Text Localization and Recognition](2016-real-time-lexicon-free-scene-text-localization-and-recognition)
9. End-to-end text recognition with convolutional neural networks
10. Text Localization in Natural Images Using Stroke Feature Transform and Text Covariance Descriptors
11. Symmetry-based text line detection in natural scenes
12. FASText - Efficient Unconstrained Scene Text Detector
13. Robust Scene Text Detection with Convolution Neural Network Induced MSER Trees
14. Orientation Robust Text Line Detection in Natural Images
15. Detecting texts of arbitrary orientations in natural images
16. Word Spotting in the Wild
17. PhotoOCR - Reading Text in Uncontrolled Conditions
18. Multi-Orientation Scene Text Detection with Adaptive Clustering
19. [Fully Convolutional Networks for Semantic Segmentation](2017-fully-convolutional-networks-for-semantic-segmentation)
20. [Rich Feature Hierarchies for Accurate Object Detection and Semantic Segmentation](2014-rich-feature-hierarchies-for-accurate-object-detection-and-semantic-segmentation)
21. ICDAR 2015 competition on Robust Reading
22. [Faster R-CNN - Towards Real-Time Object Detection with Region Proposal Networks](2015-faster-r-cnn-towards-real-time-object-detection-with-region-proposal-networks)
23. [SSD - Single Shot MultiBox Detector](2016-ssd-net.md)
24. [Training Region-Based Object Detectors with Online Hard Example Mining](2016-training-region-based-object-detectors-with-online-hard-example-mining)
25. Efficient Scene text localization and recognition with local character refinement
26. [Very Deep Convolutional Networks for Large-Scale Image Recognition](2014-vggnet.md)
27. ICDAR 2013 Robust Reading Competition
28. [Fast R-CNN](2015-fast-r-cnn)
29. [You Only Look Once - Unified, Real-Time Object Detection](2016-you-only-look-once-unified-real-time-object-detection)
