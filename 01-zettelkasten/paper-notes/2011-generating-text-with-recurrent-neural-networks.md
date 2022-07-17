---
title: Generating Text with Recurrent Neural Networks
authors:
- Ilya Sutskever
- James Martens
- Geoffrey E. Hinton
fieldsOfStudy:
- Computer Science
meta_key: 2011-generating-text-with-recurrent-neural-networks
numCitedBy: 1258
reading_status: TBD
ref_count: 30
tags:
- gen-from-ref
- paper
venue: ICML
year: 2011
---

# Generating Text with Recurrent Neural Networks

## Abstract

Recurrent Neural Networks (RNNs) are very powerful sequence models that do not enjoy widespread use because it is extremely difficult to train them properly. Fortunately, recent advances in Hessian-free optimization have been able to overcome the difficulties associated with training RNNs, making it possible to apply them successfully to challenging sequence problems. In this paper we demonstrate the power of RNNs trained with the new Hessian-Free optimizer (HF) by applying them to character-level language modeling tasks. The standard RNN architecture, while effective, is not ideally suited for such tasks, so we introduce a new RNN variant that uses multiplicative (or "gated") connections which allow the current input character to determine the transition matrix from one hidden state vector to the next. After training the multiplicative RNN with the HF optimizer for five days on 8 high-end Graphics Processing Units, we were able to surpass the performance of the best previous single method for character-level language modeling – a hierarchical non-parametric sequence model. To our knowledge this represents the largest recurrent neural network application to date.

## Paper References

1. Learning Recurrent Neural Networks with Hessian-Free Optimization
2. [Recurrent neural network based language model](2010-recurrent-neural-network-based-language-model)
3. Learning long-term dependencies with gradient descent is difficult
4. A Scalable Hierarchical Distributed Language Model
5. [Long Short-Term Memory](1997-long-short-term-memory)
6. Learning representations by back-propagating errors
7. Offline Handwriting Recognition with Multidimensional Recurrent Neural Networks
8. Factored conditional restricted Boltzmann Machines for modeling motion style
9. A stochastic memoizer for sequence data
10. Backpropagation Through Time - What It Does and How to Do It
11. An application of recurrent nets to phone probability estimation
12. Deep learning via Hessian-free optimization
13. Learning representations by backpropagating errors
14. Improving the prediction of protein secondary structure in three and eight classes using recurrent neural networks and profiles
15. Adaptive weighing of context models for lossless data compression
16. The BellKor solution to the Netflix Prize
17. Lossless Compression Based on the Sequence Memoizer
18. CUDAMat - a CUDA-based matrix class for Python
19. Harnessing Nonlinearity - Predicting Chaotic Systems and Saving Energy in Wireless Communication
20. Observable Operator Models for Discrete Stochastic Time Series
21. Dasher-a data entry interface using continuous gestures and language models
22. Arithmetic Coding
23. Dynamic bayesian networks - representation, inference and learning
24. Untersuchungen zu dynamischen neuronalen Netzen
