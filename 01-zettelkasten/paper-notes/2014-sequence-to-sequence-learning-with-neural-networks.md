---
title: Sequence to Sequence Learning with Neural Networks
authors:
- Ilya Sutskever
- Oriol Vinyals
- Quoc V. Le
fieldsOfStudy:
- Computer Science
meta_key: 2014-sequence-to-sequence-learning-with-neural-networks
numCitedBy: 14964
reading_status: TBD
ref_count: 56
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Sequence-to-Sequence-Learning-with-Neural-Networks-Sutskever-Vinyals/cea967b59209c6be22829699f05b8b1ac4dc092d?sort=total-citations
venue: NIPS
year: 2014
---

[semanticscholar url](https://www.semanticscholar.org/paper/Sequence-to-Sequence-Learning-with-Neural-Networks-Sutskever-Vinyals/cea967b59209c6be22829699f05b8b1ac4dc092d?sort=total-citations)

# Sequence to Sequence Learning with Neural Networks

## Abstract

Deep Neural Networks (DNNs) are powerful models that have achieved excellent performance on difficult learning tasks. Although DNNs work well whenever large labeled training sets are available, they cannot be used to map sequences to sequences. In this paper, we present a general end-to-end approach to sequence learning that makes minimal assumptions on the sequence structure. Our method uses a multilayered Long Short-Term Memory (LSTM) to map the input sequence to a vector of a fixed dimensionality, and then another deep LSTM to decode the target sequence from the vector. Our main result is that on an English to French translation task from the WMT-14 dataset, the translations produced by the LSTM achieve a BLEU score of 34.8 on the entire test set, where the LSTM's BLEU score was penalized on out-of-vocabulary words. Additionally, the LSTM did not have difficulty on long sentences. For comparison, a phrase-based SMT system achieves a BLEU score of 33.3 on the same dataset. When we used the LSTM to rerank the 1000 hypotheses produced by the aforementioned SMT system, its BLEU score increases to 36.5, which is close to the previous state of the art. The LSTM also learned sensible phrase and sentence representations that are sensitive to word order and are relatively invariant to the active and the passive voice. Finally, we found that reversing the order of the words in all source sentences (but not target sentences) improved the LSTM's performance markedly, because doing so introduced many short term dependencies between the source and the target sentence which made the optimization problem easier.

## Paper References

1. Sequence Transduction with Recurrent Neural Networks
2. [LSTM Neural Networks for Language Modeling](2012-lstm-neural-networks-for-language-modeling)
3. [Neural Machine Translation by Jointly Learning to Align and Translate](2015-neural-machine-translation-by-jointly-learning-to-align-and-translate)
4. A Neural Probabilistic Language Model
5. [Connectionist temporal classification - labelling unsegmented sequence data with recurrent neural networks](2006-connectionist-temporal-classification-labelling-unsegmented-sequence-data-with-recurrent-neural-networks)
6. [Context-Dependent Pre-Trained Deep Neural Networks for Large-Vocabulary Speech Recognition](2012-context-dependent-pre-trained-deep-neural-networks-for-large-vocabulary-speech-recognition)
7. Joint Language and Translation Modeling with Recurrent Neural Networks
8. [Learning Phrase Representations using RNN Encoder-Decoder for Statistical Machine Translation](2014-learning-phrase-representations-using-rnn-encoder-decoder-for-statistical-machine-translation)
9. Learning long-term dependencies with gradient descent is difficult
10. Statistical Language Models Based on Neural Networks
11. [Recurrent neural network based language model](2010-recurrent-neural-network-based-language-model)
12. Multilingual Distributed Representations without Word Alignment
13. [Long Short-Term Memory](1997-long-short-term-memory)
14. [Recurrent Continuous Translation Models](2013-recurrent-continuous-translation-models)
15. [ImageNet classification with deep convolutional neural networks](2012-alexnet.md)
16. [Efficient Estimation of Word Representations in Vector Space](2013-efficient-estimation-of-word-representations-in-vector-space)
17. [Building high-level features using large scale unsupervised learning](2013-building-high-level-features-using-large-scale-unsupervised-learning)
18. [Generating Sequences With Recurrent Neural Networks](2013-generating-sequences-with-recurrent-neural-networks)
19. Overcoming the Curse of Sentence Length for Neural Machine Translation using Automatic Segmentation
20. [Deep Neural Networks for Acoustic Modeling in Speech Recognition](2012-deep-neural-networks-for-acoustic-modeling-in-speech-recognition)
21. Fast and Robust Neural Network Joint Models for Statistical Machine Translation
22. [Gradient-based learning applied to document recognition](1998-lenet5.md)
23. [Multi-column deep neural networks for image classification](2012-multi-column-deep-neural-networks-for-image-classification)
24. Edinburgh's Phrase-based Machine Translation Systems for WMT-14
25. Learning representations by back-propagating errors
26. [On the difficulty of training recurrent neural networks](2013-on-the-difficulty-of-training-recurrent-neural-networks)
27. Gradient Flow in Recurrent Nets - the Difficulty of Learning Long-Term Dependencies
28. [DeepFace - Closing the Gap to Human-Level Performance in Face Verification](2014-deepface-closing-the-gap-to-human-level-performance-in-face-verification)
29. LIUM's SMT Machine Translation Systems for WMT 2011
30. LSTM can Solve Hard Long Time Lag Problems
31. Backpropagation Through Time - What It Does and How to Do It
32. [Bleu - a Method for Automatic Evaluation of Machine Translation](2002-bleu-a-method-for-automatic-evaluation-of-machine-translation)
33. On Small Depth Threshold Circuits
34. H.
35. K
36. I and J
37. Untersuchungen zu dynamischen neuronalen Netzen
38. LIUM's SMT Machine Translation Systems for WMT 2012
