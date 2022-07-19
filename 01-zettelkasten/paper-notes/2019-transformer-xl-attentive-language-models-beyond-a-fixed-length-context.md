---
title: Transformer-XL - Attentive Language Models beyond a Fixed-Length Context
authors:
- Zihang Dai
- Zhilin Yang
- Yiming Yang
- J. Carbonell
- Quoc V. Le
- R. Salakhutdinov
fieldsOfStudy:
- Computer Science
meta_key: 2019-transformer-xl-attentive-language-models-beyond-a-fixed-length-context
numCitedBy: 1789
reading_status: TBD
ref_count: 68
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Transformer-XL:-Attentive-Language-Models-beyond-a-Dai-Yang/c4744a7c2bb298e4a52289a1e085c71cc3d37bc6?sort=total-citations
venue: ACL
year: 2019
---

# Transformer-XL - Attentive Language Models beyond a Fixed-Length Context

## Abstract

Transformers have a potential of learning longer-term dependency, but are limited by a fixed-length context in the setting of language modeling. We propose a novel neural architecture Transformer-XL that enables learning dependency beyond a fixed length without disrupting temporal coherence. It consists of a segment-level recurrence mechanism and a novel positional encoding scheme. Our method not only enables capturing longer-term dependency, but also resolves the context fragmentation problem. As a result, Transformer-XL learns dependency that is 80% longer than RNNs and 450% longer than vanilla Transformers, achieves better performance on both short and long sequences, and is up to 1,800+ times faster than vanilla Transformers during evaluation. Notably, we improve the state-of-the-art results of bpc/perplexity to 0.99 on enwiki8, 1.08 on text8, 18.3 on WikiText-103, 21.8 on One Billion Word, and 54.5 on Penn Treebank (without finetuning). When trained only on WikiText-103, Transformer-XL manages to generate reasonably coherent, novel text articles with thousands of tokens. Our code, pretrained models, and hyperparameters are available in both Tensorflow and PyTorch.

## Paper References

1. Regularizing and Optimizing LSTM Language Models
2. [Language Modeling with Gated Convolutional Networks](2017-language-modeling-with-gated-convolutional-networks)
3. An Improved Relative Self-Attention Mechanism for Transformer with Application to Music Generation
4. [Character-Level Language Modeling with Deeper Self-Attention](2019-character-level-language-modeling-with-deeper-self-attention)
5. Learning Longer-term Dependencies in RNNs with Auxiliary Losses
6. Sharp Nearby, Fuzzy Far Away - How Neural Language Models Use Context
7. Recurrent Highway Networks
8. Larger-Context Language Modelling
9. An Analysis of Neural Language Modeling at Multiple Scales
10. [Attention is All you Need](2017-transformer.md)
11. TopicRNN - A Recurrent Neural Network with Long-Range Semantic Dependency
12. Multiplicative LSTM for sequence modelling
13. Tying Word Vectors and Word Classifiers - A Loss Framework for Language Modeling
14. Fast-Slow Recurrent Neural Networks
15. [Exploring the Limits of Language Modeling](2016-exploring-the-limits-of-language-modeling)
16. Breaking the Softmax Bottleneck - A High-Rank RNN Language Model
17. One billion word benchmark for measuring progress in statistical language modeling
18. [Deep Contextualized Word Representations](2018-deep-contextualized-word-representations)
19. Pointer Sentinel Mixture Models
20. A Clockwork RNN
21. Context dependent recurrent neural network language model
22. [Self-Attention with Relative Position Representations](2018-self-attention-with-relative-position-representations)
23. Fast Parametric Learning with Activation Memorization
24. [Long Short-Term Memory](1997-long-short-term-memory)
25. Topic Compositional Neural Language Model
26. Adaptive Input Representations for Neural Language Modeling
27. Skip-gram Language Modeling Using Sparse Non-negative Matrix Probability Estimation
28. [Neural Machine Translation by Jointly Learning to Align and Translate](2015-neural-machine-translation-by-jointly-learning-to-align-and-translate)
29. Independently Recurrent Neural Network (IndRNN) - Building A Longer and Deeper RNN
30. An Empirical Evaluation of Generic Convolutional and Recurrent Networks for Sequence Modeling
31. [Outrageously Large Neural Networks - The Sparsely-Gated Mixture-of-Experts Layer](2017-outrageously-large-neural-networks-the-sparsely-gated-mixture-of-experts-layer)
32. Neural Architecture Search with Reinforcement Learning
33. Using the Output Embedding to Improve Language Models
34. Recurrent Batch Normalization
35. Sparse Attentive Backtracking - Temporal CreditAssignment Through Reminding
36. Semi-supervised Sequence Learning
37. Learning Longer Memory in Recurrent Neural Networks
38. Improving Neural Language Models with a Continuous Cache
39. Document Context Language Models
40. A Neural Probabilistic Language Model
41. A Simple Way to Initialize Recurrent Networks of Rectified Linear Units
42. Hierarchical Probabilistic Neural Network Language Model
43. Efficient Neural Architecture Search via Parameter Sharing
44. A Theoretically Grounded Application of Dropout in Recurrent Neural Networks
45. Efficient softmax approximation for GPUs
46. Factorization tricks for LSTM networks
47. DARTS - Differentiable Architecture Search
48. Gradient Flow in Recurrent Nets - the Difficulty of Learning Long-Term Dependencies
49. On Multiplicative Integration with Recurrent Neural Networks
50. HyperNetworks
51. [Recurrent neural network based language model](2010-recurrent-neural-network-based-language-model)
52. [Generating Sequences With Recurrent Neural Networks](2013-generating-sequences-with-recurrent-neural-networks)
53. Hierarchical Multiscale Recurrent Neural Networks
54. Pushing the bounds of dropout
55. Sigsoftmax - Reanalysis of the Softmax Bottleneck
56. Understanding the exploding gradient problem
57. [Neural Turing Machines](2014-neural-turing-machines)
58. 5分で分かる!? 有名論文ナナメ読み：Jacob Devlin et al. - BERT - Pre-training of Deep Bidirectional Transformers for Language Understanding
59. Mesh-TensorFlow - Deep Learning for Supercomputers
60. [Improving Language Understanding by Generative Pre-Training](2018-improving-language-understanding-by-generative-pre-training)
61. Neural Machine Translation in Linear Time
62. [Memory Networks](2015-memory-networks)
63. [Recurrent Neural Network Regularization](2014-recurrent-neural-network-regularization)
