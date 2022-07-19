---
title: Google's Neural Machine Translation System - Bridging the Gap between Human and Machine Translation
authors:
- Yonghui Wu
- M. Schuster
- Z. Chen
- Quoc V. Le
- Mohammad Norouzi
- Wolfgang Macherey
- M. Krikun
- Yuan Cao
- Qin Gao
- Klaus Macherey
- J. Klingner
- Apurva Shah
- Melvin Johnson
- Xiaobing Liu
- Lukasz Kaiser
- Stephan Gouws
- Y. Kato
- Taku Kudo
- H. Kazawa
- K. Stevens
- George Kurian
- Nishant Patil
- Wei Wang
- C. Young
- Jason R. Smith
- Jason Riesa
- Alex Rudnick
- Oriol Vinyals
- G. Corrado
- Macduff Hughes
- J. Dean
fieldsOfStudy:
- Computer Science
meta_key: 2016-google-s-neural-machine-translation-system-bridging-the-gap-between-human-and-machine-translation
numCitedBy: 4687
reading_status: TBD
ref_count: 65
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Google's-Neural-Machine-Translation-System:-the-Gap-Wu-Schuster/dbde7dfa6cae81df8ac19ef500c42db96c3d1edd?sort=total-citations
venue: ArXiv
year: 2016
---

# Google's Neural Machine Translation System - Bridging the Gap between Human and Machine Translation

## Abstract

Neural Machine Translation (NMT) is an end-to-end learning approach for automated translation, with the potential to overcome many of the weaknesses of conventional phrase-based translation systems. Unfortunately, NMT systems are known to be computationally expensive both in training and in translation inference. Also, most NMT systems have difficulty with rare words. These issues have hindered NMT's use in practical deployments and services, where both accuracy and speed are essential. In this work, we present GNMT, Google's Neural Machine Translation system, which attempts to address many of these issues. Our model consists of a deep LSTM network with 8 encoder and 8 decoder layers using attention and residual connections. To improve parallelism and therefore decrease training time, our attention mechanism connects the bottom layer of the decoder to the top layer of the encoder. To accelerate the final translation speed, we employ low-precision arithmetic during inference computations. To improve handling of rare words, we divide words into a limited set of common sub-word units ("wordpieces") for both input and output. This method provides a good balance between the flexibility of "character"-delimited models and the efficiency of "word"-delimited models, naturally handles translation of rare words, and ultimately improves the overall accuracy of the system. Our beam search technique employs a length-normalization procedure and uses a coverage penalty, which encourages generation of an output sentence that is most likely to cover all the words in the source sentence. On the WMT'14 English-to-French and English-to-German benchmarks, GNMT achieves competitive results to state-of-the-art. Using a human side-by-side evaluation on a set of isolated simple sentences, it reduces translation errors by an average of 60% compared to Google's phrase-based production system.

## Paper References

1. Addressing the Rare Word Problem in Neural Machine Translation
2. [Neural Machine Translation by Jointly Learning to Align and Translate](2015-neural-machine-translation-by-jointly-learning-to-align-and-translate)
3. [Neural Machine Translation of Rare Words with Subword Units](2016-neural-machine-translation-of-rare-words-with-subword-units)
4. [Effective Approaches to Attention-based Neural Machine Translation](2015-effective-approaches-to-attention-based-neural-machine-translation)
5. Achieving Open Vocabulary Neural Machine Translation with Hybrid Word-Character Models
6. On Using Very Large Target Vocabulary for Neural Machine Translation
7. A Character-level Decoder without Explicit Segmentation for Neural Machine Translation
8. Character-based Neural Machine Translation
9. Coverage-based Neural Machine Translation
10. [Sequence to Sequence Learning with Neural Networks](2014-sequence-to-sequence-learning-with-neural-networks)
11. Multi-Task Learning for Multiple Language Translation
12. Pointing the Unknown Words
13. Multi-task Sequence to Sequence Learning
14. [Recurrent Continuous Translation Models](2013-recurrent-continuous-translation-models)
15. Edinburgh's Phrase-based Machine Translation Systems for WMT-14
16. Sequence Level Training with Recurrent Neural Networks
17. Minimum Risk Training for Neural Machine Translation
18. [Learning Phrase Representations using RNN Encoder-Decoder for Statistical Machine Translation](2014-learning-phrase-representations-using-rnn-encoder-decoder-for-statistical-machine-translation)
19. A Statistical Approach to Language Translation
20. Fast and Robust Neural Network Joint Models for Statistical Machine Translation
21. [Statistical Phrase-Based Translation](2003-statistical-phrase-based-translation)
22. TensorFlow - A system for large-scale machine learning
23. N-gram Counts and Language Models from the Common Crawl
24. Learning to Forget - Continual Prediction with LSTM
25. Deep Compression - Compressing Deep Neural Network with Pruning, Trained Quantization and Huffman Coding
26. The Mathematics of Statistical Machine Translation - Parameter Estimation
27. [Long Short-Term Memory](1997-long-short-term-memory)
28. [Adam - A Method for Stochastic Optimization](2015-adam-a-method-for-stochastic-optimization)
29. Japanese and Korean voice search
30. Bidirectional recurrent neural networks
31. [Deep Residual Learning for Image Recognition](2015-resnet.md)
32. Gradient Flow in Recurrent Nets - the Difficulty of Learning Long-Term Dependencies
33. Learning Recursive Distributed Representations for Holistic Computation
34. Reward Augmented Maximum Likelihood for Neural Structured Prediction
35. [Large Scale Distributed Deep Networks](2012-large-scale-distributed-deep-networks)
36. Deep Learning with Limited Numerical Precision
37. The Cascade-Correlation Learning Architecture
38. Quantized Convolutional Neural Networks for Mobile Devices
39. Ternary Weight Networks
40. Understanding the exploding gradient problem
41. A Statistical Approach to Machine Translation
42. Deep Recurrent Models with Fast-Forward Connections for Neural Machine Translation
43. [Recurrent Neural Network Regularization](2014-recurrent-neural-network-regularization)
