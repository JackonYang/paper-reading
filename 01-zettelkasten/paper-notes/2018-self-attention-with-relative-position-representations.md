---
title: Self-Attention with Relative Position Representations
authors:
- Peter Shaw
- Jakob Uszkoreit
- Ashish Vaswani
fieldsOfStudy:
- Computer Science
meta_key: 2018-self-attention-with-relative-position-representations
numCitedBy: 935
reading_status: TBD
ref_count: 17
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Self-Attention-with-Relative-Position-Shaw-Uszkoreit/c8efcc854d97dfc2a42b83316a2109f9d166e43f?sort=total-citations
venue: NAACL
year: 2018
---

[semanticscholar url](https://www.semanticscholar.org/paper/Self-Attention-with-Relative-Position-Shaw-Uszkoreit/c8efcc854d97dfc2a42b83316a2109f9d166e43f?sort=total-citations)

# Self-Attention with Relative Position Representations

## Abstract

Relying entirely on an attention mechanism, the Transformer introduced by Vaswani et al. (2017) achieves state-of-the-art results for machine translation. In contrast to recurrent and convolutional neural networks, it does not explicitly model relative or absolute position information in its structure. Instead, it requires adding representations of absolute positions to its inputs. In this work we present an alternative approach, extending the self-attention mechanism to efficiently consider representations of the relative positions, or distances between sequence elements. On the WMT 2014 English-to-German and English-to-French translation tasks, this approach yields improvements of 1.3 BLEU and 0.3 BLEU over absolute position representations, respectively. Notably, we observe that combining relative and absolute position representations yields no further improvement in translation quality. We describe an efficient implementation of our method and cast it as an instance of relation-aware self-attention mechanisms that can generalize to arbitrary graph-labeled inputs.

## Paper References

1. [Effective Approaches to Attention-based Neural Machine Translation](2015-effective-approaches-to-attention-based-neural-machine-translation)
2. [Attention is All you Need](2017-transformer.md)
3. [End-To-End Memory Networks](2015-end-to-end-memory-networks)
4. [Graph Attention Networks](2018-graph-attention-networks)
5. [Rethinking the Inception Architecture for Computer Vision](2016-rethinking-the-inception-architecture-for-computer-vision)
6. [Google's Neural Machine Translation System - Bridging the Gap between Human and Machine Translation](2016-google-s-neural-machine-translation-system-bridging-the-gap-between-human-and-machine-translation)
7. [Sequence to Sequence Learning with Neural Networks](2014-sequence-to-sequence-learning-with-neural-networks)
8. [Neural Machine Translation by Jointly Learning to Align and Translate](2015-neural-machine-translation-by-jointly-learning-to-align-and-translate)
9. [Convolutional Sequence to Sequence Learning](2017-convolutional-sequence-to-sequence-learning)
10. A Decomposable Attention Model for Natural Language Inference
11. [Adam - A Method for Stochastic Optimization](2015-adam-a-method-for-stochastic-optimization)
12. [Learning Phrase Representations using RNN Encoder-Decoder for Statistical Machine Translation](2014-learning-phrase-representations-using-rnn-encoder-decoder-for-statistical-machine-translation)
13. [Layer Normalization](2016-layer-normalization)
14. Neural Machine Translation in Linear Time
