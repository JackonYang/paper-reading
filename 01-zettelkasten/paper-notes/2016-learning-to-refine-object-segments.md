---
title: Learning to Refine Object Segments
authors:
- Pedro H. O. Pinheiro
- Tsung-Yi Lin
- Ronan Collobert
- "Piotr Doll\xE1r"
fieldsOfStudy:
- Computer Science
meta_key: 2016-learning-to-refine-object-segments
numCitedBy: 734
reading_status: TBD
ref_count: 51
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Learning-to-Refine-Object-Segments-Pinheiro-Lin/361b19d2c00d086fa8ef860374f5e1d862fd2f30?sort=total-citations
venue: ECCV
year: 2016
---

# Learning to Refine Object Segments

## Abstract

Object segmentation requires both object-level information and low-level pixel data. This presents a challenge for feedforward networks: lower layers in convolutional nets capture rich spatial information, while upper layers encode object-level knowledge but are invariant to factors such as pose and appearance. In this work we propose to augment feedforward nets for object segmentation with a novel top-down refinement approach. The resulting bottom-up/top-down architecture is capable of efficiently generating high-fidelity object masks. Similarly to skip connections, our approach leverages features at all layers of the net. Unlike skip connections, our approach does not attempt to output independent predictions at each layer. Instead, we first output a coarse ‘mask encoding’ in a feedforward pass, then refine this mask encoding in a top-down pass utilizing features at successively lower layers. The approach is simple, fast, and effective. Building on the recent DeepMask network for generating object proposals, we show accuracy improvements of 10–20% in average recall for various setups. Additionally, by optimizing the overall network architecture, our approach, which we call SharpMask, is 50 % faster than the original DeepMask network (under .8 s per image).

## Paper References

1. [Rich Feature Hierarchies for Accurate Object Detection and Semantic Segmentation](2014-rich-feature-hierarchies-for-accurate-object-detection-and-semantic-segmentation)
2. Recurrent Convolutional Neural Networks for Scene Labeling
3. [Fully Convolutional Networks for Semantic Segmentation](2017-fully-convolutional-networks-for-semantic-segmentation)
4. Learning to Segment Object Candidates
5. [Simultaneous Detection and Segmentation](2014-simultaneous-detection-and-segmentation)
6. [Semantic Image Segmentation with Deep Convolutional Nets and Fully Connected CRFs](2015-semantic-image-segmentation-with-deep-convolutional-nets-and-fully-connected-crfs)
7. [Hypercolumns for object segmentation and fine-grained localization](2015-hypercolumns-for-object-segmentation-and-fine-grained-localization)
8. [Faster R-CNN - Towards Real-Time Object Detection with Region Proposal Networks](2015-faster-r-cnn-towards-real-time-object-detection-with-region-proposal-networks)
9. Scalable, High-Quality Object Detection
10. [Instance-Aware Semantic Segmentation via Multi-task Network Cascades](2016-instance-aware-semantic-segmentation-via-multi-task-network-cascades)
11. [Learning Deconvolution Network for Semantic Segmentation](2015-learning-deconvolution-network-for-semantic-segmentation)
12. A MultiPath Network for Object Detection
13. Fully Connected Deep Structured Networks
14. [Predicting Depth, Surface Normals and Semantic Labels with a Common Multi-scale Convolutional Architecture](2015-predicting-depth-surface-normals-and-semantic-labels-with-a-common-multi-scale-convolutional-architecture)
15. [Conditional Random Fields as Recurrent Neural Networks](2015-conditional-random-fields-as-recurrent-neural-networks)
16. [Very Deep Convolutional Networks for Large-Scale Image Recognition](2014-vggnet.md)
17. Deconvolutional networks
18. [Measuring the Objectness of Image Windows](2012-measuring-the-objectness-of-image-windows)
19. [OverFeat - Integrated Recognition, Localization and Detection using Convolutional Networks](2014-overfeat-integrated-recognition-localization-and-detection-using-convolutional-networks)
20. [Deep Residual Learning for Image Recognition](2015-resnet.md)
21. [Inside-Outside Net - Detecting Objects in Context with Skip Pooling and Recurrent Neural Networks](2016-inside-outside-net-detecting-objects-in-context-with-skip-pooling-and-recurrent-neural-networks)
22. [Spatial Pyramid Pooling in Deep Convolutional Networks for Visual Recognition](2015-spatial-pyramid-pooling-in-deep-convolutional-networks-for-visual-recognition)
23. RIGOR - Reusing Inference in Graph Cuts for Generating Object Regions
24. Multiscale Combinatorial Grouping for Image Segmentation and Object Proposal Generation
25. [Microsoft COCO - Common Objects in Context](2014-microsoft-coco-common-objects-in-context)
26. [Going deeper with convolutions](2015-going-deeper-with-convolutions)
27. [What Makes for Effective Detection Proposals?](2016-what-makes-for-effective-detection-proposals)
28. FlowNet - Learning Optical Flow with Convolutional Networks
29. [ImageNet classification with deep convolutional neural networks](2012-alexnet.md)
30. [Selective Search for Object Recognition](2013-selective-search-for-object-recognition)
31. [Object Detection with Discriminatively Trained Part Based Models](2009-object-detection-with-discriminatively-trained-part-based-models)
32. [The Pascal Visual Object Classes (VOC) Challenge](2009-the-pascal-visual-object-classes-voc-challenge)
33. [Fast R-CNN](2015-fast-r-cnn)
34. [Edge Boxes - Locating Object Proposals from Edges](2014-edge-boxes-locating-object-proposals-from-edges)
35. Pedestrian Detection with Unsupervised Multi-stage Feature Learning
36. Geodesic Object Proposals
37. Semantic texton forests for image categorization and segmentation
38. [ImageNet - A large-scale hierarchical image database](2009-imagenet-a-large-scale-hierarchical-image-database)
39. [Gradient-based learning applied to document recognition](1998-lenet5.md)
40. Holistically-Nested Edge Detection
41. [Learning Hierarchical Features for Scene Labeling](2013-learning-hierarchical-features-for-scene-labeling)
