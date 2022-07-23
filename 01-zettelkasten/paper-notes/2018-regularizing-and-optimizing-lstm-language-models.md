---
title: Regularizing and Optimizing LSTM Language Models
authors:
- Stephen Merity
- N. Keskar
- R. Socher
fieldsOfStudy:
- Computer Science
meta_key: 2018-regularizing-and-optimizing-lstm-language-models
numCitedBy: 859
reading_status: TBD
ref_count: 51
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Regularizing-and-Optimizing-LSTM-Language-Models-Merity-Keskar/58c6f890a1ae372958b7decf56132fe258152722?sort=total-citations
venue: ICLR
year: 2018
---

[semanticscholar url](https://www.semanticscholar.org/paper/Regularizing-and-Optimizing-LSTM-Language-Models-Merity-Keskar/58c6f890a1ae372958b7decf56132fe258152722?sort=total-citations)

# Regularizing and Optimizing LSTM Language Models

## Abstract

Recurrent neural networks (RNNs), such as long short-term memory networks (LSTMs), serve as a fundamental building block for many sequence learning tasks, including machine translation, language modeling, and question answering. In this paper, we consider the specific problem of word-level language modeling and investigate strategies for regularizing and optimizing LSTM-based models. We propose the weight-dropped LSTM which uses DropConnect on hidden-to-hidden weights as a form of recurrent regularization. Further, we introduce NT-ASGD, a variant of the averaged stochastic gradient method, wherein the averaging trigger is determined using a non-monotonic condition as opposed to being tuned by the user. Using these and other regularization strategies, we achieve state-of-the-art word level perplexities on two data sets: 57.3 on Penn Treebank and 65.8 on WikiText-2. In exploring the effectiveness of a neural cache in conjunction with our proposed model, we achieve an even lower state-of-the-art perplexity of 52.8 on Penn Treebank and 52.0 on WikiText-2.

## Paper References

1. Context dependent recurrent neural network language model
2. [Tying Word Vectors and Word Classifiers - A Loss Framework for Language Modeling](2017-tying-word-vectors-and-word-classifiers-a-loss-framework-for-language-modeling.md)
3. Revisiting Activation Regularization for Language RNNs
4. [Recurrent Highway Networks](2017-recurrent-highway-networks.md)
5. [Character-Aware Neural Language Models](2016-character-aware-neural-language-models.md)
6. On the State of the Art of Evaluation in Neural Language Models
7. [Neural Architecture Search with Reinforcement Learning](2017-neural-architecture-search-with-reinforcement-learning.md)
8. [Pointer Sentinel Mixture Models](2017-pointer-sentinel-mixture-models.md)
9. Quasi-Recurrent Neural Networks
10. [Using the Output Embedding to Improve Language Models](2017-using-the-output-embedding-to-improve-language-models.md)
11. [Recurrent Batch Normalization](2017-recurrent-batch-normalization.md)
12. [A Theoretically Grounded Application of Dropout in Recurrent Neural Networks](2016-a-theoretically-grounded-application-of-dropout-in-recurrent-neural-networks.md)
13. [Recurrent neural network based language model](2010-recurrent-neural-network-based-language-model.md)
14. [Recurrent Neural Network Regularization](2014-recurrent-neural-network-regularization.md)
15. Strongly-Typed Recurrent Neural Networks
16. Query-Reduction Networks for Question Answering
17. [Zoneout - Regularizing RNNs by Randomly Preserving Hidden Activations](2017-zoneout-regularizing-rnns-by-randomly-preserving-hidden-activations.md)
18. A nonmonotone learning rate strategy for SGD training of deep neural networks
19. [On the importance of initialization and momentum in deep learning](2013-on-the-importance-of-initialization-and-momentum-in-deep-learning.md)
20. Tunable Efficient Unitary Neural Networks (EUNN) and their application to RNNs
21. [Adam - A Method for Stochastic Optimization](2015-adam-a-method-for-stochastic-optimization.md)
22. [Improving Neural Language Models with a Continuous Cache](2017-improving-neural-language-models-with-a-continuous-cache.md)
23. Unitary Evolution Recurrent Neural Networks
24. Recurrent Dropout without Memory Loss
25. [Dropout - a simple way to prevent neural networks from overfitting](2014-dropout-a-simple-way-to-prevent-neural-networks-from-overfitting.md)
26. [Accurate, Large Minibatch SGD - Training ImageNet in 1 Hour](2017-accurate-large-minibatch-sgd-training-imagenet-in-1-hour.md)
27. [Batch Normalization - Accelerating Deep Network Training by Reducing Internal Covariate Shift](2015-batch-normalization-accelerating-deep-network-training-by-reducing-internal-covariate-shift.md)
28. Full-Capacity Unitary Recurrent Neural Networks
29. Optimization Methods for Large-Scale Machine Learning
30. The Marginal Value of Adaptive Gradient Methods in Machine Learning
31. [Regularization of Neural Networks using DropConnect](2013-regularization-of-neural-networks-using-dropconnect.md)
32. Unbiasing Truncated Backpropagation Through Time
33. Connectionist Learning Procedures
34. Stochastic Gradient Descent as Approximate Bayesian Inference
35. [Moses - Open Source Toolkit for Statistical Machine Translation](2007-moses-open-source-toolkit-for-statistical-machine-translation.md)
36. [Adaptive Subgradient Methods for Online Learning and Stochastic Optimization](2010-adaptive-subgradient-methods-for-online-learning-and-stochastic-optimization.md)
37. Train faster, generalize better - Stability of stochastic gradient descent
38. Learning state representations with robotic priors
39. Low Complexity Proto-Value Function Learning from Sensory Observations with Incremental Slow Feature Analysis
40. Learning Invariance from Transformation Sequences
41. Acceleration of stochastic approximation by averaging
42. Gradient Descent Converges to Minimizers - The Case of Non-Isolated Critical Points
43. Open Source Toolkit for Statistical Machine Translation - Factored Translation Models and Lattice Decoding
