---
title: Edge Boxes - Locating Object Proposals from Edges
authors:
- C. L. Zitnick
- "Piotr Doll\xE1r"
fieldsOfStudy:
- Computer Science
meta_key: 2014-edge-boxes-locating-object-proposals-from-edges
numCitedBy: 2419
reading_status: TBD
ref_count: 28
tags:
- gen-from-ref
- paper
venue: ECCV
year: 2014
---

# Edge Boxes - Locating Object Proposals from Edges

## Abstract

The use of object proposals is an effective recent approach for increasing the computational efficiency of object detection. We propose a novel method for generating object bounding box proposals using edges. Edges provide a sparse yet informative representation of an image. Our main observation is that the number of contours that are wholly contained in a bounding box is indicative of the likelihood of the box containing an object. We propose a simple box objectness score that measures the number of edges that exist in the box minus those that are members of contours that overlap the box’s boundary. Using efficient data structures, millions of candidate boxes can be evaluated in a fraction of a second, returning a ranked set of a few thousand top-scoring proposals. Using standard metrics, we show results that are significantly more accurate than the current state-of-the-art while being faster to compute. In particular, given just 1000 proposals we achieve over 96% object recall at overlap threshold of 0.5 and over 75% recall at the more challenging overlap of 0.7. Our approach runs in 0.25 seconds and we additionally demonstrate a near real-time variant with only minor loss in accuracy.

## Paper References

1. Prime Object Proposals with Randomized Prim's Algorithm
2. Generating Object Segmentation Proposals Using Global and Local Search
3. Improving Spatial Support for Objects via Multiple Segmentations
4. [Measuring the Objectness of Image Windows](2012-measuring-the-objectness-of-image-windows)
5. Regionlets for Generic Object Detection
6. Fast Edge Detection Using Structured Forests
7. [Selective Search for Object Recognition](2013-selective-search-for-object-recognition)
8. Recognition using regions
9. Structured Forests for Fast Edge Detection
10. CPMC - Automatic Object Segmentation Using Constrained Parametric Min-Cuts
11. A Computational Approach to Edge Detection
12. [Rich Feature Hierarchies for Accurate Object Detection and Semantic Segmentation](2014-rich-feature-hierarchies-for-accurate-object-detection-and-semantic-segmentation)
13. BING - Binarized normed gradients for objectness estimation at 300fps
14. How good are detection proposals, really?
15. Learning a category independent object detection cascade
16. Category-Independent Object Proposals with Diverse Ranking
17. Weakly supervised object detector learning with model drift detection
18. ClassCut for Unsupervised Class Segmentation
19. [Histograms of oriented gradients for human detection](2005-histograms-of-oriented-gradients-for-human-detection)
20. Using Multiple Segmentations to Discover Objects and their Extent in Image Collections
21. Localizing Objects While Learning Their Appearance
22. [Object Detection with Discriminatively Trained Part Based Models](2009-object-detection-with-discriminatively-trained-part-based-models)
23. Geometric context from a single image
24. [Efficient Graph-Based Image Segmentation](2004-efficient-graph-based-image-segmentation)
25. How do humans sketch objects?
26. [The Pascal Visual Object Classes (VOC) Challenge](2009-the-pascal-visual-object-classes-voc-challenge)
27. Vision. A Computational Investigation Into the Human Representation and Processing of Visual Information. David Marr
28. Fast Edge Detection Using Structured Forests
