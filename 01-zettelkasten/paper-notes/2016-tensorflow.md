---
title: TensorFlow - A system for large-scale machine learning
authors:
- Martín Abadi
- P. Barham
- Jianmin Chen
- Z. Chen
- Andy Davis
- J. Dean
- Matthieu Devin
- S. Ghemawat
- Geoffrey Irving
- M. Isard
- M. Kudlur
- J. Levenberg
- R. Monga
- Sherry Moore
- D. Murray
- Benoit Steiner
- P. Tucker
- Vijay Vasudevan
- P. Warden
- M. Wicke
- Yuan Yu
- Xiaoqiang Zhang
fieldsOfStudy:
- Computer Science
filesize_readable: 665.1 KB
meta_key: 2016-tensorflow
meta_relpath: paper-extra-data/pdf-meta/2016-tensorflow.yaml
numCitedBy: 12805
pdf_relpath: paper-repo/pdfs/2016-tensorflow.pdf
reading_status: TBD
ref_count: 111
tags:
- gen-from-ref
- paper
- stc
url_slug: 2016-tensorflow
urls:
- https://www.semanticscholar.org/paper/TensorFlow:-A-system-for-large-scale-machine-Abadi-Barham/46200b99c40e8586c8a0f588488ab6414119fb28?sort=total-citations
venue: OSDI
year: 2016
---

[pdf(local)](../../paper-repo/pdfs/2016-tensorflow.pdf)

