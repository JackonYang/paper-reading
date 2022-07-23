---
title: Quantized Neural Networks - Training Neural Networks with Low Precision Weights and Activations
authors:
- Itay Hubara
- Matthieu Courbariaux
- Daniel Soudry
- Ran El-Yaniv
- Yoshua Bengio
fieldsOfStudy:
- Computer Science
meta_key: 2017-quantized-neural-networks-training-neural-networks-with-low-precision-weights-and-activations
numCitedBy: 1279
reading_status: TBD
ref_count: 85
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Quantized-Neural-Networks:-Training-Neural-Networks-Hubara-Courbariaux/d2e4147eecae6f914e9e1e9aece8fdd2eaed809f?sort=total-citations
venue: J. Mach. Learn. Res.
year: 2017
---

[semanticscholar url](https://www.semanticscholar.org/paper/Quantized-Neural-Networks:-Training-Neural-Networks-Hubara-Courbariaux/d2e4147eecae6f914e9e1e9aece8fdd2eaed809f?sort=total-citations)

# Quantized Neural Networks - Training Neural Networks with Low Precision Weights and Activations

## Abstract

We introduce a method to train Quantized Neural Networks (QNNs) -- neural networks with extremely low precision (e.g., 1-bit) weights and activations, at run-time. At traintime the quantized weights and activations are used for computing the parameter gradients. During the forward pass, QNNs drastically reduce memory size and accesses, and replace most arithmetic operations with bit-wise operations. As a result, power consumption is expected to be drastically reduced. We trained QNNs over the MNIST, CIFAR-10, SVHN and ImageNet datasets. The resulting QNNs achieve prediction accuracy comparable to their 32-bit counterparts. For example, our quantized version of AlexNet with 1-bit weights and 2-bit activations achieves 51% top-1 accuracy. Moreover, we quantize the parameter gradients to 6-bits as well which enables gradients computation using only bit-wise operation. Quantized recurrent neural networks were tested over the Penn Treebank dataset, and achieved comparable accuracy as their 32-bit counterparts using only 4-bits. Last but not least, we programmed a binary matrix multiplication GPU kernel with which it is possible to run our MNIST QNN 7 times faster than with an unoptimized GPU kernel, without suffering any loss in classification accuracy. The QNN code is available online.

## Paper References

1. [Bitwise Neural Networks](2016-bitwise-neural-networks.md)
2. Convolutional Neural Networks using Logarithmic Data Representation
3. Recurrent Neural Networks With Limited Numerical Precision
4. [DoReFa-Net - Training Low Bitwidth Convolutional Neural Networks with Low Bitwidth Gradients](2016-dorefa-net-training-low-bitwidth-convolutional-neural-networks-with-low-bitwidth-gradients.md)
5. [BinaryConnect - Training Deep Neural Networks with binary weights during propagations](2015-binaryconnect-training-deep-neural-networks-with-binary-weights-during-propagations.md)
6. [XNOR-Net - ImageNet Classification Using Binary Convolutional Neural Networks](2016-xnor-net-imagenet-classification-using-binary-convolutional-neural-networks.md)
7. [Deep Compression - Compressing Deep Neural Network with Pruning, Trained Quantization and Huffman Coding](2016-deep-compression-compressing-deep-neural-network-with-pruning-trained-quantization-and-huffman-coding.md)
8. Improving the speed of neural networks on CPUs
9. [Learning both Weights and Connections for Efficient Neural Network](2015-learning-both-weights-and-connections-for-efficient-neural-network.md)
10. Compressing Deep Convolutional Networks using Vector Quantization
11. Deep neural networks are robust to weight binarization and other non-linear distortions
12. Fixed-point feedforward deep neural network design using weights +1, 0, and −1
13. Training deep neural networks with low precision multiplications
14. [Batch Normalization - Accelerating Deep Network Training by Reducing Internal Covariate Shift](2015-batch-normalization-accelerating-deep-network-training-by-reducing-internal-covariate-shift.md)
15. [Dropout - a simple way to prevent neural networks from overfitting](2014-dropout-a-simple-way-to-prevent-neural-networks-from-overfitting.md)
16. [ImageNet classification with deep convolutional neural networks](2012-imagenet-classification-with-deep-convolutional-neural-networks.md)
17. [Neural Networks with Few Multiplications](2016-neural-networks-with-few-multiplications.md)
18. [Understanding the difficulty of training deep feedforward neural networks](2010-understanding-the-difficulty-of-training-deep-feedforward-neural-networks.md)
19. [Deep convolutional neural networks for LVCSR](2013-deep-convolutional-neural-networks-for-lvcsr.md)
20. Spatially-sparse convolutional neural networks
21. [Deep Learning with Limited Numerical Precision](2015-deep-learning-with-limited-numerical-precision.md)
22. [Sequence to Sequence Learning with Neural Networks](2014-sequence-to-sequence-learning-with-neural-networks.md)
23. Compressing Neural Networks with the Hashing Trick
24. Deep Learning using Linear Support Vector Machines
25. Backpropagation for Energy-Efficient Neuromorphic Computing
26. YodaNN - An Ultra-Low Power Convolutional Neural Network Accelerator Based on Binary Weights
27. [DaDianNao - A Machine-Learning Supercomputer](2014-dadiannao-a-machine-learning-supercomputer.md)
28. Hardware-oriented Approximation of Convolutional Neural Networks
29. [Generalizing Pooling Functions in Convolutional Neural Networks - Mixed, Gated, and Tree](2016-generalizing-pooling-functions-in-convolutional-neural-networks-mixed-gated-and-tree.md)
30. Training Binary Multilayer Neural Networks for Image Classification using Expectation Backpropagation
31. [Adam - A Method for Stochastic Optimization](2015-adam-a-method-for-stochastic-optimization.md)
32. [Deeply-Supervised Nets](2015-deeply-supervised-nets.md)
33. YodaNN - An Architecture for Ultralow Power Binary-Weight CNN Acceleration
34. [Long Short-Term Memory](1997-long-short-term-memory.md)
35. Efficient and accurate approximations of nonlinear convolutional networks
36. [Gradient-based learning applied to document recognition](1998-gradient-based-learning-applied-to-document-recognition.md)
37. Expectation Backpropagation - Parameter-Free Training of Multilayer Neural Networks with Continuous or Discrete Weights
38. [DianNao - a small-footprint high-throughput accelerator for ubiquitous machine-learning](2014-diannao-a-small-footprint-high-throughput-accelerator-for-ubiquitous-machine-learning.md)
39. [FitNets - Hints for Thin Deep Nets](2015-fitnets-hints-for-thin-deep-nets.md)
40. [Practical Variational Inference for Neural Networks](2011-practical-variational-inference-for-neural-networks.md)
41. Context dependent recurrent neural network language model
42. [Very Deep Convolutional Networks for Large-Scale Image Recognition](2015-very-deep-convolutional-networks-for-large-scale-image-recognition.md)
43. [Regularization of Neural Networks using DropConnect](2013-regularization-of-neural-networks-using-dropconnect.md)
44. Estimating or Propagating Gradients Through Stochastic Neurons
45. [Neural Machine Translation by Jointly Learning to Align and Translate](2015-neural-machine-translation-by-jointly-learning-to-align-and-translate.md)
46. Subdominant Dense Clusters Allow for Simple Learning and High Computational Performance in Neural Networks with Discrete Synapses.
47. Deep learning with COTS HPC systems
48. [Deep Neural Networks for Acoustic Modeling in Speech Recognition](2012-deep-neural-networks-for-acoustic-modeling-in-speech-recognition.md)
49. [Going deeper with convolutions](2015-going-deeper-with-convolutions.md)
50. Scaling up machine learning - parallel and distributed approaches
51. [Mastering the game of Go with deep neural networks and tree search](2016-mastering-the-game-of-go-with-deep-neural-networks-and-tree-search.md)
52. [Maxout Networks](2013-maxout-networks.md)
53. Large-Scale FPGA-based Convolutional Networks
54. [Domain Adaptation for Large-Scale Sentiment Classification - A Deep Learning Approach](2011-domain-adaptation-for-large-scale-sentiment-classification-a-deep-learning-approach.md)
55. [Human-level control through deep reinforcement learning](2015-human-level-control-through-deep-reinforcement-learning.md)
56. Analysis of high-performance floating-point arithmetic on FPGAs
57. ASIC implementation of random number generators using SR latches and its evaluation
58. Reduction of Quantizing Noise by Use of Feedback
59. [Theano - new features and speed improvements](2012-theano-new-features-and-speed-improvements.md)
60. NeuFlow - Dataflow vision processing system-on-a-chip
61. Fast and Robust Neural Network Joint Models for Statistical Machine Translation
62. [Torch7 - A Matlab-like Environment for Machine Learning](2011-torch7-a-matlab-like-environment-for-machine-learning.md)
63. NeuFlow - A runtime reconfigurable dataflow processor for vision
64. Neural Networks in Machine Learning
65. One weird trick for parallelizing convolutional neural networks
66. Embedded floating-point units in FPGAs
67. Building a Large Annotated Corpus of English - The Penn Treebank
68. 1.1 Computing's energy problem (and what we can do about it)
69. Inceptionism - Going Deeper into Neural Networks
70. Lasagne - First release.
71. Pylearn2 - a machine learning research library
