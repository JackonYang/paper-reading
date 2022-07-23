---
title: Learning Transferable Architectures for Scalable Image Recognition
authors:
- Barret Zoph
- Vijay Vasudevan
- Jonathon Shlens
- Quoc V. Le
fieldsOfStudy:
- Computer Science
meta_key: 2018-learning-transferable-architectures-for-scalable-image-recognition
numCitedBy: 3538
reading_status: TBD
ref_count: 81
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Learning-Transferable-Architectures-for-Scalable-Zoph-Vasudevan/d0611891b9e8a7c5731146097b6f201578f47b2f?sort=total-citations
venue: 2018 IEEE/CVF Conference on Computer Vision and Pattern Recognition
year: 2018
---

# Learning Transferable Architectures for Scalable Image Recognition

## Abstract

Developing neural network image classification models often requires significant architecture engineering. In this paper, we study a method to learn the model architectures directly on the dataset of interest. As this approach is expensive when the dataset is large, we propose to search for an architectural building block on a small dataset and then transfer the block to a larger dataset. The key contribution of this work is the design of a new search space (which we call the "NASNet search space") which enables transferability. In our experiments, we search for the best convolutional layer (or "cell") on the CIFAR-10 dataset and then apply this cell to the ImageNet dataset by stacking together more copies of this cell, each with their own parameters to design a convolutional architecture, which we name a "NASNet architecture". We also introduce a new regularization technique called ScheduledDropPath that significantly improves generalization in the NASNet models. On CIFAR-10 itself, a NASNet found by our method achieves 2.4% error rate, which is state-of-the-art. Although the cell is not searched for directly on ImageNet, a NASNet constructed from the best cell achieves, among the published works, state-of-the-art accuracy of 82.7% top-1 and 96.2% top-5 on ImageNet. Our model is 1.2% better in top-1 accuracy than the best human-invented architectures while having 9 billion fewer FLOPS - a reduction of 28% in computational demand from the previous state-of-the-art model. When evaluated at different levels of computational cost, accuracies of NASNets exceed those of the state-of-the-art human-designed models. For instance, a small version of NASNet also achieves 74% top-1 accuracy, which is 3.1% better than equivalently-sized, state-of-the-art models for mobile platforms. Finally, the image features learned from image classification are generically useful and can be transferred to other computer vision problems. On the task of object detection, the learned features by NASNet used with the Faster-RCNN framework surpass state-of-the-art by 4.0% achieving 43.1% mAP on the COCO dataset.

## Paper References

