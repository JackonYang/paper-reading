---
title: Faster R-CNN - Towards Real-Time Object Detection with Region Proposal Networks
authors:
- Shaoqing Ren
- Kaiming He
- Ross B. Girshick
- Jian Sun
fieldsOfStudy:
- Computer Science
meta_key: 2015-faster-r-cnn-towards-real-time-object-detection-with-region-proposal-networks
numCitedBy: 32899
reading_status: TBD
ref_count: 53
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Faster-R-CNN:-Towards-Real-Time-Object-Detection-Ren-He/424561d8585ff8ebce7d5d07de8dbf7aae5e7270?sort=total-citations
venue: IEEE Transactions on Pattern Analysis and Machine Intelligence
year: 2015
---

# Faster R-CNN - Towards Real-Time Object Detection with Region Proposal Networks

## Abstract

State-of-the-art object detection networks depend on region proposal algorithms to hypothesize object locations. Advances like SPPnet and Fast R-CNN have reduced the running time of these detection networks, exposing region proposal computation as a bottleneck. In this work, we introduce a Region Proposal Network (RPN) that shares full-image convolutional features with the detection network, thus enabling nearly cost-free region proposals. An RPN is a fully convolutional network that simultaneously predicts object bounds and objectness scores at each position. The RPN is trained end-to-end to generate high-quality region proposals, which are used by Fast R-CNN for detection. We further merge RPN and Fast R-CNN into a single network by sharing their convolutional features---using the recently popular terminology of neural networks with 'attention' mechanisms, the RPN component tells the unified network where to look. For the very deep VGG-16 model, our detection system has a frame rate of 5fps (including all steps) on a GPU, while achieving state-of-the-art object detection accuracy on PASCAL VOC 2007, 2012, and MS COCO datasets with only 300 proposals per image. In ILSVRC and COCO 2015 competitions, Faster R-CNN and RPN are the foundations of the 1st-place winning entries in several tracks. Code has been made publicly available

## Paper References

1. [Fast R-CNN](2015-fast-r-cnn)
2. R-CNN minus R
3. Scalable Object Detection Using Deep Neural Networks
4. [Rich Feature Hierarchies for Accurate Object Detection and Semantic Segmentation](2014-rich-feature-hierarchies-for-accurate-object-detection-and-semantic-segmentation)
5. [Object Detection Networks on Convolutional Feature Maps](2017-object-detection-networks-on-convolutional-feature-maps)
6. Convolutional feature masking for joint object and stuff segmentation
7. Learning to Segment Object Candidates
8. DeePM - A Deep Part-Based Model for Object Detection and Semantic Part Localization
9. [Instance-Aware Semantic Segmentation via Multi-task Network Cascades](2016-instance-aware-semantic-segmentation-via-multi-task-network-cascades)
10. Scalable, High-Quality Object Detection
11. [Fully Convolutional Networks for Semantic Segmentation](2017-fully-convolutional-networks-for-semantic-segmentation)
12. [What Makes for Effective Detection Proposals?](2016-what-makes-for-effective-detection-proposals)
13. [DenseCap - Fully Convolutional Localization Networks for Dense Captioning](2016-densecap-fully-convolutional-localization-networks-for-dense-captioning)
14. [Very Deep Convolutional Networks for Large-Scale Image Recognition](2014-vggnet.md)
15. [OverFeat - Integrated Recognition, Localization and Detection using Convolutional Networks](2014-overfeat-integrated-recognition-localization-and-detection-using-convolutional-networks)
16. [Spatial Pyramid Pooling in Deep Convolutional Networks for Visual Recognition](2015-spatial-pyramid-pooling-in-deep-convolutional-networks-for-visual-recognition)
17. [Deep Neural Networks for Object Detection](2013-deep-neural-networks-for-object-detection)
18. [Going deeper with convolutions](2015-going-deeper-with-convolutions)
19. [ImageNet classification with deep convolutional neural networks](2012-alexnet.md)
20. Deep Sliding Shapes for Amodal 3D Object Detection in RGB-D Images
21. [Caffe - Convolutional Architecture for Fast Feature Embedding](2014-caffe-convolutional-architecture-for-fast-feature-embedding)
22. [Deep Residual Learning for Image Recognition](2015-resnet.md)
23. [Measuring the Objectness of Image Windows](2012-measuring-the-objectness-of-image-windows)
24. [Microsoft COCO - Common Objects in Context](2014-microsoft-coco-common-objects-in-context)
25. [Edge Boxes - Locating Object Proposals from Edges](2014-edge-boxes-locating-object-proposals-from-edges)
26. Object-Proposal Evaluation Protocol is ‘Gameable'
27. [ImageNet Large Scale Visual Recognition Challenge](2015-imagenet-large-scale-visual-recognition-challenge)
28. How good are detection proposals, really?
29. [The Pascal Visual Object Classes (VOC) Challenge](2009-the-pascal-visual-object-classes-voc-challenge)
30. CPMC - Automatic Object Segmentation Using Constrained Parametric Min-Cuts
31. [Selective Search for Object Recognition](2013-selective-search-for-object-recognition)
32. [Object Detection with Discriminatively Trained Part Based Models](2009-object-detection-with-discriminatively-trained-part-based-models)
33. [Attention-Based Models for Speech Recognition](2015-attention-based-models-for-speech-recognition)
34. and Maja (2013) 300 Faces in-the-Wild Challenge - the first facial landmark localization challenge. In - 2013 IEEE International Conference on Computer Vision (ICCV),
35. Diagnosing Error in Object Detectors
36. [Multiscale Combinatorial Grouping](2014-multiscale-combinatorial-grouping)
37. Pascal Visual Object Classes Challenge Results
38. [Rectified Linear Units Improve Restricted Boltzmann Machines](2010-rectified-linear-units-improve-restricted-boltzmann-machines)
39. The PASCAL visual object classes challenge 2006 (VOC2006) results
40. Backpropagation Applied to Handwritten Zip Code Recognition
41. Human Curation and Convnets - Powering Item-to-Item Recommendations on Pinterest
42. K
43. [The PASCAL Visual Object Classes Challenge](2006-the-pascal-visual-object-classes-challenge)
44. Visualizing and Understanding Convolutional Neural Networks
