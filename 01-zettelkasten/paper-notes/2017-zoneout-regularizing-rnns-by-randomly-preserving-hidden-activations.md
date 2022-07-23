---
title: Zoneout - Regularizing RNNs by Randomly Preserving Hidden Activations
authors:
- David Krueger
- Tegan Maharaj
- J'anos Kram'ar
- M. Pezeshki
- Nicolas Ballas
- Nan Rosemary Ke
- Anirudh Goyal
- Yoshua Bengio
- H. Larochelle
- Aaron C. Courville
- Chris Pal
fieldsOfStudy:
- Computer Science
meta_key: 2017-zoneout-regularizing-rnns-by-randomly-preserving-hidden-activations
numCitedBy: 267
reading_status: TBD
ref_count: 47
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Zoneout:-Regularizing-RNNs-by-Randomly-Preserving-Krueger-Maharaj/9f0687bcd0a7d7fc91b8c5d36c003a38b8853105?sort=total-citations
venue: ICLR
year: 2017
---

[semanticscholar url](https://www.semanticscholar.org/paper/Zoneout:-Regularizing-RNNs-by-Randomly-Preserving-Krueger-Maharaj/9f0687bcd0a7d7fc91b8c5d36c003a38b8853105?sort=total-citations)

# Zoneout - Regularizing RNNs by Randomly Preserving Hidden Activations

## Abstract

We propose zoneout, a novel method for regularizing RNNs. At each timestep, zoneout stochastically forces some hidden units to maintain their previous values. Like dropout, zoneout uses random noise to train a pseudo-ensemble, improving generalization. But by preserving instead of dropping hidden units, gradient information and state information are more readily propagated through time, as in feedforward stochastic depth networks. We perform an empirical investigation of various RNN regularizers, and find that zoneout gives significant performance improvements across tasks. We achieve competitive results with relatively simple models in character- and word-level language modelling on the Penn Treebank and Text8 datasets, and combining with recurrent batch normalization yields state-of-the-art results on permuted sequential MNIST.

## Paper References

1. Regularizing RNNs by Stabilizing Activations
2. Surprisal-Driven Zoneout
3. [Recurrent Batch Normalization](2017-recurrent-batch-normalization.md)
4. Learning to Forget - Continual Prediction with LSTM
5. Swapout - Learning an ensemble of deep architectures
6. RNNDROP - A novel dropout for RNNS in ASR
7. Recurrent Dropout without Memory Loss
8. A Clockwork RNN
9. A Simple Way to Initialize Recurrent Networks of Rectified Linear Units
10. Dropout Improves Recurrent Neural Networks for Handwriting Recognition
11. Learning with Pseudo-Ensembles
12. Learning Longer Memory in Recurrent Neural Networks
13. [A Theoretically Grounded Application of Dropout in Recurrent Neural Networks](2016-a-theoretically-grounded-application-of-dropout-in-recurrent-neural-networks.md)
14. [Recurrent Neural Network Regularization](2014-recurrent-neural-network-regularization.md)
15. On Fast Dropout and its Applicability to Recurrent Networks
16. How to Construct Deep Recurrent Neural Networks
17. Understanding the exploding gradient problem
18. Fast dropout training
19. [Long Short-Term Memory](1997-long-short-term-memory.md)
20. Describing Videos by Exploiting Temporal Structure
21. Hierarchical Recurrent Neural Networks for Long-Term Dependencies
22. [Improving neural networks by preventing co-adaptation of feature detectors](2012-improving-neural-networks-by-preventing-co-adaptation-of-feature-detectors.md)
23. Learning long-term dependencies with gradient descent is difficult
24. [Hierarchical Multiscale Recurrent Neural Networks](2017-hierarchical-multiscale-recurrent-neural-networks.md)
25. [Deep Networks with Stochastic Depth](2016-deep-networks-with-stochastic-depth.md)
26. [Estimating or Propagating Gradients Through Stochastic Neurons for Conditional Computation](2013-estimating-or-propagating-gradients-through-stochastic-neurons-for-conditional-computation.md)
27. [Adam - A Method for Stochastic Optimization](2015-adam-a-method-for-stochastic-optimization.md)
28. [Dropout - a simple way to prevent neural networks from overfitting](2014-dropout-a-simple-way-to-prevent-neural-networks-from-overfitting.md)
29. EESEN - End-to-end speech recognition using deep RNN models and WFST-based decoding
30. [Character-Aware Neural Language Models](2016-character-aware-neural-language-models.md)
31. [Layer Normalization](2016-layer-normalization.md)
32. [BinaryConnect - Training Deep Neural Networks with binary weights during propagations](2015-binaryconnect-training-deep-neural-networks-with-binary-weights-during-propagations.md)
33. Blocks and Fuel - Frameworks for deep learning
34. [Deep Residual Learning for Image Recognition](2016-deep-residual-learning-for-image-recognition.md)
35. [Neural Machine Translation by Jointly Learning to Align and Translate](2015-neural-machine-translation-by-jointly-learning-to-align-and-translate.md)
36. [Under Review as a Conference Paper at Iclr 2017 Delving into Transferable Adversarial Ex- Amples and Black-box Attacks](2016-under-review-as-a-conference-paper-at-iclr-2017-delving-into-transferable-adversarial-ex-amples-and-black-box-attacks.md)
37. [Theano - A Python framework for fast computation of mathematical expressions](2016-theano-a-python-framework-for-fast-computation-of-mathematical-expressions.md)
38. Building a Large Annotated Corpus of English - The Penn Treebank
39. Untersuchungen zu dynamischen neuronalen Netzen
40. Test Data