1. [Aggregated Residual Transformations for Deep Neural Networks](2017-aggregated-residual-transformations-for-deep-neural-networks.md)
2. [Very Deep Convolutional Networks for Large-Scale Image Recognition](2015-very-deep-convolutional-networks-for-large-scale-image-recognition.md)
3. [ImageNet classification with deep convolutional neural networks](2012-imagenet-classification-with-deep-convolutional-neural-networks.md)
4. [Going deeper with convolutions](2015-going-deeper-with-convolutions.md)
5. [Feature Pyramid Networks for Object Detection](2017-feature-pyramid-networks-for-object-detection.md)
6. [Deep Residual Learning for Image Recognition](2016-deep-residual-learning-for-image-recognition.md)
7. [DeCAF - A Deep Convolutional Activation Feature for Generic Visual Recognition](2014-decaf-a-deep-convolutional-activation-feature-for-generic-visual-recognition.md)
8. [Improved Regularization of Convolutional Neural Networks with Cutout](2017-improved-regularization-of-convolutional-neural-networks-with-cutout.md)
9. [Genetic CNN](2017-genetic-cnn.md)
10. [Convolutional Neural Fabrics](2016-convolutional-neural-fabrics.md)
11. [Large-Scale Evolution of Image Classifiers](2017-large-scale-evolution-of-image-classifiers.md)
12. [Squeeze-and-Excitation Networks](2020-squeeze-and-excitation-networks.md)
13. [Learning Multiple Layers of Features from Tiny Images](2009-learning-multiple-layers-of-features-from-tiny-images.md)
14. [Neural Architecture Search with Reinforcement Learning](2017-neural-architecture-search-with-reinforcement-learning.md)
15. [Densely Connected Convolutional Networks](2017-densely-connected-convolutional-networks.md)
16. [Faster R-CNN - Towards Real-Time Object Detection with Region Proposal Networks](2015-faster-r-cnn-towards-real-time-object-detection-with-region-proposal-networks.md)
17. [Xception - Deep Learning with Depthwise Separable Convolutions](2017-xception-deep-learning-with-depthwise-separable-convolutions.md)
18. [Rethinking the Inception Architecture for Computer Vision](2016-rethinking-the-inception-architecture-for-computer-vision.md)
19. [FaceNet - A unified embedding for face recognition and clustering](2015-facenet-a-unified-embedding-for-face-recognition-and-clustering.md)
20. Learned Optimizers that Scale and Generalize
21. [Speed/Accuracy Trade-Offs for Modern Convolutional Object Detectors](2017-speed-accuracy-trade-offs-for-modern-convolutional-object-detectors.md)
22. Dual Path Networks
23. [Focal Loss for Dense Object Detection](2020-focal-loss-for-dense-object-detection.md)
24. [Inception-v4, Inception-ResNet and the Impact of Residual Connections on Learning](2017-inception-v4-inception-resnet-and-the-impact-of-residual-connections-on-learning.md)
25. PolyNet - A Pursuit of Structural Diversity in Very Deep Networks
26. [Batch Normalization - Accelerating Deep Network Training by Reducing Internal Covariate Shift](2015-batch-normalization-accelerating-deep-network-training-by-reducing-internal-covariate-shift.md)
27. [Designing Neural Network Architectures using Reinforcement Learning](2017-designing-neural-network-architectures-using-reinforcement-learning.md)
28. [DeepArchitect - Automatically Designing and Training Deep Architectures](2017-deeparchitect-automatically-designing-and-training-deep-architectures.md)
29. [Algorithms for Hyper-Parameter Optimization](2011-algorithms-for-hyper-parameter-optimization.md)
30. [Evolving Deep Neural Networks](2019-evolving-deep-neural-networks.md)
31. [Deep Networks with Stochastic Depth](2016-deep-networks-with-stochastic-depth.md)
32. Optimization as a Model for Few-Shot Learning
33. Model-Agnostic Meta-Learning for Fast Adaptation of Deep Networks
34. [Identity Mappings in Deep Residual Networks](2016-identity-mappings-in-deep-residual-networks.md)
35. PlaNet - Photo Geolocation with Convolutional Neural Networks
36. [MobileNets - Efficient Convolutional Neural Networks for Mobile Vision Applications](2017-mobilenets-efficient-convolutional-neural-networks-for-mobile-vision-applications.md)
37. [GradientBased Learning Applied to Document Recognition](2001-gradientbased-learning-applied-to-document-recognition.md)
38. [Gradient-based learning applied to document recognition](1998-gradient-based-learning-applied-to-document-recognition.md)
39. [Layer Normalization](2016-layer-normalization.md)
40. A High-Throughput Screening Approach to Discovering Good Forms of Biologically Inspired Visual Representation
41. [Dropout - a simple way to prevent neural networks from overfitting](2014-dropout-a-simple-way-to-prevent-neural-networks-from-overfitting.md)
42. [ImageNet - A large-scale hierarchical image database](2009-imagenet-a-large-scale-hierarchical-image-database.md)
43. [ShuffleNet - An Extremely Efficient Convolutional Neural Network for Mobile Devices](2018-shufflenet-an-extremely-efficient-convolutional-neural-network-for-mobile-devices.md)
44. Beyond Skip Connections - Top-Down Modulation for Object Detection
45. Scalable Bayesian Optimization Using Deep Neural Networks
46. [Microsoft COCO - Common Objects in Context](2014-microsoft-coco-common-objects-in-context.md)
47. [An Empirical Exploration of Recurrent Network Architectures](2015-an-empirical-exploration-of-recurrent-network-architectures.md)
48. [Making a Science of Model Search - Hyperparameter Optimization in Hundreds of Dimensions for Vision Architectures](2013-making-a-science-of-model-search-hyperparameter-optimization-in-hundreds-of-dimensions-for-vision-architectures.md)
49. [Fast and Accurate Deep Network Learning by Exponential Linear Units (ELUs)](2016-fast-and-accurate-deep-network-learning-by-exponential-linear-units-elus.md)
50. Learning to Optimize Neural Nets
51. Instance Normalization - The Missing Ingredient for Fast Stylization
52. [WaveNet - A Generative Model for Raw Audio](2016-wavenet-a-generative-model-for-raw-audio.md)
53. [Practical Bayesian Optimization of Machine Learning Algorithms](2012-practical-bayesian-optimization-of-machine-learning-algorithms.md)
54. [Learning to learn by gradient descent by gradient descent](2016-learning-to-learn-by-gradient-descent-by-gradient-descent.md)
55. [FractalNet - Ultra-Deep Neural Networks without Residuals](2017-fractalnet-ultra-deep-neural-networks-without-residuals.md)
56. Neural networks with differentiable structure
57. Learning to reinforcement learn
58. Shake-Shake regularization of 3-branch residual networks
59. RL$^2$ - Fast Reinforcement Learning via Slow Reinforcement Learning
60. A Hypercube-Based Encoding for Evolving Large-Scale Neural Networks
61. [Neocognitron - A self-organizing neural network model for a mechanism of pattern recognition unaffected by shift in position](2004-neocognitron-a-self-organizing-neural-network-model-for-a-mechanism-of-pattern-recognition-unaffected-by-shift-in-position.md)
62. Learning to Learn Using Gradient Descent
63. [HyperNetworks](2017-hypernetworks.md)
64. [SGDR - Stochastic Gradient Descent with Warm Restarts](2017-sgdr-stochastic-gradient-descent-with-warm-restarts.md)
65. [Long Short-Term Memory](1997-long-short-term-memory.md)
66. Towards Automatically-Tuned Neural Networks
67. Revisiting Distributed Synchronous SGD
68. [Simple statistical gradient-following algorithms for connectionist reinforcement learning](2004-simple-statistical-gradient-following-algorithms-for-connectionist-reinforcement-learning.md)
69. Neuroevolution - from architectures to learning
70. [Random Search for Hyper-Parameter Optimization](2012-random-search-for-hyper-parameter-optimization.md)
71. Modeling systems with internal state using evolino
72. [Proximal Policy Optimization Algorithms](2017-proximal-policy-optimization-algorithms.md)
73. Trust Region Policy Optimization
74. Et al
