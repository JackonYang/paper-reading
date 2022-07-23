---
title: FitNets - Hints for Thin Deep Nets
authors:
- Adriana Romero
- Nicolas Ballas
- S. Kahou
- Antoine Chassang
- C. Gatta
- Yoshua Bengio
fieldsOfStudy:
- Computer Science
meta_key: 2015-fitnets-hints-for-thin-deep-nets
numCitedBy: 2037
reading_status: TBD
ref_count: 47
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/FitNets:-Hints-for-Thin-Deep-Nets-Romero-Ballas/cd85a549add0c7c7def36aca29837efd24b24080?sort=total-citations
venue: ICLR
year: 2015
---

[semanticscholar url](https://www.semanticscholar.org/paper/FitNets:-Hints-for-Thin-Deep-Nets-Romero-Ballas/cd85a549add0c7c7def36aca29837efd24b24080?sort=total-citations)

# FitNets - Hints for Thin Deep Nets

## Abstract

While depth tends to improve network performances, it also makes gradient-based training more difficult since deeper networks tend to be more non-linear. The recently proposed knowledge distillation approach is aimed at obtaining small and fast-to-execute models, and it has shown that a student network could imitate the soft output of a larger teacher network or ensemble of networks. In this paper, we extend this idea to allow the training of a student that is deeper and thinner than the teacher, using not only the outputs but also the intermediate representations learned by the teacher as hints to improve the training process and final performance of the student. Because the student intermediate hidden layer will generally be smaller than the teacher's intermediate hidden layer, additional parameters are introduced to map the student hidden layer to the prediction of the teacher hidden layer. This allows one to train deeper students that can generalize better or run faster, a trade-off that is controlled by the chosen student capacity. For example, on CIFAR-10, a deep student network with almost 10.4 times less parameters outperforms a larger, state-of-the-art teacher network.

## Paper References

1. [Greedy Layer-Wise Training of Deep Networks](2006-greedy-layer-wise-training-of-deep-networks.md)
2. [Deeply-Supervised Nets](2015-deeply-supervised-nets.md)
3. The Difficulty of Training Deep Architectures and the Effect of Unsupervised Pre-Training
4. Knowledge Matters - Importance of Prior Information for Optimization
5. [Learning Deep Architectures for AI](2007-learning-deep-architectures-for-ai.md)
6. [Distilling the Knowledge in a Neural Network](2015-distilling-the-knowledge-in-a-neural-network.md)
7. [A Fast Learning Algorithm for Deep Belief Nets](2006-a-fast-learning-algorithm-for-deep-belief-nets.md)
8. [Going deeper with convolutions](2015-going-deeper-with-convolutions.md)
9. [Learning Multiple Layers of Features from Tiny Images](2009-learning-multiple-layers-of-features-from-tiny-images.md)
10. [Speeding up Convolutional Neural Networks with Low Rank Expansions](2014-speeding-up-convolutional-neural-networks-with-low-rank-expansions.md)
11. [Representation Learning - A Review and New Perspectives](2013-representation-learning-a-review-and-new-perspectives.md)
12. [Very Deep Convolutional Networks for Large-Scale Image Recognition](2015-very-deep-convolutional-networks-for-large-scale-image-recognition.md)
13. Compressing Deep Convolutional Networks using Vector Quantization
14. On the Number of Linear Regions of Deep Neural Networks
15. [Maxout Networks](2013-maxout-networks.md)
16. Do Deep Nets Really Need to be Deep?
17. A Two-Stage Pretraining Algorithm for Deep Boltzmann Machines
18. An empirical evaluation of deep architectures on problems with many factors of variation
19. Deep learning via semi-supervised embedding
20. [Exploiting Linear Structure Within Convolutional Networks for Efficient Evaluation](2014-exploiting-linear-structure-within-convolutional-networks-for-efficient-evaluation.md)
21. Model compression
22. [Gradient-based learning applied to document recognition](1998-gradient-based-learning-applied-to-document-recognition.md)
23. [Reading Digits in Natural Images with Unsupervised Feature Learning](2011-reading-digits-in-natural-images-with-unsupervised-feature-learning.md)
24. [Theano - new features and speed improvements](2012-theano-new-features-and-speed-improvements.md)
25. Identifying and attacking the saddle point problem in high-dimensional non-convex optimization
26. [ImageNet Large Scale Visual Recognition Challenge](2015-imagenet-large-scale-visual-recognition-challenge.md)
27. Approximate Nearest Neighbor Search by Residual Vector Quantization
28. Annotated Facial Landmarks in the Wild - A large-scale, real-world database for facial landmark localization
29. [Product Quantization for Nearest Neighbor Search](2011-product-quantization-for-nearest-neighbor-search.md)
30. Pylearn2 - a machine learning research library
