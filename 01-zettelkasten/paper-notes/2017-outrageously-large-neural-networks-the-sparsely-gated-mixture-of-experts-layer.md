---
title: Outrageously Large Neural Networks - The Sparsely-Gated Mixture-of-Experts Layer
authors:
- Noam M. Shazeer
- Azalia Mirhoseini
- Krzysztof Maziarz
- Andy Davis
- Quoc V. Le
- Geoffrey E. Hinton
- J. Dean
fieldsOfStudy:
- Computer Science
meta_key: 2017-outrageously-large-neural-networks-the-sparsely-gated-mixture-of-experts-layer
numCitedBy: 871
reading_status: TBD
ref_count: 45
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Outrageously-Large-Neural-Networks:-The-Layer-Shazeer-Mirhoseini/510e26733aaff585d65701b9f1be7ca9d5afc586?sort=total-citations
venue: ICLR
year: 2017
---

[semanticscholar url](https://www.semanticscholar.org/paper/Outrageously-Large-Neural-Networks:-The-Layer-Shazeer-Mirhoseini/510e26733aaff585d65701b9f1be7ca9d5afc586?sort=total-citations)

# Outrageously Large Neural Networks - The Sparsely-Gated Mixture-of-Experts Layer

## Abstract

The capacity of a neural network to absorb information is limited by its number of parameters. Conditional computation, where parts of the network are active on a per-example basis, has been proposed in theory as a way of dramatically increasing model capacity without a proportional increase in computation. In practice, however, there are significant algorithmic and performance challenges. In this work, we address these challenges and finally realize the promise of conditional computation, achieving greater than 1000x improvements in model capacity with only minor losses in computational efficiency on modern GPU clusters. We introduce a Sparsely-Gated Mixture-of-Experts layer (MoE), consisting of up to thousands of feed-forward sub-networks. A trainable gating network determines a sparse combination of these experts to use for each example. We apply the MoE to the tasks of language modeling and machine translation, where model capacity is critical for absorbing the vast quantities of knowledge available in the training corpora. We present model architectures in which a MoE with up to 137 billion parameters is applied convolutionally between stacked LSTM layers. On large language modeling and machine translation benchmarks, these models achieve significantly better results than state-of-the-art at lower computational cost.

## Paper References

1. Exponentially Increasing the Capacity-to-Computation Ratio for Conditional Computation in Deep Learning
2. Learning Factored Representations in a Deep Mixture of Experts
3. Low-Rank Approximations for Conditional Feedforward Computation in Deep Neural Networks
4. Conditional Computation in Neural Networks for faster models
5. Expert Gate - Lifelong Learning with a Network of Experts
6. Dynamic Capacity Networks
7. [Batch Normalization - Accelerating Deep Network Training by Reducing Internal Covariate Shift](2015-batch-normalization-accelerating-deep-network-training-by-reducing-internal-covariate-shift)
8. [Building high-level features using large scale unsupervised learning](2013-building-high-level-features-using-large-scale-unsupervised-learning)
9. [Sequence to Sequence Learning with Neural Networks](2014-sequence-to-sequence-learning-with-neural-networks)
10. [Exploring the Limits of Language Modeling](2016-exploring-the-limits-of-language-modeling)
11. [ImageNet classification with deep convolutional neural networks](2012-alexnet.md)
12. [Adam - A Method for Stochastic Optimization](2015-adam-a-method-for-stochastic-optimization)
13. [Deep Residual Learning for Image Recognition](2015-resnet.md)
14. Long short-term memory recurrent neural network architectures for large scale acoustic modeling
15. Estimating or Propagating Gradients Through Stochastic Neurons for Conditional Computation
16. One billion word benchmark for measuring progress in statistical language modeling
17. [Effective Approaches to Attention-based Neural Machine Translation](2015-effective-approaches-to-attention-based-neural-machine-translation)
18. [Google's Neural Machine Translation System - Bridging the Gap between Human and Machine Translation](2016-google-s-neural-machine-translation-system-bridging-the-gap-between-human-and-machine-translation)
19. [TensorFlow - Large-Scale Machine Learning on Heterogeneous Distributed Systems](2016-tensorflow-large-scale-machine-learning-on-heterogeneous-distributed-systems)
20. Generative Image Modeling Using Spatial LSTMs
21. Ensemble Learning for Multi-Source Neural Machine Translation
22. Deep Speech 2 - End-to-End Speech Recognition in English and Mandarin
23. [Long Short-Term Memory](1997-long-short-term-memory)
24. [Adaptive Subgradient Methods for Online Learning and Stochastic Optimization](2010-adaptive-subgradient-methods-for-online-learning-and-stochastic-optimization)
25. [Neural Machine Translation by Jointly Learning to Align and Translate](2015-neural-machine-translation-by-jointly-learning-to-align-and-translate)
26. Adaptive Mixtures of Local Experts
27. Infinite Mixtures of Gaussian Process Experts
28. A Parallel Mixture of SVMs for Very Large Scale Problems
29. Memory-Efficient Backpropagation Through Time
30. Improved backing-off for M-gram language modeling
31. Addressing the Rare Word Problem in Neural Machine Translation
32. Distributed Gaussian Processes
33. Hierarchical Mixture of Classification Experts Uncovers Interactions between Brain Regions
34. [Under Review as a Conference Paper at Iclr 2017 Delving into Transferable Adversarial Ex- Amples and Black-box Attacks](2016-under-review-as-a-conference-paper-at-iclr-2017-delving-into-transferable-adversarial-ex-amples-and-black-box-attacks)
35. Google's Multilingual Neural Machine Translation System - Enabling Zero-Shot Translation
36. [Deep Neural Networks for Acoustic Modeling in Speech Recognition - The Shared Views of Four Research Groups](2012-deep-neural-networks-for-acoustic-modeling-in-speech-recognition-the-shared-views-of-four-research-groups)
37. Hierarchical mixtures of experts and the EM algorithm
38. Nonlinear Models Using Dirichlet Process Mixtures
39. Mixtures of Gaussian Processes
40. Edinburgh's Phrase-based Machine Translation Systems for WMT-14
41. Japanese and Korean voice search
42. [Recurrent Neural Network Regularization](2014-recurrent-neural-network-regularization)
43. Deep Sequential Neural Networks Deep Sequential Neural Networks
44. Deep Recurrent Models with Fast-Forward Connections for Neural Machine Translation
