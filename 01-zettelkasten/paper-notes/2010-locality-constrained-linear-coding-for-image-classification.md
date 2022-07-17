---
title: Locality-constrained Linear Coding for image classification
authors:
- Jinjun Wang
- Jianchao Yang
- Kai Yu
- Fengjun Lv
- Thomas S. Huang
- Yihong Gong
fieldsOfStudy:
- Computer Science
meta_key: 2010-locality-constrained-linear-coding-for-image-classification
numCitedBy: 3242
reading_status: TBD
ref_count: 29
tags:
- gen-from-ref
- other-default
- paper
venue: 2010 IEEE Computer Society Conference on Computer Vision and Pattern Recognition
year: 2010
---

# Locality-constrained Linear Coding for image classification

## Abstract

The traditional SPM approach based on bag-of-features (BoF) requires nonlinear classifiers to achieve good image classification performance. This paper presents a simple but effective coding scheme called Locality-constrained Linear Coding (LLC) in place of the VQ coding in traditional SPM. LLC utilizes the locality constraints to project each descriptor into its local-coordinate system, and the projected coordinates are integrated by max pooling to generate the final representation. With linear classifier, the proposed approach performs remarkably better than the traditional nonlinear SPM, achieving state-of-the-art performance on several benchmarks. Compared with the sparse coding strategy [22], the objective function used by LLC has an analytical solution. In addition, the paper proposes a fast approximated LLC method by first performing a K-nearest-neighbor search and then solving a constrained least square fitting problem, bearing computational complexity of O(M + K2). Hence even with very large codebooks, our system can still process multiple frames per second. This efficiency significantly adds to the practical values of LLC for real applications.

## Paper References

1. Linear spatial pyramid matching using sparse coding for image classification
2. Creating efficient codebooks for visual recognition
3. Unifying discriminative visual codebook generation with classifier training for object category recognition
4. Hierarchical Gaussianization for image classification
5. Nonlinear Learning using Local Coordinate Coding
6. Scene Classification Using a Hybrid Generative/Discriminative Approach
7. In defense of Nearest-Neighbor based image classification
8. SVM-KNN - Discriminative Nearest Neighbor Classification for Visual Category Recognition
9. Pyramid Match Kernels - Discriminative Classification with Sets of Image Features (version 2)
10. The pyramid match kernel - discriminative classification with sets of image features
11. [Beyond Bags of Features - Spatial Pyramid Matching for Recognizing Natural Scene Categories](2006-beyond-bags-of-features-spatial-pyramid-matching-for-recognizing-natural-scene-categories)
12. Efficient sparse coding algorithms
13. Kernel Codebooks for Scene Categorization
14. A maximum entropy framework for part-based texture and object recognition
15. Fast image search for learned metrics
16. [Histograms of oriented gradients for human detection](2005-histograms-of-oriented-gradients-for-human-detection)
17. [Video Google - a text retrieval approach to object matching in videos](2003-video-google-a-text-retrieval-approach-to-object-matching-in-videos)
18. Shape matching and object recognition using low distortion correspondences
19. Learning Generative Visual Models from Few Training Examples - An Incremental Bayesian Approach Tested on 101 Object Categories
20. [Nonlinear dimensionality reduction by locally linear embedding.](2000-nonlinear-dimensionality-reduction-by-locally-linear-embedding)
21. What is the spatial extent of an object?
22. A numerically stable dual method for solving strictly convex quadratic programs
23. The PASCAL visual object classes challenge 2006 (VOC2006) results
24. [The PASCAL Visual Object Classes Challenge](2006-the-pascal-visual-object-classes-challenge)
25. Caltech-256 Object Category Dataset
26. Resolution enhancement based on learning the sparse association of image patches
27. [Visual categorization with bags of keypoints](2004-visual-categorization-with-bags-of-keypoints)
