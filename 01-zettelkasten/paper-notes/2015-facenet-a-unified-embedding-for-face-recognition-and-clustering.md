---
title: FaceNet - A unified embedding for face recognition and clustering
authors:
- Florian Schroff
- Dmitry Kalenichenko
- James Philbin
fieldsOfStudy:
- Computer Science
meta_key: 2015-facenet-a-unified-embedding-for-face-recognition-and-clustering
numCitedBy: 8229
reading_status: TBD
ref_count: 30
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/FaceNet:-A-unified-embedding-for-face-recognition-Schroff-Kalenichenko/5aa26299435bdf7db874ef1640a6c3b5a4a2c394?sort=total-citations
venue: 2015 IEEE Conference on Computer Vision and Pattern Recognition (CVPR)
year: 2015
---

[semanticscholar url](https://www.semanticscholar.org/paper/FaceNet:-A-unified-embedding-for-face-recognition-Schroff-Kalenichenko/5aa26299435bdf7db874ef1640a6c3b5a4a2c394?sort=total-citations)

# FaceNet - A unified embedding for face recognition and clustering

## Abstract

Despite significant recent advances in the field of face recognition [10, 14, 15, 17], implementing face verification and recognition efficiently at scale presents serious challenges to current approaches. In this paper we present a system, called FaceNet, that directly learns a mapping from face images to a compact Euclidean space where distances directly correspond to a measure offace similarity. Once this space has been produced, tasks such as face recognition, verification and clustering can be easily implemented using standard techniques with FaceNet embeddings asfeature vectors. Our method uses a deep convolutional network trained to directly optimize the embedding itself, rather than an intermediate bottleneck layer as in previous deep learning approaches. To train, we use triplets of roughly aligned matching / non-matching face patches generated using a novel online triplet mining method. The benefit of our approach is much greater representational efficiency: we achieve state-of-the-artface recognition performance using only 128-bytes perface. On the widely used Labeled Faces in the Wild (LFW) dataset, our system achieves a new record accuracy of 99.63%. On YouTube Faces DB it achieves 95.12%. Our system cuts the error rate in comparison to the best published result [15] by 30% on both datasets.

## Paper References

1. [DeepFace - Closing the Gap to Human-Level Performance in Face Verification](2014-deepface-closing-the-gap-to-human-level-performance-in-face-verification.md)
2. Recover Canonical-View Faces in the Wild with Deep Neural Networks
3. Deep Learning Face Representation by Joint Identification-Verification
4. Face recognition in unconstrained videos with matched background similarity
5. Deeply learned face representations are sparse, selective, and robust
6. Surpassing Human-Level Face Verification Performance on LFW with GaussianFace
7. [Labeled Faces in the Wild - A Database forStudying Face Recognition in Unconstrained Environments](2008-labeled-faces-in-the-wild-a-database-forstudying-face-recognition-in-unconstrained-environments.md)
8. Joint Cascade Face Detection and Alignment
9. Bayesian Face Revisited - A Joint Formulation
10. [Distance Metric Learning for Large Margin Nearest Neighbor Classification](2005-distance-metric-learning-for-large-margin-nearest-neighbor-classification.md)
11. [Network In Network](2014-network-in-network.md)
12. [Visualizing and Understanding Convolutional Networks](2014-visualizing-and-understanding-convolutional-networks.md)
13. Learning Fine-Grained Image Similarity with Deep Ranking
14. [Going deeper with convolutions](2015-going-deeper-with-convolutions.md)
15. [Large Scale Distributed Deep Networks](2012-large-scale-distributed-deep-networks.md)
16. [Maxout Networks](2013-maxout-networks.md)
17. The general inefficiency of batch training for gradient descent learning
18. Learning a Distance Metric from Relative Comparisons
19. Backpropagation Applied to Handwritten Zip Code Recognition
20. [Adaptive Subgradient Methods for Online Learning and Stochastic Optimization](2010-adaptive-subgradient-methods-for-online-learning-and-stochastic-optimization.md)
21. The CMU Pose, Illumination, and Expression (PIE) database
22. Learning representations by back-propagating errors
23. [Curriculum learning](2009-curriculum-learning.md)
