---
title: DyNet - The Dynamic Neural Network Toolkit
authors:
- Graham Neubig
- Chris Dyer
- Yoav Goldberg
- Austin Matthews
- Waleed Ammar
- Antonios Anastasopoulos
- Miguel Ballesteros
- David Chiang
- Daniel Clothiaux
- Trevor Cohn
- Kevin Duh
- Manaal Faruqui
- Cynthia Gan
- Dan Garrette
- Yangfeng Ji
- Lingpeng Kong
- A. Kuncoro
- Manish Kumar
- Chaitanya Malaviya
- Paul Michel
- Yusuke Oda
- Matthew Richardson
- Naomi Saphra
- Swabha Swayamdipta
- Pengcheng Yin
fieldsOfStudy:
- Computer Science
meta_key: 2017-dynet-the-dynamic-neural-network-toolkit
numCitedBy: 347
reading_status: TBD
ref_count: 72
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/DyNet:-The-Dynamic-Neural-Network-Toolkit-Neubig-Dyer/480d545ac4a4ffff5b1bc291c2de613192e35d91?sort=total-citations
venue: ArXiv
year: 2017
---

# DyNet - The Dynamic Neural Network Toolkit

## Abstract

We describe DyNet, a toolkit for implementing neural network models based on dynamic declaration of network structure. In the static declaration strategy that is used in toolkits like Theano, CNTK, and TensorFlow, the user first defines a computation graph (a symbolic representation of the computation), and then examples are fed into an engine that executes this computation and computes its derivatives. In DyNet's dynamic declaration strategy, computation graph construction is mostly transparent, being implicitly constructed by executing procedural code that computes the network outputs, and the user is free to use different network structures for each input. Dynamic declaration thus facilitates the implementation of more complicated network architectures, and DyNet is specifically designed to allow users to implement their models in a way that is idiomatic in their preferred programming language (C++ or Python). One challenge with dynamic declaration is that because the symbolic computation graph is defined anew for every training example, its construction must have low overhead. To achieve this, DyNet has an optimized C++ backend and lightweight graph representation. Experiments show that DyNet's speeds are faster than or comparable with static declaration toolkits, and significantly faster than Chainer, another dynamic declaration toolkit. DyNet is released open-source under the Apache 2.0 license and available at this http URL.

## Paper References

