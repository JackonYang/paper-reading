---
title: Measuring the Objectness of Image Windows
authors:
- B. Alexe
- Thomas Deselaers
- V. Ferrari
fieldsOfStudy:
- Computer Science
meta_key: 2012-measuring-the-objectness-of-image-windows
numCitedBy: 1196
reading_status: TBD
ref_count: 62
tags:
- gen-from-ref
- other-default
- paper
venue: IEEE Transactions on Pattern Analysis and Machine Intelligence
year: 2012
---

# Measuring the Objectness of Image Windows

## Abstract

We present a generic objectness measure, quantifying how likely it is for an image window to contain an object of any class. We explicitly train it to distinguish objects with a well-defined boundary in space, such as cows and telephones, from amorphous background elements, such as grass and road. The measure combines in a Bayesian framework several image cues measuring characteristics of objects, such as appearing different from their surroundings and having a closed boundary. These include an innovative cue to measure the closed boundary characteristic. In experiments on the challenging PASCAL VOC 07 dataset, we show this new cue to outperform a state-of-the-art saliency measure, and the combined objectness measure to perform better than any cue alone. We also compare to interest point operators, a HOG detector, and three recent works aiming at automatic object segmentation. Finally, we present two applications of objectness. In the first, we sample a small numberof windows according to their objectness probability and give an algorithm to employ them as location priors for modern class-specific object detectors. As we show experimentally, this greatly reduces the number of windows evaluated by the expensive class-specific model. In the second application, we use objectness as a complementary score in addition to the class-specific model, which leads to fewer false positives. As shown in several recent papers, objectness can act as a valuable focus of attention mechanism in many other applications operating on image windows, including weakly supervised learning of object categories, unsupervised pixelwise segmentation, and object tracking in video. Computing objectness is very efficient and takes only about 4 sec. per image.

## Paper References

1. What is an object?
2. Joint learning of visual attributes, object classes and visual saliency
3. Image saliency by isocentric curvedness and color
4. Localizing Objects While Learning Their Appearance
5. Beyond sliding windows - Object localization by efficient subwindow search
6. Constrained parametric min-cuts for automatic object segmentation
7. Discriminative Models for Multi-Class Object Layout
8. Groups of Adjacent Contour Segments for Object Detection
9. ClassCut for Unsupervised Class Segmentation
10. Decomposing a scene into geometric and semantically consistent regions
11. Scale-Invariant Object Categorization Using a Scale-Adaptive Mean-Shift Search
12. [Object Detection with Discriminatively Trained Part Based Models](2009-object-detection-with-discriminatively-trained-part-based-models)
13. Multi-stage Contour Based Detection of Deformable Objects
14. A Nonparametric Approach to Bottom-Up Visual Saliency
15. Weakly supervised object detector learning with model drift detection
16. Frequency-tuned salient region detection
17. [Histograms of oriented gradients for human detection](2005-histograms-of-oriented-gradients-for-human-detection)
18. Using Multiple Segmentations to Discover Objects and their Extent in Image Collections
19. Finding iconic images
20. A framework for visual saliency detection with applications to image thumbnailing
21. Weakly Supervised Learning of Interactions between Humans and Objects
22. Category Independent Object Proposals
23. Object and scene analysis by saccadic eye-movements - an investigation with higher-order statistics.
24. Combining efficient object localization and image classification
25. Bottom-up saliency is a discriminant process
26. Multiple kernels for object detection
27. [Object recognition from local scale-invariant features](1999-object-recognition-from-local-scale-invariant-features)
28. A Computational Approach to Edge Detection
29. Saliency Detection - A Spectral Residual Approach
30. Learning the easy things first - Self-paced visual category discovery
31. Scale and object aware image retargeting for thumbnail browsing
32. Contrast-based image attention analysis by using fuzzy growing
33. Graph-Based Visual Saliency
34. [Scale & Affine Invariant Interest Point Detectors](2004-scale-affine-invariant-interest-point-detectors)
35. Saliency Based on Information Maximization
36. Neural mechanisms of selective visual attention.
37. Efficient Non-Maximum Suppression
38. Classification using intersection kernel support vector machines is efficient
39. Does luminance‐contrast contribute to a saliency map for overt visual attention?
40. Learning Saliency Maps for Object Categorization
41. An Affine Invariant Salient Region Detector
42. The case for context-aware compression
43. [A Model of Saliency-Based Visual Attention for Rapid Scene Analysis](2009-a-model-of-saliency-based-visual-attention-for-rapid-scene-analysis)
44. Summed-area tables for texture mapping
45. On the Estimation of a Probability Density Function by the Maximum Penalized Likelihood Method
46. On Estimation of a Probability Density Function and Mode
47. Efficient Graph-Based Image Segmentationを用いた圃場図自動作成手法の検討
48. [The PASCAL Visual Object Classes Challenge](2006-the-pascal-visual-object-classes-challenge)
49. Learning to Detect a Salient Object
50. Learning Spatial Context - Using Stuff to Find Things
51. Weakly supervised semantic segmentation with a multi-image model
52. Efficient additive kernels via explicit feature maps
53. Determining Patch Saliency Using Low-Level Context
