---
title: Spatial Pyramid Pooling in Deep Convolutional Networks for Visual Recognition
authors:
- Kaiming He
- X. Zhang
- Shaoqing Ren
- Jian Sun
fieldsOfStudy:
- Computer Science
meta_key: 2015-spatial-pyramid-pooling-in-deep-convolutional-networks-for-visual-recognition
numCitedBy: 4868
reading_status: TBD
ref_count: 48
tags:
- gen-from-ref
- other-default
- paper
venue: IEEE Transactions on Pattern Analysis and Machine Intelligence
year: 2015
---

# Spatial Pyramid Pooling in Deep Convolutional Networks for Visual Recognition

## Abstract

Existing deep convolutional neural networks (CNNs) require a fixed-size (e.g., 224<inline-formula><tex-math>$\times$ </tex-math><alternatives><inline-graphic xlink:type="simple" xlink:href="he-ieq1-2389824.gif"/></alternatives></inline-formula>224) input image. This requirement is “artificial” and may reduce the recognition accuracy for the images or sub-images of an arbitrary size/scale. In this work, we equip the networks with another pooling strategy, “spatial pyramid pooling”, to eliminate the above requirement. The new network structure, called SPP-net, can generate a fixed-length representation regardless of image size/scale. Pyramid pooling is also robust to object deformations. With these advantages, SPP-net should in general improve all CNN-based image classification methods. On the ImageNet 2012 dataset, we demonstrate that SPP-net boosts the accuracy of a variety of CNN architectures despite their different designs. On the Pascal VOC 2007 and Caltech101 datasets, SPP-net achieves state-of-the-art classification results using a single full-image representation and no fine-tuning. The power of SPP-net is also significant in object detection. Using SPP-net, we compute the feature maps from the entire image only once, and then pool features in arbitrary regions (sub-images) to generate fixed-length representations for training the detectors. This method avoids repeatedly computing the convolutional features. In processing test images, our method is 24-102 <inline-formula><tex-math>$\times$</tex-math><alternatives><inline-graphic xlink:type="simple" xlink:href="he-ieq2-2389824.gif"/> </alternatives></inline-formula> faster than the R-CNN method, while achieving better or comparable accuracy on Pascal VOC 2007. In ImageNet Large Scale Visual Recognition Challenge (ILSVRC) 2014, our methods rank #2 in object detection and #3 in image classification among all 38 teams. This manuscript also introduces the improvement made for this competition.

## Paper References

1. [Multi-scale Orderless Pooling of Deep Convolutional Activation Features](2014-multi-scale-orderless-pooling-of-deep-convolutional-activation-features)
2. [Network In Network](2014-network-in-network)
3. [Very Deep Convolutional Networks for Large-Scale Image Recognition](2015-very-deep-convolutional-networks-for-large-scale-image-recognition)
4. [Return of the Devil in the Details - Delving Deep into Convolutional Nets](2014-return-of-the-devil-in-the-details-delving-deep-into-convolutional-nets)
5. [Learning and Transferring Mid-level Image Representations Using Convolutional Neural Networks](2014-learning-and-transferring-mid-level-image-representations-using-convolutional-neural-networks)
6. [ImageNet classification with deep convolutional neural networks](2012-imagenet-classification-with-deep-convolutional-neural-networks)
7. [Going deeper with convolutions](2015-going-deeper-with-convolutions)
8. [DeCAF - A Deep Convolutional Activation Feature for Generic Visual Recognition](2014-decaf-a-deep-convolutional-activation-feature-for-generic-visual-recognition)
9. [DeepFace - Closing the Gap to Human-Level Performance in Face Verification](2014-deepface-closing-the-gap-to-human-level-performance-in-face-verification)
10. Some Improvements on Deep Convolutional Neural Network Based Image Classification
11. [Rich Feature Hierarchies for Accurate Object Detection and Semantic Segmentation](2014-rich-feature-hierarchies-for-accurate-object-detection-and-semantic-segmentation)
12. Improving the Fisher Kernel for Large-Scale Image Classification
13. Linear spatial pyramid matching using sparse coding for image classification
14. [CNN Features Off-the-Shelf - An Astounding Baseline for Recognition](2014-cnn-features-off-the-shelf-an-astounding-baseline-for-recognition)
15. PANDA - Pose Aligned Networks for Deep Attribute Modeling
16. Fast Training of Convolutional Networks through FFTs
17. [OverFeat - Integrated Recognition, Localization and Detection using Convolutional Networks](2014-overfeat-integrated-recognition-localization-and-detection-using-convolutional-networks)
18. [Visualizing and Understanding Convolutional Networks](2014-visualizing-and-understanding-convolutional-networks)
19. Exploiting Linear Structure Within Convolutional Networks for Efficient Evaluation
20. [ImageNet Large Scale Visual Recognition Challenge](2015-imagenet-large-scale-visual-recognition-challenge)
21. [Locality-constrained Linear Coding for image classification](2010-locality-constrained-linear-coding-for-image-classification)
22. The devil is in the details - an evaluation of recent feature encoding methods
23. [Deep Neural Networks for Object Detection](2013-deep-neural-networks-for-object-detection)
24. The pyramid match kernel - discriminative classification with sets of image features
25. Generic Object Detection with Dense Neural Patterns and Regionlets
26. Segmentation as selective search for object recognition
27. Regionlets for Generic Object Detection
28. BING - Binarized normed gradients for objectness estimation at 300fps
29. [Beyond Bags of Features - Spatial Pyramid Matching for Recognizing Natural Scene Categories](2006-beyond-bags-of-features-spatial-pyramid-matching-for-recognizing-natural-scene-categories)
30. [The Pascal Visual Object Classes (VOC) Challenge](2009-the-pascal-visual-object-classes-voc-challenge)
31. The Importance of Encoding Versus Training with Sparse Coding and Vector Quantization
32. [ImageNet - A large-scale hierarchical image database](2009-imagenet-a-large-scale-hierarchical-image-database)
33. [Aggregating Local Image Descriptors into Compact Codes](2012-aggregating-local-image-descriptors-into-compact-codes)
34. Learning Generative Visual Models from Few Training Examples - An Incremental Bayesian Approach Tested on 101 Object Categories
35. [Histograms of oriented gradients for human detection](2005-histograms-of-oriented-gradients-for-human-detection)
36. [Edge Boxes - Locating Object Proposals from Edges](2014-edge-boxes-locating-object-proposals-from-edges)
37. [Video Google - a text retrieval approach to object matching in videos](2003-video-google-a-text-retrieval-approach-to-object-matching-in-videos)
38. [Object Detection with Discriminatively Trained Part Based Models](2009-object-detection-with-discriminatively-trained-part-based-models)
39. Backpropagation Applied to Handwritten Zip Code Recognition
40. Kernel Codebooks for Scene Categorization
41. The PASCAL visual object classes challenge 2006 (VOC2006) results
42. [Distinctive Image Features from Scale-Invariant Keypoints](2004-distinctive-image-features-from-scale-invariant-keypoints)
43. [LIBSVM - A library for support vector machines](2011-libsvm-a-library-for-support-vector-machines)
44. Visualizing and Understanding Convolutional Neural Networks
45. [The PASCAL Visual Object Classes Challenge](2006-the-pascal-visual-object-classes-challenge)
