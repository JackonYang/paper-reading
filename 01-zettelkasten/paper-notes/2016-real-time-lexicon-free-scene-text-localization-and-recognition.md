---
title: Real-Time Lexicon-Free Scene Text Localization and Recognition
authors:
- "Luk\xE1s Neumann"
- Jiri Matas
fieldsOfStudy:
- Computer Science
meta_key: 2016-real-time-lexicon-free-scene-text-localization-and-recognition
numCitedBy: 127
reading_status: TBD
ref_count: 47
tags:
- gen-from-ref
- other-default
- paper
venue: IEEE Transactions on Pattern Analysis and Machine Intelligence
year: 2016
---

# Real-Time Lexicon-Free Scene Text Localization and Recognition

## Abstract

An end-to-end real-time text localization and recognition method is presented. Its real-time performance is achieved by posing the character detection and segmentation problem as an efficient sequential selection from the set of Extremal Regions. The ER detector is robust against blur, low contrast and illumination, color and texture variation. In the first stage, the probability of each ER being a character is estimated using features calculated by a novel algorithm in constant time and only ERs with locally maximal probability are selected for the second stage, where the classification accuracy is improved using computationally more expensive features. A highly efficient clustering algorithm then groups ERs into text lines and an OCR classifier trained on synthetic fonts is exploited to label character regions. The most probable character sequence is selected in the last stage when the context of each character is known. The method was evaluated on three public datasets. On the ICDAR 2013 dataset the method achieves state-of-the-art results in text localization; on the more challenging SVT dataset, the proposed method significantly outperforms the state-of-the-art methods and demonstrates that the proposed pipeline can incorporate additional prior knowledge about the detected text. The proposed method was exploited as the baseline in the ICDAR 2015 Robust Reading competition, where it compares favourably to the state-of-the art.

## Paper References

1. Real-time scene text localization and recognition
2. A Method for Text Localization and Recognition in Real-World Images
3. On Combining Multiple Segmentations in Scene Text Recognition
4. Text Localization in Real-World Images Using Efficiently Pruned Exhaustive Search
5. Robust Text Detection in Natural Scene Images
6. Region-Based Discriminative Feature Pooling for Scene Text Recognition
7. End-to-end scene text recognition
8. Robust Text Detection in Natural Scene Images
9. Multi-Orientation Scene Text Detection with Adaptive Clustering
10. Reading Text in the Wild with Convolutional Neural Networks
11. Orientation Robust Text Line Detection in Natural Images
12. Top-down and bottom-up cues for scene text recognition
13. Automatic Labeling for Scene Text Database
14. ICDAR 2011 Robust Reading Competition Challenge 2 - Reading Text in Scene Images
15. Character Energy and Link Energy-Based Text Extraction in Scene Images
16. Scene Text Recognition Using Similarity and a Lexicon with Sparse Belief Propagation
17. Toward Integrated Scene Text Reading
18. Strokelets - A Learned Multi-scale Representation for Scene Text Recognition
19. PhotoOCR - Reading Text in Uncontrolled Conditions
20. Character Recognition in Natural Images
21. Large-Lexicon Attribute-Consistent Text Recognition in Natural Images
22. End-to-end text recognition with convolutional neural networks
23. [Robust Real-Time Face Detection](2001-robust-real-time-face-detection)
24. A New Class of Learnable Detectors for Categorisation
25. AdaBoost for Text Detection in Natural Scene
26. Detecting text in natural scenes with stroke width transform
27. ICDAR 2015 competition on Robust Reading
28. Handwritten digit recognition - investigation of normalization and feature extraction techniques
29. ICDAR 2013 Robust Reading Competition
30. Object count/area graphs for the evaluation of object detection and segmentation algorithms
31. A Computational Approach to Edge Detection
32. Color image segmentation - advances and prospects
33. Color image segmentation
34. [Robust Wide Baseline Stereo from Maximally Stable Extremal Regions](2002-robust-wide-baseline-stereo-from-maximally-stable-extremal-regions)
35. Evaluating Multiple Object Tracking Performance - The CLEAR MOT Metrics
36. Fast Approximate Nearest Neighbors with Automatic Algorithm Configuration
37. IEEE TRANSACTIONS ON PATTERN ANALYSIS AND MACHINE INTELLIGENCE
38. Introduction to Support Vector Machines
39. The Enhanced Flock of Trackers
40. Improved Boosting Algorithms Using Confidence-rated Predictions
41. Digital Image Processing - PIKS Inside
42. An introduction to kernel-based learning algorithms
43. Obtaining Calibrated Probabilities from Boosting
