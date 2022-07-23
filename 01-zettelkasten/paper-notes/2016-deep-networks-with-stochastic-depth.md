---
title: Deep Networks with Stochastic Depth
authors:
- Gao Huang
- Yu Sun
- Zhuang Liu
- Daniel Sedra
- Kilian Q. Weinberger
fieldsOfStudy:
- Computer Science
meta_key: 2016-deep-networks-with-stochastic-depth
numCitedBy: 1458
reading_status: TBD
ref_count: 39
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Deep-Networks-with-Stochastic-Depth-Huang-Sun/51db1f3c8dfc7d4077da39c96bb90a6358128111?sort=total-citations
venue: ECCV
year: 2016
---

# Deep Networks with Stochastic Depth

## Abstract

Very deep convolutional networks with hundreds of layers have led to significant reductions in error on competitive benchmarks. Although the unmatched expressiveness of the many layers can be highly desirable at test time, training very deep networks comes with its own set of challenges. The gradients can vanish, the forward flow often diminishes, and the training time can be painfully slow. To address these problems, we propose stochastic depth, a training procedure that enables the seemingly contradictory setup to train short networks and use deep networks at test time. We start with very deep networks but during training, for each mini-batch, randomly drop a subset of layers and bypass them with the identity function. This simple approach complements the recent success of residual networks. It reduces training time substantially and improves the test error significantly on almost all data sets that we used for evaluation. With stochastic depth we can increase the depth of residual networks even beyond 1200 layers and still yield meaningful improvements in test error (4.91 % on CIFAR-10).

## Paper References

1. [Deep Residual Learning for Image Recognition](2016-deep-residual-learning-for-image-recognition.md)
2. [Deeply-Supervised Nets](2015-deeply-supervised-nets.md)
3. Gradual DropIn of Layers to Train Very Deep Neural Networks
4. [On the importance of initialization and momentum in deep learning](2013-on-the-importance-of-initialization-and-momentum-in-deep-learning.md)
5. [Very Deep Convolutional Networks for Large-Scale Image Recognition](2015-very-deep-convolutional-networks-for-large-scale-image-recognition.md)
6. [Striving for Simplicity - The All Convolutional Net](2015-striving-for-simplicity-the-all-convolutional-net.md)
7. [Batch Normalization - Accelerating Deep Network Training by Reducing Internal Covariate Shift](2015-batch-normalization-accelerating-deep-network-training-by-reducing-internal-covariate-shift.md)
8. [Understanding the difficulty of training deep feedforward neural networks](2010-understanding-the-difficulty-of-training-deep-feedforward-neural-networks.md)
9. [ImageNet classification with deep convolutional neural networks](2012-imagenet-classification-with-deep-convolutional-neural-networks.md)
10. [Dropout - a simple way to prevent neural networks from overfitting](2014-dropout-a-simple-way-to-prevent-neural-networks-from-overfitting.md)
11. [Generalizing Pooling Functions in Convolutional Neural Networks - Mixed, Gated, and Tree](2016-generalizing-pooling-functions-in-convolutional-neural-networks-mixed-gated-and-tree.md)
12. [Network In Network](2014-network-in-network.md)
13. [Training Very Deep Networks](2015-training-very-deep-networks.md)
14. [Identity Mappings in Deep Residual Networks](2016-identity-mappings-in-deep-residual-networks.md)
15. [Learning Multiple Layers of Features from Tiny Images](2009-learning-multiple-layers-of-features-from-tiny-images.md)
16. Why Does Unsupervised Pre-training Help Deep Learning?
17. Recurrent convolutional neural network for object recognition
18. [Going deeper with convolutions](2015-going-deeper-with-convolutions.md)
19. Fractional Max-Pooling
20. Scalable Bayesian Optimization Using Deep Neural Networks
21. [Regularization of Neural Networks using DropConnect](2013-regularization-of-neural-networks-using-dropconnect.md)
22. [OverFeat - Integrated Recognition, Localization and Detection using Convolutional Networks](2014-overfeat-integrated-recognition-localization-and-detection-using-convolutional-networks.md)
23. [Maxout Networks](2013-maxout-networks.md)
24. Learning Activation Functions to Improve Deep Neural Networks
25. [Reading Digits in Natural Images with Unsupervised Feature Learning](2011-reading-digits-in-natural-images-with-unsupervised-feature-learning.md)
26. The Cascade-Correlation Learning Architecture
27. Learning long-term dependencies with gradient descent is difficult
28. [ImageNet - A large-scale hierarchical image database](2009-imagenet-a-large-scale-hierarchical-image-database.md)
29. [Rectified Linear Units Improve Restricted Boltzmann Machines](2010-rectified-linear-units-improve-restricted-boltzmann-machines.md)
30. Computational limitations of small-depth circuits
31. [Torch7 - A Matlab-like Environment for Machine Learning](2011-torch7-a-matlab-like-environment-for-machine-learning.md)
32. On the power of small-depth threshold circuits
