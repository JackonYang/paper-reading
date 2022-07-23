---
title: An Analysis of Single-Layer Networks in Unsupervised Feature Learning
authors:
- Adam Coates
- A. Ng
- Honglak Lee
fieldsOfStudy:
- Computer Science
meta_key: 2011-an-analysis-of-single-layer-networks-in-unsupervised-feature-learning
numCitedBy: 2609
reading_status: TBD
ref_count: 40
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/An-Analysis-of-Single-Layer-Networks-in-Feature-Coates-Ng/be9a17321537d9289875fe475b71f4821457b435?sort=total-citations
venue: AISTATS
year: 2011
---

[semanticscholar url](https://www.semanticscholar.org/paper/An-Analysis-of-Single-Layer-Networks-in-Feature-Coates-Ng/be9a17321537d9289875fe475b71f4821457b435?sort=total-citations)

# An Analysis of Single-Layer Networks in Unsupervised Feature Learning

## Abstract

A great deal of research has focused on algorithms for learning features from unlabeled data. Indeed, much progress has been made on benchmark datasets like NORB and CIFAR by employing increasingly complex unsupervised learning algorithms and deep models. In this paper, however, we show that several simple factors, such as the number of hidden nodes in the model, may be more important to achieving high performance than the learning algorithm or the depth of the model. Specifically, we will apply several othe-shelf feature learning algorithms (sparse auto-encoders, sparse RBMs, K-means clustering, and Gaussian mixtures) to CIFAR, NORB, and STL datasets using only singlelayer networks. We then present a detailed analysis of the eect of changes in the model setup: the receptive field size, number of hidden nodes (features), the step-size (“stride”) between extracted features, and the eect of whitening. Our results show that large numbers of hidden nodes and dense feature extraction are critical to achieving high performance—so critical, in fact, that when these parameters are pushed to their limits, we achieve state-of-the-art performance on both CIFAR-10 and NORB using only a single layer of features. More surprisingly, our best performance is based on K-means clustering, which is extremely fast, has no hyperparameters to tune beyond the model structure itself, and is very easy to implement. Despite the simplicity of our system, we achieve accuracy beyond all previously published results on the CIFAR-10 and NORB datasets (79.6% and 97.2% respectively).

## Paper References

1. [Learning Multiple Layers of Features from Tiny Images](2009-learning-multiple-layers-of-features-from-tiny-images)
2. Sparse Feature Learning for Deep Belief Networks
3. Measuring Invariances in Deep Networks
4. Convolutional Deep Belief Networks on CIFAR-10
5. Sparse deep belief net model for visual area V2
6. [Extracting and composing robust features with denoising autoencoders](2008-extracting-and-composing-robust-features-with-denoising-autoencoders)
7. Efficient Learning of Sparse Representations with an Energy-Based Model
8. Convolutional deep belief networks for scalable unsupervised learning of hierarchical representations
9. Modeling pixel means and covariances using factorized third-order boltzmann machines
10. [A Fast Learning Algorithm for Deep Belief Nets](2006-a-fast-learning-algorithm-for-deep-belief-nets)
11. Learning Convolutional Feature Hierarchies for Visual Recognition
12. Learning mid-level features for recognition
13. Deep Boltzmann Machines
14. Large-scale object recognition with CUDA-accelerated hierarchical neural networks
15. Sampling Strategies for Bag-of-Features Image Classification
16. 3D Object Recognition with Deep Belief Nets
17. What is the best multi-stage architecture for object recognition?
18. Factored 3-Way Restricted Boltzmann Machines For Modeling Natural Images
19. A Theoretical Analysis of Feature Pooling in Visual Recognition
20. Emergence of simple-cell receptive field properties by learning a sparse code for natural images
21. [A Bayesian hierarchical model for learning natural scene categories](2005-a-bayesian-hierarchical-model-for-learning-natural-scene-categories)
22. Efficient sparse coding algorithms
23. The “independent components” of natural scenes are edge filters
24. Linear spatial pyramid matching using sparse coding for image classification
25. Independent component analysis - algorithms and applications
26. Improved Local Coordinate Coding using Local Tangents
27. Learning methods for generic object recognition with invariance to pose and lighting
28. A Statistical Approach to Material Classification Using Image Patch Exemplars
29. [Training Products of Experts by Minimizing Contrastive Divergence](2002-training-products-of-experts-by-minimizing-contrastive-divergence)
30. Object categorization by learned universal visual dictionary
31. Hyperfeatures - Multilevel Local Coding for Visual Recognition
32. Nonlinear Learning using Local Coordinate Coding
33. [Beyond Bags of Features - Spatial Pyramid Matching for Recognizing Natural Scene Categories](2006-beyond-bags-of-features-spatial-pyramid-matching-for-recognizing-natural-scene-categories)
34. Kernel Codebooks for Scene Categorization
35. [Visual categorization with bags of keypoints](2004-visual-categorization-with-bags-of-keypoints)
