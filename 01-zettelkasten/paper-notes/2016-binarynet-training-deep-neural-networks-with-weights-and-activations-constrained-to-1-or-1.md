---
title: BinaryNet - Training Deep Neural Networks with Weights and Activations Constrained to +1 or -1
authors:
- Matthieu Courbariaux
- Yoshua Bengio
fieldsOfStudy:
- Computer Science
meta_key: 2016-binarynet-training-deep-neural-networks-with-weights-and-activations-constrained-to-1-or-1
numCitedBy: 563
reading_status: TBD
ref_count: 56
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/BinaryNet:-Training-Deep-Neural-Networks-with-and-1-Courbariaux-Bengio/123ae35aa7d6838c817072032ce5615bb891652d?sort=total-citations
venue: ArXiv
year: 2016
---

# BinaryNet - Training Deep Neural Networks with Weights and Activations Constrained to +1 or -1

## Abstract

We introduce BinaryNet, a method which trains DNNs with binary weights and activations when computing parameters’ gradient. We show that it is possible to train a Multi Layer Perceptron (MLP) on MNIST and ConvNets on CIFAR-10 and SVHN with BinaryNet and achieve nearly state-of-the-art results. At run-time, BinaryNet drastically reduces memory usage and replaces most multiplications by 1-bit exclusive-not-or (XNOR) operations, which might have a big impact on both general-purpose and dedicated Deep Learning hardware. We wrote a binary matrix multiplication GPU kernel with which it is possible to run our MNIST MLP 7 times faster than with an unoptimized GPU kernel, without suffering any loss in classification accuracy. The code for BinaryNet is available.

## Paper References

1. [BinaryConnect - Training Deep Neural Networks with binary weights during propagations](2015-binaryconnect-training-deep-neural-networks-with-binary-weights-during-propagations.md)
2. Neural Networks with Few Multiplications
3. [ImageNet classification with deep convolutional neural networks](2012-imagenet-classification-with-deep-convolutional-neural-networks.md)
4. Deep Learning using Linear Support Vector Machines
5. Fixed-point feedforward deep neural network design using weights +1, 0, and −1
6. [Learning both Weights and Connections for Efficient Neural Network](2015-learning-both-weights-and-connections-for-efficient-neural-network.md)
7. [Batch Normalization - Accelerating Deep Network Training by Reducing Internal Covariate Shift](2015-batch-normalization-accelerating-deep-network-training-by-reducing-internal-covariate-shift.md)
8. Improving the speed of neural networks on CPUs
9. [Deeply-Supervised Nets](2015-deeply-supervised-nets.md)
10. [Going deeper with convolutions](2015-going-deeper-with-convolutions.md)
11. [Generalizing Pooling Functions in Convolutional Neural Networks - Mixed, Gated, and Tree](2016-generalizing-pooling-functions-in-convolutional-neural-networks-mixed-gated-and-tree.md)
12. Spatially-sparse convolutional neural networks
13. Compressing Deep Convolutional Networks using Vector Quantization
14. [Sequence to Sequence Learning with Neural Networks](2014-sequence-to-sequence-learning-with-neural-networks.md)
15. [FitNets - Hints for Thin Deep Nets](2015-fitnets-hints-for-thin-deep-nets.md)
16. [DaDianNao - A Machine-Learning Supercomputer](2014-dadiannao-a-machine-learning-supercomputer.md)
17. X1000 real-time phoneme recognition VLSI using feed-forward deep neural networks
18. [Very Deep Convolutional Networks for Large-Scale Image Recognition](2015-very-deep-convolutional-networks-for-large-scale-image-recognition.md)
19. [Deep convolutional neural networks for LVCSR](2013-deep-convolutional-neural-networks-for-lvcsr.md)
20. [Dropout - a simple way to prevent neural networks from overfitting](2014-dropout-a-simple-way-to-prevent-neural-networks-from-overfitting.md)
21. Improving Neural Networks with Dropout
22. [Understanding the difficulty of training deep feedforward neural networks](2010-understanding-the-difficulty-of-training-deep-feedforward-neural-networks.md)
23. [DianNao - a small-footprint high-throughput accelerator for ubiquitous machine-learning](2014-diannao-a-small-footprint-high-throughput-accelerator-for-ubiquitous-machine-learning.md)
24. [Gradient-based learning applied to document recognition](1998-gradient-based-learning-applied-to-document-recognition.md)
25. [Regularization of Neural Networks using DropConnect](2013-regularization-of-neural-networks-using-dropconnect.md)
26. [Adam - A Method for Stochastic Optimization](2015-adam-a-method-for-stochastic-optimization.md)
27. Deep learning with COTS HPC systems
28. Backpropagation for Energy-Efficient Neuromorphic Computing
29. Expectation Backpropagation - Parameter-Free Training of Multilayer Neural Networks with Continuous or Discrete Weights
30. [Deep Neural Networks for Acoustic Modeling in Speech Recognition](2012-deep-neural-networks-for-acoustic-modeling-in-speech-recognition.md)
31. Large-Scale FPGA-based Convolutional Networks
32. Estimating or Propagating Gradients Through Stochastic Neurons
33. [Theano - new features and speed improvements](2012-theano-new-features-and-speed-improvements.md)
34. NeuFlow - Dataflow vision processing system-on-a-chip
35. [Practical Variational Inference for Neural Networks](2011-practical-variational-inference-for-neural-networks.md)
36. [Neural Machine Translation by Jointly Learning to Align and Translate](2015-neural-machine-translation-by-jointly-learning-to-align-and-translate.md)
37. [Mastering the game of Go with deep neural networks and tree search](2016-mastering-the-game-of-go-with-deep-neural-networks-and-tree-search.md)
38. [Human-level control through deep reinforcement learning](2015-human-level-control-through-deep-reinforcement-learning.md)
39. NeuFlow - A runtime reconfigurable dataflow processor for vision
40. Neural Networks in Machine Learning
41. Fast and Robust Neural Network Joint Models for Statistical Machine Translation
42. Analysis of high-performance floating-point arithmetic on FPGAs
43. Expectation Propagation for approximate Bayesian inference
44. Inceptionism - Going Deeper into Neural Networks
45. Lasagne - First release.
46. Pylearn2 - a machine learning research library