[semanticscholar url](https://www.semanticscholar.org/paper/TensorFlow:-A-system-for-large-scale-machine-Abadi-Barham/46200b99c40e8586c8a0f588488ab6414119fb28?sort=total-citations)

# TensorFlow - A system for large-scale machine learning

## Abstract

TensorFlow is a machine learning system that operates at large scale and in heterogeneous environments. Tensor-Flow uses dataflow graphs to represent computation, shared state, and the operations that mutate that state. It maps the nodes of a dataflow graph across many machines in a cluster, and within a machine across multiple computational devices, including multicore CPUs, general-purpose GPUs, and custom-designed ASICs known as Tensor Processing Units (TPUs). This architecture gives flexibility to the application developer: whereas in previous "parameter server" designs the management of shared state is built into the system, TensorFlow enables developers to experiment with novel optimizations and training algorithms. TensorFlow supports a variety of applications, with a focus on training and inference on deep neural networks. Several Google services use TensorFlow in production, we have released it as an open-source project, and it has become widely used for machine learning research. In this paper, we describe the TensorFlow dataflow model and demonstrate the compelling performance that TensorFlow achieves for several real-world applications.

## Paper References

1. [TensorFlow - Large-Scale Machine Learning on Heterogeneous Distributed Systems](2016-tensorflow-large-scale-machine-learning-on-heterogeneous-distributed-systems.md)
2. SparkNet - Training Deep Networks in Spark
3. Project Adam - Building an Efficient and Scalable Deep Learning Training System
4. [MXNet - A Flexible and Efficient Machine Learning Library for Heterogeneous Distributed Systems](2015-mxnet.md)
5. [Large Scale Distributed Deep Networks](2012-large-scale-distributed-deep-networks.md)
6. [Caffe - Convolutional Architecture for Fast Feature Embedding](2014-caffe-convolutional-architecture-for-fast-feature-embedding.md)
7. [Building high-level features using large scale unsupervised learning](2013-building-high-level-features-using-large-scale-unsupervised-learning.md)
8. [Theano - A Python framework for fast computation of mathematical expressions](2016-theano-a-python-framework-for-fast-computation-of-mathematical-expressions.md)
9. GeePS - scalable deep learning on distributed GPUs with a GPU-specialized parameter server
10. [Rethinking the Inception Architecture for Computer Vision](2016-rethinking-the-inception-architecture-for-computer-vision.md)
11. [Batch Normalization - Accelerating Deep Network Training by Reducing Internal Covariate Shift](2015-batch-normalization-accelerating-deep-network-training-by-reducing-internal-covariate-shift.md)
12. [Sequence to Sequence Learning with Neural Networks](2014-sequence-to-sequence-learning-with-neural-networks.md)
13. Map-Reduce for Machine Learning on Multicore
14. Multilingual acoustic models using distributed deep neural networks
15. [Google's Neural Machine Translation System - Bridging the Gap between Human and Machine Translation](2016-google-s-neural-machine-translation-system-bridging-the-gap-between-human-and-machine-translation.md)
16. [cuDNN - Efficient Primitives for Deep Learning](2014-cudnn-efficient-primitives-for-deep-learning.md)
17. [Exploring the Limits of Language Modeling](2016-exploring-the-limits-of-language-modeling.md)
18. Generative Adversarial Nets
19. [ImageNet classification with deep convolutional neural networks](2012-imagenet-classification-with-deep-convolutional-neural-networks.md)
20. Exploring Strategies for Training Deep Neural Networks
21. On rectified linear units for speech processing
22. [On the importance of initialization and momentum in deep learning](2013-on-the-importance-of-initialization-and-momentum-in-deep-learning.md)
23. [DeViSE - A Deep Visual-Semantic Embedding Model](2013-devise-a-deep-visual-semantic-embedding-model.md)
24. An architecture for parallel topic models
25. Wide & Deep Learning for Recommender Systems
26. One billion word benchmark for measuring progress in statistical language modeling
27. Scaling Distributed Machine Learning with the Parameter Server
28. [Recurrent Models of Visual Attention](2014-recurrent-models-of-visual-attention.md)
29. Massively Parallel Methods for Deep Reinforcement Learning
30. [Large-Scale Video Classification with Convolutional Neural Networks](2014-large-scale-video-classification-with-convolutional-neural-networks.md)
31. [Deep Residual Learning for Image Recognition](2016-deep-residual-learning-for-image-recognition.md)
32. [Going deeper with convolutions](2015-going-deeper-with-convolutions.md)
33. On Using Very Large Target Vocabulary for Neural Machine Translation
34. [Long Short-Term Memory](1997-long-short-term-memory.md)
35. Sample size selection in optimization methods for machine learning
36. Dandelion - a compiler and runtime for heterogeneous systems
37. [Hogwild - A Lock-Free Approach to Parallelizing Stochastic Gradient Descent](2011-hogwild-a-lock-free-approach-to-parallelizing-stochastic-gradient-descent.md)
38. Naiad - a timely dataflow system
39. [Fast Algorithms for Convolutional Neural Networks](2016-fast-algorithms-for-convolutional-neural-networks.md)
40. The Missing Piece in Complex Analytics - Low Latency, Scalable Model Management and Serving with Velox
41. [Adaptive Subgradient Methods for Online Learning and Stochastic Optimization](2010-adaptive-subgradient-methods-for-online-learning-and-stochastic-optimization.md)
42. Learning representations by back-propagating errors
43. MapReduce - simplified data processing on large clusters
44. DryadLINQ - A System for General-Purpose Distributed Data-Parallel Computing Using a High-Level Language
45. [On the difficulty of training recurrent neural networks](2013-on-the-difficulty-of-training-recurrent-neural-networks.md)
46. Halide - a language and compiler for optimizing parallelism, locality, and recomputation in image processing pipelines
47. [Human-level control through deep reinforcement learning](2015-human-level-control-through-deep-reinforcement-learning.md)
48. Document Embedding with Paragraph Vectors
49. Revisiting Distributed Synchronous SGD
50. Dryad - distributed data-parallel programs from sequential building blocks
51. Resilient Distributed Datasets - A Fault-Tolerant Abstraction for In-Memory Cluster Computing
52. Frame-by-frame language identification in short utterances using deep neural networks
53. A Neural Probabilistic Language Model
54. [Efficient Estimation of Word Representations in Vector Space](2013-efficient-estimation-of-word-representations-in-vector-space.md)
55. Efficient mini-batch training for stochastic optimization
56. Pedestrian detection with a Large-Field-Of-View deep network
57. [Deep Neural Networks for Acoustic Modeling in Speech Recognition - The Shared Views of Four Research Groups](2012-deep-neural-networks-for-acoustic-modeling-in-speech-recognition-the-shared-views-of-four-research-groups.md)
58. Torch - a modular machine learning software library
59. Grammar as a Foreign Language
60. Large-scale cluster management at Google with Borg
61. Learning representations by backpropagating errors
62. LINQits - big data on little clients
63. Scalability! But at what COST?
64. Move Evaluation in Go Using Deep Convolutional Neural Networks
65. Multiple Object Recognition with Visual Attention
66. [ImageNet Large Scale Visual Recognition Challenge](2015-imagenet-large-scale-visual-recognition-challenge.md)
67. ZooKeeper - Wait-free Coordination for Internet-scale Systems
68. Mesos - A Platform for Fine-Grained Resource Sharing in the Data Center
69. Incremental, iterative data processing with timely dataflow
70. One weird trick for parallelizing convolutional neural networks
71. Executing a Program on the MIT Tagged-Token Dataflow Architecture
72. Serial Order - A Parallel Distributed Processing Approach
73. The Chubby lock service for loosely-coupled distributed systems
74. The Chubby Lock Service for Loosely-Coupled Distributed Systems
75. [The mnist database of handwritten digits](2005-the-mnist-database-of-handwritten-digits.md)
76. Annual review of computer science vol. 1, 1986
77. Dataflow architectures
78. Toward Accelerating Deep Learning at Scale Using Specialized Logic
79. Learning distributed representations of concepts.
80. Neural networks
