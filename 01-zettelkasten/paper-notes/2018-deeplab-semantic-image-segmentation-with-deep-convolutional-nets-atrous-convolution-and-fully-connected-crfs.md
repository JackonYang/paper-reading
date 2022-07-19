---
title: DeepLab - Semantic Image Segmentation with Deep Convolutional Nets, Atrous Convolution, and Fully Connected CRFs
authors:
- Liang-Chieh Chen
- G. Papandreou
- Iasonas Kokkinos
- K. Murphy
- A. Yuille
fieldsOfStudy:
- Computer Science
meta_key: 2018-deeplab-semantic-image-segmentation-with-deep-convolutional-nets-atrous-convolution-and-fully-connected-crfs
numCitedBy: 9510
reading_status: TBD
ref_count: 112
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/DeepLab:-Semantic-Image-Segmentation-with-Deep-and-Chen-Papandreou/cab372bc3824780cce20d9dd1c22d4df39ed081a?sort=total-citations
venue: IEEE Transactions on Pattern Analysis and Machine Intelligence
year: 2018
---

# DeepLab - Semantic Image Segmentation with Deep Convolutional Nets, Atrous Convolution, and Fully Connected CRFs

## Abstract

In this work we address the task of semantic image segmentation with Deep Learning and make three main contributions that are experimentally shown to have substantial practical merit. First, we highlight convolution with upsampled filters, or ‘atrous convolution’, as a powerful tool in dense prediction tasks. Atrous convolution allows us to explicitly control the resolution at which feature responses are computed within Deep Convolutional Neural Networks. It also allows us to effectively enlarge the field of view of filters to incorporate larger context without increasing the number of parameters or the amount of computation. Second, we propose atrous spatial pyramid pooling (ASPP) to robustly segment objects at multiple scales. ASPP probes an incoming convolutional feature layer with filters at multiple sampling rates and effective fields-of-views, thus capturing objects as well as image context at multiple scales. Third, we improve the localization of object boundaries by combining methods from DCNNs and probabilistic graphical models. The commonly deployed combination of max-pooling and downsampling in DCNNs achieves invariance but has a toll on localization accuracy. We overcome this by combining the responses at the final DCNN layer with a fully connected Conditional Random Field (CRF), which is shown both qualitatively and quantitatively to improve localization performance. Our proposed “DeepLab” system sets the new state-of-art at the PASCAL VOC-2012 semantic image segmentation task, reaching 79.7 percent mIOU in the test set, and advances the results on three other datasets: PASCAL-Context, PASCAL-Person-Part, and Cityscapes. All of our code is made publicly available online.

## Paper References

