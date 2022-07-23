---
title: Dynamic Graph CNN for Learning on Point Clouds
authors:
- Yue Wang
- Yongbin Sun
- Ziwei Liu
- S. Sarma
- M. Bronstein
- J. Solomon
fieldsOfStudy:
- Computer Science
- Environmental Science
meta_key: 2019-dynamic-graph-cnn-for-learning-on-point-clouds
numCitedBy: 2219
reading_status: TBD
ref_count: 137
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Dynamic-Graph-CNN-for-Learning-on-Point-Clouds-Wang-Sun/e1799aaf23c12af6932dc0ef3dfb1638f01413d1?sort=total-citations
venue: ACM Trans. Graph.
year: 2019
---

[semanticscholar url](https://www.semanticscholar.org/paper/Dynamic-Graph-CNN-for-Learning-on-Point-Clouds-Wang-Sun/e1799aaf23c12af6932dc0ef3dfb1638f01413d1?sort=total-citations)

# Dynamic Graph CNN for Learning on Point Clouds

## Abstract

Point clouds provide a flexible geometric representation suitable for countless applications in computer graphics; they also comprise the raw output of most 3D data acquisition devices. While hand-designed features on point clouds have long been proposed in graphics and vision, however, the recent overwhelming success of convolutional neural networks (CNNs) for image analysis suggests the value of adapting insight from CNN to the point cloud world. Point clouds inherently lack topological information, so designing a model to recover topology can enrich the representation power of point clouds. To this end, we propose a new neural network module dubbed EdgeConv suitable for CNN-based high-level tasks on point clouds, including classification and segmentation. EdgeConv acts on graphs dynamically computed in each layer of the network. It is differentiable and can be plugged into existing architectures. Compared to existing modules operating in extrinsic space or treating each point independently, EdgeConv has several appealing properties: It incorporates local neighborhood information; it can be stacked applied to learn global shape properties; and in multi-layer systems affinity in feature space captures semantic characteristics over potentially long distances in the original embedding. We show the performance of our model on standard benchmarks, including ModelNet40, ShapeNetPart, and S3DIS.

## Paper References

1. Neighbors Do Help - Deeply Exploiting Local Structures of Point Clouds
2. PointNet - Deep Learning on Point Sets for 3D Classification and Segmentation
3. FoldingNet - Point Cloud Auto-Encoder via Deep Grid Deformation
4. PCPNet Learning Local Shape Properties from Raw Point Clouds
5. GWCNN - A Metric Alignment Layer for Deep Shape Analysis
6. PointCNN - Convolution On X-Transformed Points
7. SPLATNet - Sparse Lattice Networks for Point Cloud Processing
8. Escape from Cells - Deep Kd-Networks for the Recognition of 3D Point Cloud Models
9. Point Cloud GAN
10. Volumetric and Multi-view CNNs for Object Classification on 3D Data
11. SyncSpecCNN - Synchronized Spectral CNN for 3D Shape Segmentation
12. A Point Set Generation Network for 3D Object Reconstruction from a Single Image
13. Exploring Spatial Context for 3D Semantic Segmentation of Point Clouds
14. 3D ShapeNets - A deep representation for volumetric shapes
15. Convolutional neural networks on surfaces via seamless toric covers
16. Geometric Deep Learning on Graphs and Manifolds Using Mixture Model CNNs
17. SplineCNN - Fast Geometric Deep Learning with Continuous B-Spline Kernels
18. Frustum PointNets for 3D Object Detection from RGB-D Data
19. Fast Point Feature Histograms (FPFH) for 3D registration
20. Deep Learning 3D Shape Surfaces Using Geometry Images
21. Dynamic Edge-Conditioned Filters in Convolutional Neural Networks on Graphs
22. Aligning point cloud views using persistent feature histograms
23. Surface Networks
24. Deformable Shape Completion with Graph Convolutional Autoencoders
25. Learning shape correspondence with anisotropic convolutional neural networks
26. VoxNet - A 3D Convolutional Neural Network for real-time object recognition
27. Multi-view Convolutional Neural Networks for 3D Shape Recognition
28. Shape-based recognition of 3D point clouds in urban environments
29. Persistent Point Feature Histograms for 3D Point Clouds
30. Deep Functional Maps - Structured Prediction for Dense Shape Correspondence
31. Dense Human Body Correspondences Using Convolutional Networks
32. Recognizing Objects in 3D Point Clouds with Multi-Scale Local Features
33. Learning class‐specific descriptors for deformable shapes using localized spectral convolutional networks
34. A scalable active framework for region annotation in 3D shape collections
35. [Convolutional Neural Networks on Graphs with Fast Localized Spectral Filtering](2016-convolutional-neural-networks-on-graphs-with-fast-localized-spectral-filtering)
36. Deep Parametric Continuous Convolutional Neural Networks
37. Octree Generating Networks - Efficient Convolutional Architectures for High-resolution 3D Outputs
38. [Spectral Networks and Locally Connected Networks on Graphs](2014-spectral-networks-and-locally-connected-networks-on-graphs)
39. Geodesic Convolutional Neural Networks on Riemannian Manifolds
40. A Survey on Shape Correspondence
41. Generating 3D faces using Convolutional Mesh Autoencoders
42. Deep Convolutional Networks on Graph-Structured Data
43. 3D-Div - A novel local surface descriptor for feature matching and pairwise range image registration
44. Geometric Deep Learning - Going beyond Euclidean data
45. [Graph Attention Networks](2018-graph-attention-networks)
46. Geometric Matrix Completion with Recurrent Multi-Graph Neural Networks
47. Functional maps
48. [The Graph Neural Network Model](2009-the-graph-neural-network-model)
49. Self-supervised Learning of Dense Shape Correspondence
50. Deep Continuous Fusion for Multi-sensor 3D Object Detection
51. 3D Semantic Parsing of Large-Scale Indoor Spaces
52. Recent Trends, Applications, and Perspectives in 3D Shape Similarity Assessment
53. The emerging field of signal processing on graphs - Extending high-dimensional data analysis to networks and other irregular domains
54. Towards 3D Point cloud based object maps for household environments
55. Non-local Neural Networks
56. [Semi-Supervised Classification with Graph Convolutional Networks](2017-semi-supervised-classification-with-graph-convolutional-networks)
57. [Spatial Transformer Networks](2015-spatial-transformer-networks)
58. Shape Context - A New Descriptor for Shape Matching and Object Recognition
59. [ImageNet classification with deep convolutional neural networks](2012-alexnet.md)
60. Scale-invariant heat kernel signatures for non-rigid shape recognition
61. A combined texture-shape descriptor for enhanced 3D feature matching
62. [Gated Graph Sequence Neural Networks](2016-gated-graph-sequence-neural-networks)
63. Generative and Discriminative Voxel Modeling with Convolutional Neural Networks
64. Target-driven visual navigation in indoor scenes using deep reinforcement learning
65. Shape Classification Using the Inner-Distance
66. Generative Adversarial Nets
67. Shape Matching and Object Recognition
68. A Concise and Provably Informative Multi‐Scale Signature Based on Heat Diffusion
69. Feature Denoising for Improving Adversarial Robustness
70. [Neural Message Passing for Quantum Chemistry](2017-neural-message-passing-for-quantum-chemistry)
71. [Adam - A Method for Stochastic Optimization](2015-adam-a-method-for-stochastic-optimization)
72. 3D Object Recognition in Cluttered Scenes with Local Surface Features - A Survey
73. Using Spin Images for Efficient Object Recognition in Cluttered 3D Scenes
74. Laplace-Beltrami eigenfunctions for deformation invariant shape representation
75. 3d Object Reconstruction from a Single Image.
76. The wave kernel signature - A quantum mechanical approach to shape analysis
77. SGDR - Stochastic Gradient Descent with Warm Restarts
78. The Wave Kernel
79. Backpropagation Applied to Handwritten Zip Code Recognition
80. Et al
81. PointNet++ - Deep Hierarchical Feature Learning on Point Sets in a Metric Space
82. Point convolutional neural networks by extension operators
83. MOTIFNET - A MOTIF-BASED GRAPH CONVOLUTIONAL NETWORK FOR DIRECTED GRAPHS
84. CayleyNets - Graph Convolutional Neural Networks With Complex Rational Spectral Filters
85. ShapeNet - An Information-Rich 3D Model Repository
86. Integral Invariants for Shape Matching
87. Recent trends.
88. [Auto-Encoding Variational Bayes](2014-auto-encoding-variational-bayes)
