---
title: Accelerating Very Deep Convolutional Networks for Classification and Detection
authors:
- X. Zhang
- Jianhua Zou
- Kaiming He
- Jian Sun
fieldsOfStudy:
- Computer Science
meta_key: 2016-accelerating-very-deep-convolutional-networks-for-classification-and-detection
numCitedBy: 542
reading_status: TBD
ref_count: 85
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Accelerating-Very-Deep-Convolutional-Networks-for-Zhang-Zou/b89d7f7439cab841934a1ede06bf6b1f593c754f?sort=total-citations
venue: IEEE Transactions on Pattern Analysis and Machine Intelligence
year: 2016
---

[semanticscholar url](https://www.semanticscholar.org/paper/Accelerating-Very-Deep-Convolutional-Networks-for-Zhang-Zou/b89d7f7439cab841934a1ede06bf6b1f593c754f?sort=total-citations)

# Accelerating Very Deep Convolutional Networks for Classification and Detection

## Abstract

This paper aims to accelerate the test-time computation of convolutional neural networks (CNNs), especially very deep CNNs <xref ref-type="bibr" rid="ref1">[1]</xref> that have substantially impacted the computer vision community. Unlike previous methods that are designed for approximating linear filters or linear responses, our method takes the nonlinear units into account. We develop an effective solution to the resulting nonlinear optimization problem without the need of stochastic gradient descent (SGD). More importantly, while previous methods mainly focus on optimizing one or two layers, our nonlinear method enables an asymmetric reconstruction that reduces the rapidly accumulated error when multiple (e.g., <inline-formula> <tex-math notation="LaTeX">$\ge$</tex-math><alternatives><inline-graphic xlink:type="simple" xlink:href="he-ieq1-2502579.gif"/> </alternatives></inline-formula>10) layers are approximated. For the widely used very deep VGG-16 model <xref ref-type="bibr" rid="ref1">[1]</xref> , our method achieves a whole-model speedup of 4<inline-formula><tex-math notation="LaTeX">$\times$</tex-math> <alternatives><inline-graphic xlink:type="simple" xlink:href="he-ieq2-2502579.gif"/></alternatives></inline-formula> with merely a 0.3 percent increase of top-5 error in ImageNet classification. Our 4<inline-formula><tex-math notation="LaTeX">$\times$ </tex-math><alternatives><inline-graphic xlink:type="simple" xlink:href="he-ieq3-2502579.gif"/></alternatives></inline-formula> accelerated VGG-16 model also shows a graceful accuracy degradation for object detection when plugged into the Fast R-CNN detector <xref ref-type="bibr" rid="ref2">[2]</xref> .

## Paper References

1. [Spatial Pyramid Pooling in Deep Convolutional Networks for Visual Recognition](2015-spatial-pyramid-pooling-in-deep-convolutional-networks-for-visual-recognition.md)
2. Convolutional neural networks at constrained time cost
3. Efficient and accurate approximations of nonlinear convolutional networks
4. [Return of the Devil in the Details - Delving Deep into Convolutional Nets](2014-return-of-the-devil-in-the-details-delving-deep-into-convolutional-nets.md)
5. [Faster R-CNN - Towards Real-Time Object Detection with Region Proposal Networks](2015-faster-r-cnn-towards-real-time-object-detection-with-region-proposal-networks.md)
6. [Very Deep Convolutional Networks for Large-Scale Image Recognition](2015-very-deep-convolutional-networks-for-large-scale-image-recognition.md)
7. [ImageNet classification with deep convolutional neural networks](2012-imagenet-classification-with-deep-convolutional-neural-networks.md)
8. [Speeding up Convolutional Neural Networks with Low Rank Expansions](2014-speeding-up-convolutional-neural-networks-with-low-rank-expansions.md)
9. [Semantic Image Segmentation with Deep Convolutional Nets and Fully Connected CRFs](2015-semantic-image-segmentation-with-deep-convolutional-nets-and-fully-connected-crfs.md)
10. [Fully Convolutional Networks for Semantic Segmentation](2017-fully-convolutional-networks-for-semantic-segmentation.md)
11. [Fast R-CNN](2015-fast-r-cnn.md)
12. [Delving Deep into Rectifiers - Surpassing Human-Level Performance on ImageNet Classification](2015-delving-deep-into-rectifiers-surpassing-human-level-performance-on-imagenet-classification.md)
13. Memory Bounded Deep Convolutional Networks
14. Convolutional feature masking for joint object and stuff segmentation
15. Deep convolutional filter banks for texture recognition and segmentation
16. [Rich Feature Hierarchies for Accurate Object Detection and Semantic Segmentation](2014-rich-feature-hierarchies-for-accurate-object-detection-and-semantic-segmentation.md)
17. [Going deeper with convolutions](2015-going-deeper-with-convolutions.md)
18. [Exploiting Linear Structure Within Convolutional Networks for Efficient Evaluation](2014-exploiting-linear-structure-within-convolutional-networks-for-efficient-evaluation.md)
19. Fast Training of Convolutional Networks through FFTs
20. BoxSup - Exploiting Bounding Boxes to Supervise Convolutional Networks for Semantic Segmentation
21. Speeding-up Convolutional Neural Networks Using Fine-tuned CP-Decomposition
22. Deep filter banks for texture recognition and segmentation
23. [Caffe - Convolutional Architecture for Fast Feature Embedding](2014-caffe-convolutional-architecture-for-fast-feature-embedding.md)
24. [Object Detection Networks on Convolutional Feature Maps](2017-object-detection-networks-on-convolutional-feature-maps.md)
25. [OverFeat - Integrated Recognition, Localization and Detection using Convolutional Networks](2014-overfeat-integrated-recognition-localization-and-detection-using-convolutional-networks.md)
26. [FitNets - Hints for Thin Deep Nets](2015-fitnets-hints-for-thin-deep-nets.md)
27. [Unsupervised Learning of Video Representations using LSTMs](2015-unsupervised-learning-of-video-representations-using-lstms.md)
28. [Hypercolumns for object segmentation and fine-grained localization](2015-hypercolumns-for-object-segmentation-and-fine-grained-localization.md)
29. Fast Convolutional Nets With fbfft - A GPU Performance Evaluation
30. Improving the speed of neural networks on CPUs
31. PerforatedCNNs - Acceleration through Elimination of Redundant Convolutions
32. Learning a Recurrent Visual Representation for Image Caption Generation
33. [Deep Visual-Semantic Alignments for Generating Image Descriptions](2017-deep-visual-semantic-alignments-for-generating-image-descriptions.md)
34. [ImageNet Large Scale Visual Recognition Challenge](2015-imagenet-large-scale-visual-recognition-challenge.md)
35. [From captions to visual concepts and back](2015-from-captions-to-visual-concepts-and-back.md)
36. Sparse projections for high-dimensional binary codes
37. Learning Separable Filters
38. Image Question Answering - A Visual Semantic Embedding Model and a New Dataset
39. A New Alternating Minimization Algorithm for Total Variation Image Reconstruction
40. Iterative quantization - A procrustean approach to learning binary codes
41. Optimized Product Quantization
42. Backpropagation Applied to Handwritten Zip Code Recognition
43. [Rectified Linear Units Improve Restricted Boltzmann Machines](2010-rectified-linear-units-improve-restricted-boltzmann-machines.md)
44. Procrustes Problems
45. The PASCAL visual object classes challenge 2006 (VOC2006) results
46. Generalized Constrained Redundancy Analysis
47. Regularized linear and kernel redundancy analysis
48. In Modern Heuristic Techniques for Combinatorial Problems
49. A and V
50. I and J
51. Visualizing and Understanding Convolutional Neural Networks
52. Matrix Computations
