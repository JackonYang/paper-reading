---
title: Efficient Neural Architecture Search via Parameter Sharing
authors:
- Hieu Pham
- M. Guan
- Barret Zoph
- Quoc V. Le
- J. Dean
fieldsOfStudy:
- Computer Science
meta_key: 2018-efficient-neural-architecture-search-via-parameter-sharing
numCitedBy: 1735
reading_status: TBD
ref_count: 53
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Efficient-Neural-Architecture-Search-via-Parameter-Pham-Guan/fe9b8aac9fa3bfd9724db5a881a578e471e612d7?sort=total-citations
venue: ICML
year: 2018
---

[semanticscholar url](https://www.semanticscholar.org/paper/Efficient-Neural-Architecture-Search-via-Parameter-Pham-Guan/fe9b8aac9fa3bfd9724db5a881a578e471e612d7?sort=total-citations)

# Efficient Neural Architecture Search via Parameter Sharing

## Abstract

We propose Efficient Neural Architecture Search (ENAS), a fast and inexpensive approach for automatic model design. In ENAS, a controller learns to discover neural network architectures by searching for an optimal subgraph within a large computational graph. The controller is trained with policy gradient to select a subgraph that maximizes the expected reward on the validation set. Meanwhile the model corresponding to the selected subgraph is trained to minimize a canonical cross entropy loss. Thanks to parameter sharing between child models, ENAS is fast: it delivers strong empirical performances using much fewer GPU-hours than all existing automatic model design approaches, and notably, 1000x less expensive than standard Neural Architecture Search. On the Penn Treebank dataset, ENAS discovers a novel architecture that achieves a test perplexity of 55.8, establishing a new state-of-the-art among all methods without post-training processing. On the CIFAR-10 dataset, ENAS designs novel architectures that achieve a test error of 2.89%, which is on par with NASNet (Zoph et al., 2018), whose test error is 2.65%.

## Paper References

1. [SMASH - One-Shot Model Architecture Search through HyperNetworks](2018-smash-one-shot-model-architecture-search-through-hypernetworks.md)
2. [Efficient Architecture Search by Network Transformation](2018-efficient-architecture-search-by-network-transformation.md)
3. [Neural Architecture Search with Reinforcement Learning](2017-neural-architecture-search-with-reinforcement-learning.md)
4. Learning Time-Efficient Deep Architectures with Budgeted Super Networks
5. Accelerating Neural Architecture Search using Performance Prediction
6. [Hierarchical Representations for Efficient Architecture Search](2018-hierarchical-representations-for-efficient-architecture-search.md)
7. [DeepArchitect - Automatically Designing and Training Deep Architectures](2017-deeparchitect-automatically-designing-and-training-deep-architectures.md)
8. [Designing Neural Network Architectures using Reinforcement Learning](2017-designing-neural-network-architectures-using-reinforcement-learning.md)
9. Neural Optimizer Search with Reinforcement Learning
10. Practical Network Blocks Design with Q-Learning
11. Peephole - Predicting Network Performance Before Training
12. Capacity and Trainability in Recurrent Neural Networks
13. [Regularizing and Optimizing LSTM Language Models](2018-regularizing-and-optimizing-lstm-language-models.md)
14. [Recurrent Highway Networks](2017-recurrent-highway-networks.md)
15. [Learning Transferable Architectures for Scalable Image Recognition](2018-learning-transferable-architectures-for-scalable-image-recognition.md)
16. [Batch Normalization - Accelerating Deep Network Training by Reducing Internal Covariate Shift](2015-batch-normalization-accelerating-deep-network-training-by-reducing-internal-covariate-shift.md)
17. [Network In Network](2014-network-in-network.md)
18. [Large-Scale Evolution of Image Classifiers](2017-large-scale-evolution-of-image-classifiers.md)
19. [Adam - A Method for Stochastic Optimization](2015-adam-a-method-for-stochastic-optimization.md)
20. On the State of the Art of Evaluation in Neural Language Models
21. [Delving Deep into Rectifiers - Surpassing Human-Level Performance on ImageNet Classification](2015-delving-deep-into-rectifiers-surpassing-human-level-performance-on-imagenet-classification.md)
22. [Improving Neural Language Models with a Continuous Cache](2017-improving-neural-language-models-with-a-continuous-cache.md)
23. Neural Combinatorial Optimization with Reinforcement Learning
24. [Improved Regularization of Convolutional Neural Networks with Cutout](2017-improved-regularization-of-convolutional-neural-networks-with-cutout.md)
25. Dynamic Evaluation of Neural Sequence Models
26. [A Theoretically Grounded Application of Dropout in Recurrent Neural Networks](2016-a-theoretically-grounded-application-of-dropout-in-recurrent-neural-networks.md)
27. [Identity Mappings in Deep Residual Networks](2016-identity-mappings-in-deep-residual-networks.md)
28. Transfer Learning for Low-Resource Neural Machine Translation
29. [Densely Connected Convolutional Networks](2017-densely-connected-convolutional-networks.md)
30. [Deep Residual Learning for Image Recognition](2016-deep-residual-learning-for-image-recognition.md)
31. Multi-task Sequence to Sequence Learning
32. [Convolutional Neural Fabrics](2016-convolutional-neural-fabrics.md)
33. [FractalNet - Ultra-Deep Neural Networks without Residuals](2017-fractalnet-ultra-deep-neural-networks-without-residuals.md)
34. [CNN Features Off-the-Shelf - An Astounding Baseline for Recognition](2014-cnn-features-off-the-shelf-an-astounding-baseline-for-recognition.md)
35. Breaking the Softmax Bottleneck - A High-Rank RNN Language Model
36. [Learning Multiple Layers of Features from Tiny Images](2009-learning-multiple-layers-of-features-from-tiny-images.md)
37. [SGDR - Stochastic Gradient Descent with Warm Restarts](2017-sgdr-stochastic-gradient-descent-with-warm-restarts.md)
38. [Tying Word Vectors and Word Classifiers - A Loss Framework for Language Modeling](2017-tying-word-vectors-and-word-classifiers-a-loss-framework-for-language-modeling.md)
39. Gradient Estimation Using Stochastic Computation Graphs
40. [Recurrent neural network based language model](2010-recurrent-neural-network-based-language-model.md)
41. [Long Short-Term Memory](1997-long-short-term-memory.md)
42. [Xception - Deep Learning with Depthwise Separable Convolutions](2017-xception-deep-learning-with-depthwise-separable-convolutions.md)
43. [Recurrent Neural Network Regularization](2014-recurrent-neural-network-regularization.md)
44. [Simple statistical gradient-following algorithms for connectionist reinforcement learning](2004-simple-statistical-gradient-following-algorithms-for-connectionist-reinforcement-learning.md)
45. Shake-Shake regularization of 3-branch residual networks
46. The Penn Treebank - Annotating Predicate Argument Structure
47. A method for solving the convex programming problem with convergence rate O(1/k^2)
48. Recurrent Neural Networkに基づく日常生活行動認識
