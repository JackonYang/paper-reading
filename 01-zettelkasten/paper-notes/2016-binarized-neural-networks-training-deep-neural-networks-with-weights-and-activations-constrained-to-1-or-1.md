---
title: Binarized Neural Networks - Training Deep Neural Networks with Weights and Activations Constrained to +1 or -1
authors:
- Matthieu Courbariaux
- Itay Hubara
- Daniel Soudry
- Ran El-Yaniv
- Yoshua Bengio
fieldsOfStudy:
- Computer Science
meta_key: 2016-binarized-neural-networks-training-deep-neural-networks-with-weights-and-activations-constrained-to-1-or-1
numCitedBy: 1753
reading_status: TBD
ref_count: 78
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Binarized-Neural-Networks:-Training-Deep-Neural-and-Courbariaux-Hubara/6eecc808d4c74e7d0d7ef6b8a4112c985ced104d?sort=total-citations
venue: ''
year: 2016
---

# Binarized Neural Networks - Training Deep Neural Networks with Weights and Activations Constrained to +1 or -1

## Abstract

We introduce a method to train Binarized Neural Networks (BNNs) - neural networks with binary weights and activations at run-time. At training-time the binary weights and activations are used for computing the parameters gradients. During the forward pass, BNNs drastically reduce memory size and accesses, and replace most arithmetic operations with bit-wise operations, which is expected to substantially improve power-efficiency. To validate the effectiveness of BNNs we conduct two sets of experiments on the Torch7 and Theano frameworks. On both, BNNs achieved nearly state-of-the-art results over the MNIST, CIFAR-10 and SVHN datasets. Last but not least, we wrote a binary matrix multiplication GPU kernel with which it is possible to run our MNIST BNN 7 times faster than with an unoptimized GPU kernel, without suffering any loss in classification accuracy. The code for training and running our BNNs is available on-line.

## Paper References

1. [BinaryConnect - Training Deep Neural Networks with binary weights during propagations](2015-binaryconnect-training-deep-neural-networks-with-binary-weights-during-propagations.md)
2. Bitwise Neural Networks
3. [Learning both Weights and Connections for Efficient Neural Network](2015-learning-both-weights-and-connections-for-efficient-neural-network.md)
4. Neural Networks with Few Multiplications
5. Improving the speed of neural networks on CPUs
6. [ImageNet classification with deep convolutional neural networks](2012-imagenet-classification-with-deep-convolutional-neural-networks.md)
7. Resiliency of Deep Neural Networks under Quantization
8. Spatially-sparse convolutional neural networks
9. [Batch Normalization - Accelerating Deep Network Training by Reducing Internal Covariate Shift](2015-batch-normalization-accelerating-deep-network-training-by-reducing-internal-covariate-shift.md)
10. Training deep neural networks with low precision multiplications
11. Deep Learning using Linear Support Vector Machines
12. [Deep convolutional neural networks for LVCSR](2013-deep-convolutional-neural-networks-for-lvcsr.md)
13. [DaDianNao - A Machine-Learning Supercomputer](2014-dadiannao-a-machine-learning-supercomputer.md)
14. [Sequence to Sequence Learning with Neural Networks](2014-sequence-to-sequence-learning-with-neural-networks.md)
15. Compressing Deep Convolutional Networks using Vector Quantization
16. [Dropout - a simple way to prevent neural networks from overfitting](2014-dropout-a-simple-way-to-prevent-neural-networks-from-overfitting.md)
17. [Deeply-Supervised Nets](2015-deeply-supervised-nets.md)
18. Reduced-Precision Strategies for Bounded Memory in Deep Neural Nets
19. Training Binary Multilayer Neural Networks for Image Classification using Expectation Backpropagation
20. [Generalizing Pooling Functions in Convolutional Neural Networks - Mixed, Gated, and Tree](2016-generalizing-pooling-functions-in-convolutional-neural-networks-mixed-gated-and-tree.md)
21. Improving Neural Networks with Dropout
22. [Network In Network](2014-network-in-network.md)
23. [Understanding the difficulty of training deep feedforward neural networks](2010-understanding-the-difficulty-of-training-deep-feedforward-neural-networks.md)
24. Fixed-point feedforward deep neural network design using weights +1, 0, and −1
25. X1000 real-time phoneme recognition VLSI using feed-forward deep neural networks
26. [Going deeper with convolutions](2015-going-deeper-with-convolutions.md)
27. [FitNets - Hints for Thin Deep Nets](2015-fitnets-hints-for-thin-deep-nets.md)
28. [DianNao - a small-footprint high-throughput accelerator for ubiquitous machine-learning](2014-diannao-a-small-footprint-high-throughput-accelerator-for-ubiquitous-machine-learning.md)
29. [Very Deep Convolutional Networks for Large-Scale Image Recognition](2015-very-deep-convolutional-networks-for-large-scale-image-recognition.md)
30. [Regularization of Neural Networks using DropConnect](2013-regularization-of-neural-networks-using-dropconnect.md)
31. Backpropagation for Energy-Efficient Neuromorphic Computing
32. [Gradient-based learning applied to document recognition](1998-gradient-based-learning-applied-to-document-recognition.md)
33. [Adam - A Method for Stochastic Optimization](2015-adam-a-method-for-stochastic-optimization.md)
34. Memristor-Based Multilayer Neural Networks With Online Gradient Descent Training
35. Deep learning with COTS HPC systems
36. Expectation Backpropagation - Parameter-Free Training of Multilayer Neural Networks with Continuous or Discrete Weights
37. Subdominant Dense Clusters Allow for Simple Learning and High Computational Performance in Neural Networks with Discrete Synapses.
38. [Deep Neural Networks for Acoustic Modeling in Speech Recognition](2012-deep-neural-networks-for-acoustic-modeling-in-speech-recognition.md)
39. [Neural Machine Translation by Jointly Learning to Align and Translate](2015-neural-machine-translation-by-jointly-learning-to-align-and-translate.md)
40. Large-Scale FPGA-based Convolutional Networks
41. Estimating or Propagating Gradients Through Stochastic Neurons
42. [Practical Variational Inference for Neural Networks](2011-practical-variational-inference-for-neural-networks.md)
43. [Mastering the game of Go with deep neural networks and tree search](2016-mastering-the-game-of-go-with-deep-neural-networks-and-tree-search.md)
44. NeuFlow - Dataflow vision processing system-on-a-chip
45. [Human-level control through deep reinforcement learning](2015-human-level-control-through-deep-reinforcement-learning.md)
46. [Theano - new features and speed improvements](2012-theano-new-features-and-speed-improvements.md)
47. [Torch7 - A Matlab-like Environment for Machine Learning](2011-torch7-a-matlab-like-environment-for-machine-learning.md)
48. NeuFlow - A runtime reconfigurable dataflow processor for vision
49. Analysis of high-performance floating-point arithmetic on FPGAs
50. Fast and Robust Neural Network Joint Models for Statistical Machine Translation
51. Neural Networks in Machine Learning
52. Embedded floating-point units in FPGAs
53. Expectation Propagation for approximate Bayesian inference
54. 1.1 Computing's energy problem (and what we can do about it)
55. Inceptionism - Going Deeper into Neural Networks
56. Neural Networks for Machine Learning
57. Lasagne - First release.
58. Pylearn2 - a machine learning research library
