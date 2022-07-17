---
title: An End-to-End TextSpotter with Explicit Alignment and Attention
authors:
- Tong He
- Zhi Tian
- Weilin Huang
- Chunhua Shen
- Y. Qiao
- Changming Sun
fieldsOfStudy:
- Computer Science
meta_key: 2018-an-end-to-end-textspotter-with-explicit-alignment-and-attention
numCitedBy: 143
reading_status: TBD
ref_count: 47
tags:
- gen-from-ref
- other-default
- paper
venue: 2018 IEEE/CVF Conference on Computer Vision and Pattern Recognition
year: 2018
---

# An End-to-End TextSpotter with Explicit Alignment and Attention

## Abstract

Text detection and recognition in natural images have long been considered as two separate tasks that are processed sequentially. Jointly training two tasks is non-trivial due to significant differences in learning difficulties and convergence rates. In this work, we present a conceptually simple yet efficient framework that simultaneously processes the two tasks in a united framework. Our main contributions are three-fold: (1) we propose a novel text-alignment layer that allows it to precisely compute convolutional features of a text instance in arbitrary orientation, which is the key to boost the performance; (2) a character attention mechanism is introduced by using character spatial information as explicit supervision, leading to large improvements in recognition; (3) two technologies, together with a new RNN branch for word recognition, are integrated seamlessly into a single model which is end-to-end trainable. This allows the two tasks to work collaboratively by sharing convolutional features, which is critical to identify challenging text instances. Our model obtains impressive results in end-to-end recognition on the ICDAR 2015 [19], significantly advancing the most recent results [2], with improvements of F-measure from (0.54, 0.51, 0.47) to (0.82, 0.77, 0.63), by using a strong, weak and generic lexicon respectively. Thanks to joint training, our method can also serve as a good detector by achieving a new state-of-the-art detection performance on related benchmarks. Code is available at https://github.com/tonghe90/textspotter.

## Paper References

1. [Towards End-to-End Text Spotting with Convolutional Recurrent Neural Networks](2017-towards-end-to-end-text-spotting-with-convolutional-recurrent-neural-networks)
2. [FOTS - Fast Oriented Text Spotting with a Unified Network](2018-fots-fast-oriented-text-spotting-with-a-unified-network)
3. [Reading Scene Text in Deep Convolutional Sequences](2016-reading-scene-text-in-deep-convolutional-sequences)
4. Deep TextSpotter - An End-to-End Trainable Scene Text Localization and Recognition Framework
5. Reading Text in the Wild with Convolutional Neural Networks
6. [Detecting Text in Natural Image with Connectionist Text Proposal Network](2016-detecting-text-in-natural-image-with-connectionist-text-proposal-network)
7. [An End-to-End Trainable Neural Network for Image-Based Sequence Recognition and Its Application to Scene Text Recognition](2017-an-end-to-end-trainable-neural-network-for-image-based-sequence-recognition-and-its-application-to-scene-text-recognition)
8. [Multi-oriented Text Detection with Fully Convolutional Networks](2016-multi-oriented-text-detection-with-fully-convolutional-networks)
9. Accurate Text Localization in Natural Image with Cascaded Convolutional Text Network
10. WeText - Scene Text Detection under Weak Supervision
11. [Robust Scene Text Recognition with Automatic Rectification](2016-robust-scene-text-recognition-with-automatic-rectification)
12. [Synthetic Data for Text Localisation in Natural Images](2016-synthetic-data-for-text-localisation-in-natural-images)
13. [EAST - An Efficient and Accurate Scene Text Detector](2017-east-an-efficient-and-accurate-scene-text-detector)
14. [Text-Attentional Convolutional Neural Network for Scene Text Detection](2016-text-attentional-convolutional-neural-network-for-scene-text-detection)
15. [Recursive Recurrent Nets with Attention Modeling for OCR in the Wild](2016-recursive-recurrent-nets-with-attention-modeling-for-ocr-in-the-wild)
16. Text Flow - A Unified Text Detection System in Natural Scene Images
17. [Scene Text Detection via Holistic, Multi-Channel Prediction](2016-scene-text-detection-via-holistic-multi-channel-prediction)
18. [Fully Convolutional Networks for Semantic Segmentation](2017-fully-convolutional-networks-for-semantic-segmentation)
19. Towards End-to-End Car License Plates Detection and Recognition with Deep Neural Networks
20. Attention-Based Extraction of Structured Information from Street View Imagery
21. [Deep Direct Regression for Multi-oriented Scene Text Detection](2017-deep-direct-regression-for-multi-oriented-scene-text-detection)
22. Toward End-to-End Car License Plate Detection and Recognition With Deep Neural Networks
23. [Real-Time Lexicon-Free Scene Text Localization and Recognition](2016-real-time-lexicon-free-scene-text-localization-and-recognition)
24. Robust Scene Text Detection with Convolution Neural Network Induced MSER Trees
25. ICDAR 2015 competition on Robust Reading
26. [SSD - Single Shot MultiBox Detector](2016-ssd-net.md)
27. [Faster R-CNN - Towards Real-Time Object Detection with Region Proposal Networks](2015-faster-r-cnn-towards-real-time-object-detection-with-region-proposal-networks)
28. Detecting texts of arbitrary orientations in natural images
29. Symmetry-based text line detection in natural scenes
30. UnitBox - An Advanced Object Detection Network
31. Text Localization in Natural Images Using Stroke Feature Transform and Text Covariance Descriptors
32. [Neural Machine Translation by Jointly Learning to Align and Translate](2015-neural-machine-translation-by-jointly-learning-to-align-and-translate)
33. [U-Net - Convolutional Networks for Biomedical Image Segmentation](2015-u-net-convolutional-networks-for-biomedical-image-segmentation)
34. Robust Text Detection in Natural Scene Images
35. [Spatial Transformer Networks](2015-spatial-transformer-networks)
36. [Towards End-To-End Speech Recognition with Recurrent Neural Networks](2014-towards-end-to-end-speech-recognition-with-recurrent-neural-networks)
37. ICDAR 2013 Robust Reading Competition
38. [Caffe - Convolutional Architecture for Fast Feature Embedding](2014-caffe-convolutional-architecture-for-fast-feature-embedding)
39. [Fast R-CNN](2015-fast-r-cnn)
40. PVANet - Lightweight Deep Neural Networks for Real-time Object Detection
41. [Mask R-CNN](2020-mask-r-cnn)
42. [Text-Attentional Convolutional Neural Networks for Scene Text Detection](2016-text-attentional-convolutional-neural-networks-for-scene-text-detection)
43. [TextBoxes - A Fast Text Detector with a Single Deep Neural Network](2017-textboxes-a-fast-text-detector-with-a-single-deep-neural-network)
44. A Novel Connectionist System for Unconstrained Handwriting Recognition
