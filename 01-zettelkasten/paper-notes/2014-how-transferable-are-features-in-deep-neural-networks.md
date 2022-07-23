---
title: How transferable are features in deep neural networks?
authors:
- J. Yosinski
- J. Clune
- Yoshua Bengio
- Hod Lipson
fieldsOfStudy:
- Computer Science
meta_key: 2014-how-transferable-are-features-in-deep-neural-networks
numCitedBy: 5853
reading_status: TBD
ref_count: 16
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/How-transferable-are-features-in-deep-neural-Yosinski-Clune/081651b38ff7533550a3adfc1c00da333a8fe86c?sort=total-citations
venue: NIPS
year: 2014
---

# How transferable are features in deep neural networks?

## Abstract

Many deep neural networks trained on natural images exhibit a curious phenomenon in common: on the first layer they learn features similar to Gabor filters and color blobs. Such first-layer features appear not to be specific to a particular dataset or task, but general in that they are applicable to many datasets and tasks. Features must eventually transition from general to specific by the last layer of the network, but this transition has not been studied extensively. In this paper we experimentally quantify the generality versus specificity of neurons in each layer of a deep convolutional neural network and report a few surprising results. Transferability is negatively affected by two distinct issues: (1) the specialization of higher layer neurons to their original task at the expense of performance on the target task, which was expected, and (2) optimization difficulties related to splitting networks between co-adapted neurons, which was not expected. In an example network trained on ImageNet, we demonstrate that either of these two issues may dominate, depending on whether features are transferred from the bottom, middle, or top of the network. We also document that the transferability of features decreases as the distance between the base task and target task increases, but that transferring features even from distant tasks can be better than using random features. A final surprising result is that initializing a network with transferred features from almost any number of layers can produce a boost to generalization that lingers even after fine-tuning to the target dataset.

## Paper References

1. [DeCAF - A Deep Convolutional Activation Feature for Generic Visual Recognition](2014-decaf-a-deep-convolutional-activation-feature-for-generic-visual-recognition.md)
2. [ImageNet classification with deep convolutional neural networks](2012-imagenet-classification-with-deep-convolutional-neural-networks.md)
3. Deep Learning of Representations for Unsupervised and Transfer Learning
4. [Visualizing and Understanding Convolutional Networks](2014-visualizing-and-understanding-convolutional-networks.md)
5. ICA with Reconstruction Cost for Efficient Overcomplete Feature Learning
6. [OverFeat - Integrated Recognition, Localization and Detection using Convolutional Networks](2014-overfeat-integrated-recognition-localization-and-detection-using-convolutional-networks.md)
7. Convolutional deep belief networks for scalable unsupervised learning of hierarchical representations
8. [Improving neural networks by preventing co-adaptation of feature detectors](2012-improving-neural-networks-by-preventing-co-adaptation-of-feature-detectors.md)
9. What is the best multi-stage architecture for object recognition?
10. [Rich Feature Hierarchies for Accurate Object Detection and Semantic Segmentation](2014-rich-feature-hierarchies-for-accurate-object-detection-and-semantic-segmentation.md)
11. Deep Learners Benefit More from Out-of-Distribution Examples
12. [Caffe - Convolutional Architecture for Fast Feature Embedding](2014-caffe-convolutional-architecture-for-fast-feature-embedding.md)
13. Learning Many Related Tasks at the Same Time with Backpropagation
14. Learning Generative Visual Models from Few Training Examples - An Incremental Bayesian Approach Tested on 101 Object Categories
15. [ImageNet - A large-scale hierarchical image database](2009-imagenet-a-large-scale-hierarchical-image-database.md)
16. Supplementary References
