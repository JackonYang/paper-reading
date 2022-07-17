---
title: Fast and Accurate Deep Network Learning by Exponential Linear Units (ELUs)
authors:
- "Djork-Arn\xE9 Clevert"
- Thomas Unterthiner
- S. Hochreiter
fieldsOfStudy:
- Computer Science
meta_key: 2016-fast-and-accurate-deep-network-learning-by-exponential-linear-units-elus
numCitedBy: 3685
reading_status: TBD
ref_count: 74
tags:
- gen-from-ref
- paper
venue: ICLR
year: 2016
---

# Fast and Accurate Deep Network Learning by Exponential Linear Units (ELUs)

## Abstract

We introduce the "exponential linear unit" (ELU) which speeds up learning in deep neural networks and leads to higher classification accuracies. Like rectified linear units (ReLUs), leaky ReLUs (LReLUs) and parametrized ReLUs (PReLUs), ELUs alleviate the vanishing gradient problem via the identity for positive values. However, ELUs have improved learning characteristics compared to the units with other activation functions. In contrast to ReLUs, ELUs have negative values which allows them to push mean unit activations closer to zero like batch normalization but with lower computational complexity. Mean shifts toward zero speed up learning by bringing the normal gradient closer to the unit natural gradient because of a reduced bias shift effect. While LReLUs and PReLUs have negative values, too, they do not ensure a noise-robust deactivation state. ELUs saturate to a negative value with smaller inputs and thereby decrease the forward propagated variation and information. Therefore, ELUs code the degree of presence of particular phenomena in the input, while they do not quantitatively model the degree of their absence. In experiments, ELUs lead not only to faster learning, but also to significantly better generalization performance than ReLUs and LReLUs on networks with more than 5 layers. On CIFAR-100 ELUs networks significantly outperform ReLU networks with batch normalization while batch normalization does not improve ELU networks. ELU networks are among the top 10 reported CIFAR-10 results and yield the best published result on CIFAR-100, without resorting to multi-view evaluation or model averaging. On ImageNet, ELU networks considerably speed up learning compared to a ReLU network with the same architecture, obtaining less than 10% classification error for a single crop, single model network.

## Paper References

1. Deep Learning Made Easier by Linear Transformations in Perceptrons
2. [Batch Normalization - Accelerating Deep Network Training by Reducing Internal Covariate Shift](2015-batch-normalization-accelerating-deep-network-training-by-reducing-internal-covariate-shift)
3. Empirical Evaluation of Rectified Activations in Convolutional Network
4. Rectified Factor Networks
5. Enhanced Gradient and Adaptive Learning Rate for Training Restricted Boltzmann Machines
6. [Delving Deep into Rectifiers - Surpassing Human-Level Performance on ImageNet Classification](2015-delving-deep-into-rectifiers-surpassing-human-level-performance-on-imagenet-classification)
7. [Improving deep neural networks for LVCSR using rectified linear units and dropout](2013-improving-deep-neural-networks-for-lvcsr-using-rectified-linear-units-and-dropout)
8. [Network In Network](2014-network-in-network)
9. On rectified linear units for speech processing
10. [Deeply-Supervised Nets](2015-deeply-supervised-nets)
11. Learning Recurrent Neural Networks with Hessian-Free Optimization
12. [Long Short-Term Memory](1997-long-short-term-memory)
13. Revisiting Natural Gradient for Deep Networks
14. Neural Networks - Tricks of the Trade
15. [Rectifier Nonlinearities Improve Neural Network Acoustic Models](2013-rectifier-nonlinearities-improve-neural-network-acoustic-models)
16. [ImageNet classification with deep convolutional neural networks](2012-imagenet-classification-with-deep-convolutional-neural-networks)
17. Natural Neural Networks
18. Centering Neural Network Gradient Factors
19. Training Neural Networks with Stochastic Hessian-Free Optimization
20. [Training Very Deep Networks](2015-training-very-deep-networks)
21. [Striving for Simplicity - The All Convolutional Net](2015-striving-for-simplicity-the-all-convolutional-net)
22. Learning Semantic Image Representations at a Large Scale
23. Riemannian metrics for neural networks
24. Deep learning via Hessian-free optimization
25. The Vanishing Gradient Problem During Learning Recurrent Neural Nets and Problem Solutions
26. Fractional Max-Pooling
27. Incremental Natural Actor-Critic Algorithms
28. Metric-Free Natural Gradient for Joint-Training of Boltzmann Machines
29. Natural Gradient Works Efficiently in Learning
30. [Maxout Networks](2013-maxout-networks)
31. A fast natural Newton method
32. Learning to Learn Using Gradient Descent
33. Feature Extraction Through LOCOCODE
34. [Rectified Linear Units Improve Restricted Boltzmann Machines](2010-rectified-linear-units-improve-restricted-boltzmann-machines)
35. DeepTox - Toxicity Prediction using Deep Learning
36. Iterative Scaled Trust-Region Learning in Krylov Subspaces via Pearlmutter's Implicit Sparse Hessian-Vector Multiply
37. Deep Boltzmann Machines and the Centering Trick
38. Adaptive natural gradient learning algorithms for various stochastic models
39. Deep Learning as an Opportunity in Virtual Screening
40. Statistical Theory of Learning Curves under Entropic Loss Criterion
41. Natural Actor-Critic
42. Natural Evolution Strategies
43. Scaling up Natural Gradient by Sparsely Factorizing the Inverse Fisher Matrix
44. [Under Review as a Conference Paper at Iclr 2017 Delving into Transferable Adversarial Ex- Amples and Black-box Attacks](2016-under-review-as-a-conference-paper-at-iclr-2017-delving-into-transferable-adversarial-ex-amples-and-black-box-attacks)
45. Topmoumoute Online Natural Gradient Algorithm
46. Iterative weighted least squares algorithms for neural networks classifiers
47. Neural Learning in Structured Parameter Spaces - Natural Riemannian Gradient
48. Gradient Flow in Recurrent Nets - the Difficulty of Learning Long-Term Dependencies
49. NATURAL GRADIENT LEARNING WITH A NONHOLONOMIC CONSTRAINT FOR BLIND DECONVOLUTION OF MULTIPLE CHANNELS
50. A New Learning Algorithm for Blind Signal Separation
51. A Natural Policy Gradient
52. Natural Gradient Approach To Blind Separation Of Over- And Under-Complete Mixtures
53. [Deep Sparse Rectifier Neural Networks](2011-deep-sparse-rectifier-neural-networks)
54. Complexity Issues in Natural Gradient Descent Method for Training Multilayer Perceptrons
55. A Fast, Compact Approximation of the Exponential Function
56. Eigenvalues of covariance matrices - Application to neural-network learning.
57. [Published as a conference paper at ICLR 2018 S IMULATING A CTION D YNAMICS WITH N EURAL P ROCESS N ETWORKS](2018-published-as-a-conference-paper-at-iclr-2018-s-imulating-a-ction-d-ynamics-with-n-eural-p-rocess-n-etworks)
58. Stochastic search using the natural gradient
59. Improved Preconditioner for Hessian Free Optimization
60. On a Fast, Compact Approximation of the Exponential Function
61. Untersuchungen zu dynamischen neuronalen Netzen
62. [Efficient BackProp](2012-efficient-backprop)
63. Differential-geometrical methods in statistics
64. Toxicity Prediction using Deep Learning
65. Riemannian metrics for neural networks I - feedforward networks
66. Recurrent Neural Net Learning and Vanishing
67. Krylov Subspace Descent for Deep Learning