1. [Semantic Image Segmentation with Deep Convolutional Nets and Fully Connected CRFs](2015-semantic-image-segmentation-with-deep-convolutional-nets-and-fully-connected-crfs)
2. High-performance Semantic Segmentation Using Very Deep Fully Convolutional Networks
3. [Fully Convolutional Networks for Semantic Segmentation](2017-fully-convolutional-networks-for-semantic-segmentation)
4. Attention to Scale - Scale-Aware Semantic Image Segmentation
5. Fast Semantic Image Segmentation with High Order Context and Guided Filtering
6. [Efficient Piecewise Training of Deep Structured Models for Semantic Segmentation](2016-efficient-piecewise-training-of-deep-structured-models-for-semantic-segmentation)
7. Higher Order Conditional Random Fields in Deep Neural Networks
8. Convolutional feature masking for joint object and stuff segmentation
9. Semantic Image Segmentation via Deep Parsing Network
10. Semantic Image Segmentation with Task-Specific Edge Detection Using CNNs and a Discriminatively Trained Domain Transform
11. [Learning Deconvolution Network for Semantic Segmentation](2015-learning-deconvolution-network-for-semantic-segmentation)
12. Higher Order Potentials in End-to-End Trainable Conditional Random Fields
13. BoxSup - Exploiting Bounding Boxes to Supervise Convolutional Networks for Semantic Segmentation
14. Joint Object and Part Segmentation Using Deep Learned Potentials
15. Weakly Supervised Semantic Segmentation with Convolutional Networks
16. [Conditional Random Fields as Recurrent Neural Networks](2015-conditional-random-fields-as-recurrent-neural-networks)
17. Modeling local and global deformations in Deep Learning - Epitomic convolution, Multiple Instance Learning, and sliding window detection
18. Combining the Best of Convolutional Layers and Recurrent Layers - A Hybrid Network for Semantic Segmentation
19. [Rich Feature Hierarchies for Accurate Object Detection and Semantic Segmentation](2014-rich-feature-hierarchies-for-accurate-object-detection-and-semantic-segmentation)
20. Towards unified depth and semantic prediction from a single image
21. Pushing the Boundaries of Boundary Detection using Deep Learning
22. From image-level to pixel-level labeling with Convolutional Networks
23. SegNet - A Deep Convolutional Encoder-Decoder Architecture for Image Segmentation
24. Fast, Exact and Multi-scale Inference for Semantic Image Segmentation with Deep Gaussian CRFs
25. Laplacian Pyramid Reconstruction and Refinement for Semantic Segmentation
26. Weakly- and Semi-Supervised Learning of a DCNN for Semantic Image Segmentation
27. [Very Deep Convolutional Networks for Large-Scale Image Recognition](2014-vggnet.md)
28. [R-FCN - Object Detection via Region-based Fully Convolutional Networks](2016-r-fcn-object-detection-via-region-based-fully-convolutional-networks)
29. Laplacian Reconstruction and Refinement for Semantic Segmentation
30. [Hypercolumns for object segmentation and fine-grained localization](2015-hypercolumns-for-object-segmentation-and-fine-grained-localization)
31. Constrained Convolutional Neural Networks for Weakly Supervised Segmentation
32. [Instance-Sensitive Fully Convolutional Networks](2016-instance-sensitive-fully-convolutional-networks)
33. Fully Connected Deep Structured Networks
34. Pixel-Level Encoding and Depth Layering for Instance-Level Semantic Labeling
35. Bridging Category-level and Instance-level Semantic Image Segmentation
36. [Faster R-CNN - Towards Real-Time Object Detection with Region Proposal Networks](2015-faster-r-cnn-towards-real-time-object-detection-with-region-proposal-networks)
37. [SSD - Single Shot MultiBox Detector](2016-ssd-net.md)
38. [Simultaneous Detection and Segmentation](2014-simultaneous-detection-and-segmentation)
39. Scalable Object Detection Using Deep Neural Networks
40. Material recognition in the wild with the Materials in Context Database
41. [Spatial Pyramid Pooling in Deep Convolutional Networks for Visual Recognition](2015-spatial-pyramid-pooling-in-deep-convolutional-networks-for-visual-recognition)
42. Harmony potentials for joint classification and segmentation
43. [U-Net - Convolutional Networks for Biomedical Image Segmentation](2015-u-net-convolutional-networks-for-biomedical-image-segmentation)
44. [Predicting Depth, Surface Normals and Semantic Labels with a Common Multi-scale Convolutional Architecture](2015-predicting-depth-surface-normals-and-semantic-labels-with-a-common-multi-scale-convolutional-architecture)
45. [Deep Residual Learning for Image Recognition](2015-resnet.md)
46. Semantic Object Parsing with Local-Global Long Short-Term Memory
47. Proposal-Free Network for Instance-Level Object Segmentation
48. Zoom Better to See Clearer - Human Part Segmentation with Auto Zoom Net
49. Zoom Better to See Clearer - Human and Object Parsing with Hierarchical Auto-Zoom Net
50. ParseNet - Looking Wider to See Better
51. Decoupled Deep Neural Network for Semi-supervised Semantic Segmentation
52. Feedforward semantic segmentation with zoom-out features
53. [ImageNet classification with deep convolutional neural networks](2012-alexnet.md)
54. Combining the Best of Graphical Models and ConvNets for Semantic Segmentation
55. Optical Flow with Semantic Segmentation and Localized Layers
56. [OverFeat - Integrated Recognition, Localization and Detection using Convolutional Networks](2014-overfeat-integrated-recognition-localization-and-detection-using-convolutional-networks)
57. Gaussian Conditional Random Field Network for Semantic Segmentation
58. [Going deeper with convolutions](2015-going-deeper-with-convolutions)
59. Auto-Context and Its Application to High-Level Vision Tasks and 3D Brain Image Segmentation
60. TextonBoost for Image Understanding - Multi-Class Object Recognition and Segmentation by Jointly Modeling Texture, Layout, and Context
61. [The Cityscapes Dataset for Semantic Urban Scene Understanding](2016-the-cityscapes-dataset-for-semantic-urban-scene-understanding)
62. [Efficient Inference in Fully Connected CRFs with Gaussian Edge Potentials](2011-efficient-inference-in-fully-connected-crfs-with-gaussian-edge-potentials)
63. [Visualizing and Understanding Convolutional Networks](2014-visualizing-and-understanding-convolutional-networks)
64. [Microsoft COCO - Common Objects in Context](2014-microsoft-coco-common-objects-in-context)
65. The Role of Context for Object Detection and Semantic Segmentation in the Wild
66. [Caffe - Convolutional Architecture for Fast Feature Embedding](2014-caffe-convolutional-architecture-for-fast-feature-embedding)
67. Associative hierarchical CRFs for object class image segmentation
68. CPMC - Automatic Object Segmentation Using Constrained Parametric Min-Cuts
69. Semantic part segmentation using compositional model combining shape and appearance
70. Semantic Object Parsing with Graph LSTM
71. Are spatial and global constraints really necessary for segmentation?
72. Robust Higher Order Potentials for Enforcing Label Consistency
73. Pylon Model for Semantic Segmentation
74. Semantic Segmentation with Second-Order Pooling
75. Semantic texton forests for image categorization and segmentation
76. Multiscale conditional random fields for image labeling
77. Class segmentation and object localization with superpixel neighborhoods
78. A common framework for image segmentation
79. [Identity Mappings in Deep Residual Networks](2016-identity-mappings-in-deep-residual-networks)
80. [The Pascal Visual Object Classes Challenge - A Retrospective](2014-the-pascal-visual-object-classes-challenge-a-retrospective)
81. [Fast R-CNN](2015-fast-r-cnn)
82. Learning Deep Structured Models
83. Learning a Dictionary of Shape Epitomes with Applications to Image Labeling
84. Fast Approximate Energy Minimization with Label Costs
85. [Selective Search for Object Recognition](2013-selective-search-for-object-recognition)
86. [Semantic contours from inverse detectors](2011-semantic-contours-from-inverse-detectors)
87. ABC-CNN - An Attention Based Convolutional Neural Network for Visual Question Answering
88. Computational analysis and learning for a biologically motivated model of boundary detection
89. Fast image scanning with deep max-pooling convolutional neural networks
90. [Multiscale Combinatorial Grouping](2014-multiscale-combinatorial-grouping)
91. [Beyond Bags of Features - Spatial Pyramid Matching for Recognizing Natural Scene Categories](2006-beyond-bags-of-features-spatial-pyramid-matching-for-recognizing-natural-scene-categories)
92. Detect What You Can - Detecting and Representing Objects Using Holistic Models and Body Parts
93. [GrabCut - interactive foreground extraction using iterated graph cuts](2004-grabcut-interactive-foreground-extraction-using-iterated-graph-cuts)
94. [TensorFlow - Large-Scale Machine Learning on Heterogeneous Distributed Systems](2016-tensorflow-large-scale-machine-learning-on-heterogeneous-distributed-systems)
95. [Gradient-based learning applied to document recognition](1998-lenet5.md)
96. Parallel and Deterministic Algorithms from MRFs - Surface Reconstruction
97. The discrete wavelet transform - wedding the a trous and Mallat algorithms
98. Multirate digital filters, filter banks, polyphase networks, and applications - a tutorial
99. The redundant discrete wavelet transform and additive noise
100. A real-time algorithm for signal analysis with the help of the wavelet transform
101. [Learning Hierarchical Features for Scene Labeling](2013-learning-hierarchical-features-for-scene-labeling)
102. [Multi-Scale Context Aggregation by Dilated Convolutions](2016-multi-scale-context-aggregation-by-dilated-convolutions)
103. High-for-Low and Low-for-High - Efficient Boundary Detection from Deep Object Features and Its Applications to High-Level Vision
104. Weakly supervised semantic segmentation with a multi-image model
105. Fast High‐Dimensional Filtering Using the Permutohedral Lattice
