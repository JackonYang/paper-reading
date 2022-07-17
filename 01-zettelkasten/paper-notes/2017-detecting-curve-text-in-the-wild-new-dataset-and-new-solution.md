---
title: Detecting Curve Text in the Wild - New Dataset and New Solution
authors:
- Yuliang Liu
- Lianwen Jin
- Shuaitao Zhang
- Sheng Zhang
fieldsOfStudy:
- Computer Science
meta_key: 2017-detecting-curve-text-in-the-wild-new-dataset-and-new-solution
numCitedBy: 129
reading_status: TBD
ref_count: 36
tags:
- gen-from-ref
- other-default
- paper
venue: ArXiv
year: 2017
---

# Detecting Curve Text in the Wild - New Dataset and New Solution

## Abstract

Scene text detection has been made great progress in recent years. The detection manners are evolving from axisaligned rectangle to rotated rectangle and further to quadrangle. However, current datasets contain very little curve text, which can be widely observed in scene images such as signboard, product name and so on. To raise the concerns of reading curve text in the wild, in this paper, we construct a curve text dataset named CTW1500, which includes over 10k text annotations in 1,500 images (1000 for training and 500 for testing). Based on this dataset, we pioneering propose a polygon based curve text detector (CTD) which can directly detect curve text without empirical combination. Moreover, by seamlessly integrating the recurrent transverse and longitudinal offset connection (TLOC), the proposed method can be end-to-end trainable to learn the inherent connection among the position offsets. This allows the CTD to explore context information instead of predicting points independently, resulting in more smooth and accurate detection. We also propose two simple but effective post-processing methods named nonpolygon suppress (NPS) and polygonal non-maximum suppression (PNMS) to further improve the detection accuracy. Furthermore, the proposed approach in this paper is designed in an universal manner, which can also be trained with rectangular or quadrilateral bounding boxes without extra efforts. Experimental results on CTW-1500 demonstrate our method with only a light backbone can outperform state-of-the-art methods with a large margin. By evaluating only in the curve or non-curve subset, the CTD + TLOC can still achieve the best results. Code is available at https://github.com/Yuliang-Liu/Curve-Text-Detector.

## Paper References

1. [Detecting Text in Natural Image with Connectionist Text Proposal Network](2016-detecting-text-in-natural-image-with-connectionist-text-proposal-network)
2. [Deep Matching Prior Network - Toward Tighter Multi-oriented Text Detection](2017-deep-matching-prior-network-toward-tighter-multi-oriented-text-detection)
3. [EAST - An Efficient and Accurate Scene Text Detector](2017-east-an-efficient-and-accurate-scene-text-detector)
4. [Deep Direct Regression for Multi-oriented Scene Text Detection](2017-deep-direct-regression-for-multi-oriented-scene-text-detection)
5. [Detecting Oriented Text in Natural Images by Linking Segments](2017-detecting-oriented-text-in-natural-images-by-linking-segments)
6. [Robust Scene Text Recognition with Automatic Rectification](2016-robust-scene-text-recognition-with-automatic-rectification)
7. [COCO-Text - Dataset and Benchmark for Text Detection and Recognition in Natural Images](2016-coco-text-dataset-and-benchmark-for-text-detection-and-recognition-in-natural-images)
8. [WordSup - Exploiting Word Annotations for Character Based Text Detection](2017-wordsup-exploiting-word-annotations-for-character-based-text-detection)
9. Fused Text Segmentation Networks for Multi-oriented Scene Text Detection
10. Detecting texts of arbitrary orientations in natural images
11. [Towards End-to-End Text Spotting with Convolutional Recurrent Neural Networks](2017-towards-end-to-end-text-spotting-with-convolutional-recurrent-neural-networks)
12. Text String Detection From Natural Scenes by Structure-Based Partition and Grouping
13. [An End-to-End Trainable Neural Network for Image-Based Sequence Recognition and Its Application to Scene Text Recognition](2017-an-end-to-end-trainable-neural-network-for-image-based-sequence-recognition-and-its-application-to-scene-text-recognition)
14. Multi-Orientation Scene Text Detection with Adaptive Clustering
15. NEOCR - A Configurable Dataset for Natural Image Text Recognition
16. Word Spotting in the Wild
17. [R-FCN - Object Detection via Region-based Fully Convolutional Networks](2016-r-fcn-object-detection-via-region-based-fully-convolutional-networks)
18. [Faster R-CNN - Towards Real-Time Object Detection with Region Proposal Networks](2015-faster-r-cnn-towards-real-time-object-detection-with-region-proposal-networks)
19. Detecting text in natural scenes with stroke width transform
20. [Mask R-CNN](2017-mask-r-cnn)
21. ICDAR 2015 competition on Robust Reading
22. ICDAR 2011 Robust Reading Competition Challenge 2 - Reading Text in Scene Images
23. ICDAR2017 Robust Reading Challenge on Omnidirectional Video
24. ICDAR2017 Competition on Reading Chinese Text in the Wild (RCTW-17)
25. ICDAR 2003 robust reading competitions
26. [Recursive Recurrent Nets with Attention Modeling for OCR in the Wild](2016-recursive-recurrent-nets-with-attention-modeling-for-ocr-in-the-wild)
27. [The Pascal Visual Object Classes (VOC) Challenge](2009-the-pascal-visual-object-classes-voc-challenge)
28. [Deep Residual Learning for Image Recognition](2016-deep-residual-learning-for-image-recognition)
29. [Very Deep Convolutional Networks for Large-Scale Image Recognition](2015-very-deep-convolutional-networks-for-large-scale-image-recognition)
30. Enriched Deep Recurrent Visual Attention Model for Multiple Object Recognition
31. ICDAR 2013 Robust Reading Competition
32. [Caffe - Convolutional Architecture for Fast Feature Embedding](2014-caffe-convolutional-architecture-for-fast-feature-embedding)
33. [Long Short-Term Memory](1997-long-short-term-memory)
34. Efficient Non-Maximum Suppression