1. [Deep Learning with Dynamic Computation Graphs](2017-deep-learning-with-dynamic-computation-graphs.md)
2. An introduction to computational networks and the computational network toolkit (invited talk)
3. Theano - A CPU and GPU Math Compiler in Python
4. [MXNet - A Flexible and Efficient Machine Learning Library for Heterogeneous Distributed Systems](2015-mxnet.md)
5. [TensorFlow - Large-Scale Machine Learning on Heterogeneous Distributed Systems](2016-tensorflow-large-scale-machine-learning-on-heterogeneous-distributed-systems.md)
6. [LSTM Neural Networks for Language Modeling](2012-lstm-neural-networks-for-language-modeling.md)
7. [Sequence to Sequence Learning with Neural Networks](2014-sequence-to-sequence-learning-with-neural-networks.md)
8. [Semantic Object Parsing with Graph LSTM](2016-semantic-object-parsing-with-graph-lstm.md)
9. A Fast Unified Model for Parsing and Sentence Understanding
10. Compiling Comp Ling - practical weighted dynamic programming and the Dyna language
11. [Adam - A Method for Stochastic Optimization](2015-adam-a-method-for-stochastic-optimization.md)
12. Segmental Recurrent Neural Networks
13. Asynchronous Parallel Learning for Neural Networks and Structured Models with Dense Features
14. [Extensions of recurrent neural network language model](2011-extensions-of-recurrent-neural-network-language-model.md)
15. [Mastering the game of Go with deep neural networks and tree search](2016-mastering-the-game-of-go-with-deep-neural-networks-and-tree-search.md)
16. Approximation-Aware Dependency Parsing by Belief Propagation
17. [Neural Machine Translation by Jointly Learning to Align and Translate](2015-neural-machine-translation-by-jointly-learning-to-align-and-translate.md)
18. Finding Structure in Time
19. [Parsing Natural Scenes and Natural Language with Recursive Neural Networks](2011-parsing-natural-scenes-and-natural-language-with-recursive-neural-networks.md)
20. [Hogwild - A Lock-Free Approach to Parallelizing Stochastic Gradient Descent](2011-hogwild-a-lock-free-approach-to-parallelizing-stochastic-gradient-descent.md)
21. [Long Short-Term Memory](1997-long-short-term-memory.md)
22. A Neural Network for Coordination Boundary Prediction
23. A Neural Probabilistic Language Model
24. Simple and Accurate Dependency Parsing Using Bidirectional LSTM Feature Representations
25. [Improved Semantic Representations From Tree-Structured Long Short-Term Memory Networks](2015-improved-semantic-representations-from-tree-structured-long-short-term-memory-networks.md)
26. Generalizing and Hybridizing Count-based and Neural Language Models
27. Chainer - a Next-Generation Open Source Framework for Deep Learning
28. [Natural Language Processing (Almost) from Scratch](2011-natural-language-processing-almost-from-scratch.md)
29. Character-based Neural Machine Translation
30. [Learning to Compose Neural Networks for Question Answering](2016-learning-to-compose-neural-networks-for-question-answering.md)
31. Improving Sequence to Sequence Learning for Morphological Inflection Generation - The BIU-MIT Systems for the SIGMORPHON 2016 Shared Task for Morphological Reinflection
32. [ImageNet classification with deep convolutional neural networks](2012-imagenet-classification-with-deep-convolutional-neural-networks.md)
33. Easy-First Dependency Parsing with Hierarchical Tree LSTMs
34. [Empirical Evaluation of Gated Recurrent Neural Networks on Sequence Modeling](2014-empirical-evaluation-of-gated-recurrent-neural-networks-on-sequence-modeling.md)
35. Fast Reverse-Mode Automatic Differentiation using Expression Templates in C++
36. Bidirectional LSTM-CRF Models for Sequence Tagging
37. Recurrent Neural Network Grammars
38. Greedy, Joint Syntactic-Semantic Parsing with Stack LSTMs
39. Pegasos - primal estimated sub-gradient solver for SVM
40. [Adaptive Subgradient Methods for Online Learning and Stochastic Optimization](2010-adaptive-subgradient-methods-for-online-learning-and-stochastic-optimization.md)
41. [Human-level control through deep reinforcement learning](2015-human-level-control-through-deep-reinforcement-learning.md)
42. [Connectionist temporal classification - labelling unsegmented sequence data with recurrent neural networks](2006-connectionist-temporal-classification-labelling-unsegmented-sequence-data-with-recurrent-neural-networks.md)
43. Multilingual Part-of-Speech Tagging with Bidirectional Long Short-Term Memory Models and Auxiliary Loss
44. A Neural Network for Factoid Question Answering over Paragraphs
45. Learning multilingual named entity recognition from Wikipedia
46. Incorporating Structural Alignment Biases into an Attentional Neural Translation Model
47. Classes for fast maximum entropy training
48. [Deep Neural Networks for Acoustic Modeling in Speech Recognition - The Shared Views of Four Research Groups](2012-deep-neural-networks-for-acoustic-modeling-in-speech-recognition-the-shared-views-of-four-research-groups.md)
49. Morphological Inflection Generation Using Character Sequence to Sequence Learning
50. Improving Hypernymy Detection with an Integrated Path-based and Distributional Method
51. Statistical parametric speech synthesis using deep neural networks
52. CogALex-V Shared Task - LexNET - Integrated Path-based and Distributional Method for the Identification of Semantic Relations
53. Transition-Based Dependency Parsing with Stack Long Short-Term Memory
54. Transition-Based Dependency Parsing with Heuristic Backtracking
55. Deep multi-task learning with low level tasks supervised at lower layers
56. A simple automatic derivative evaluation program
57. Torch - a modular machine learning software library
58. Neural conditional random fields
59. Semi Supervised Preposition-Sense Disambiguation using Multilingual Data
60. A Neural Network Architecture for Multilingual Punctuation Generation
61. [Neural Architectures for Named Entity Recognition](2016-neural-architectures-for-named-entity-recognition.md)
62. Improving sentence compression by learning to predict gaze
63. A method for solving the convex programming problem with convergence rate O(1/k^2)
64. Automatic differentiation of algorithms - theory, implementation, and application
