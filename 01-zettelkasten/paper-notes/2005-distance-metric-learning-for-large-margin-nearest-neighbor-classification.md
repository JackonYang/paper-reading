---
title: Distance Metric Learning for Large Margin Nearest Neighbor Classification
authors:
- Kilian Q. Weinberger
- L. Saul
fieldsOfStudy:
- Computer Science
meta_key: 2005-distance-metric-learning-for-large-margin-nearest-neighbor-classification
numCitedBy: 5037
reading_status: TBD
ref_count: 34
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Distance-Metric-Learning-for-Large-Margin-Nearest-Weinberger-Saul/78947497cbbffc691aac3f590d972130259af9ce?sort=total-citations
venue: NIPS
year: 2005
---

[semanticscholar url](https://www.semanticscholar.org/paper/Distance-Metric-Learning-for-Large-Margin-Nearest-Weinberger-Saul/78947497cbbffc691aac3f590d972130259af9ce?sort=total-citations)

# Distance Metric Learning for Large Margin Nearest Neighbor Classification

## Abstract

The accuracy of k-nearest neighbor (kNN) classification depends significantly on the metric used to compute distances between different examples. In this paper, we show how to learn a Mahalanobis distance metric for kNN classification from labeled examples. The Mahalanobis metric can equivalently be viewed as a global linear transformation of the input space that precedes kNN classification using Euclidean distances. In our approach, the metric is trained with the goal that the k-nearest neighbors always belong to the same class while examples from different classes are separated by a large margin. As in support vector machines (SVMs), the margin criterion leads to a convex optimization based on the hinge loss. Unlike learning in SVMs, however, our approach requires no modification or extension for problems in multiway (as opposed to binary) classification. In our framework, the Mahalanobis distance metric is obtained as the solution to a semidefinite program. On several data sets of varying size and difficulty, we find that metrics trained in this way lead to significant improvements in kNN classification. Sometimes these results can be further improved by clustering the training examples and learning an individual metric within each cluster. We show how to learn and combine these local metrics in a globally integrated manner.

## Paper References

1. An Invariant Large Margin Nearest Neighbour Classifier
2. Large Margin Component Analysis
3. Large margin nearest neighbor classifiers
4. Metric Learning by Collapsing Classes
5. Learning a Mahalanobis Metric from Equivalence Constraints
6. Discriminant Adaptive Nearest Neighbor Classification
7. Efficiently Learning the Metric with Side-Information
8. [Distance Metric Learning with Application to Clustering with Side-Information](2002-distance-metric-learning-with-application-to-clustering-with-side-information)
9. Neighbourhood Components Analysis
10. Nearest neighbor pattern classification
11. Kernel relevant component analysis for distance metric learning
12. Learning a similarity metric discriminatively, with application to face verification
13. Cover trees for nearest neighbor
14. An Investigation of Practical Approximate Nearest Neighbor Algorithms
15. On the Algorithmic Implementation of Multiclass Kernel-based Vector Machines
16. Learning with Idealized Kernels
17. Learning The Discriminative Power-Invariance Trade-Off
18. Solving Multiclass Learning Problems via Error-Correcting Output Codes
19. Efficient Pattern Recognition Using a New Transformation Distance
20. Learning with Kernels - support vector machines, regularization, optimization, and beyond
21. Online and batch learning of pseudo-metrics
22. Approximate nearest neighbors - towards removing the curse of dimensionality
23. Adjustment Learning and Relevant Component Analysis
24. [Eigenfaces for Recognition](1991-eigenfaces-for-recognition)
25. An introduction to kernel-based learning algorithms
26. [Normalized cuts and image segmentation](1997-normalized-cuts-and-image-segmentation)
27. Comparison of learning algorithms for handwritten digit recognition
28. An Algorithm for Finding Best Matches in Logarithmic Expected Time
29. Semidefinite Programming
30. [Convex Optimization](2006-convex-optimization)
31. Principal Component Analysis
32. Efficient Algorithms with Neural Network Behavior
33. Nonlinear Component Analysis as a Kernel Eigenvalue Problem
34. Learning the Kernel Matrix with Semidefinite Programming
