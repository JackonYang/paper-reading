---
title: SpanBERT - Improving Pre-training by Representing and Predicting Spans
authors:
- Mandar Joshi
- Danqi Chen
- Yinhan Liu
- Daniel S. Weld
- Luke Zettlemoyer
- Omer Levy
fieldsOfStudy:
- Computer Science
meta_key: 2020-spanbert-improving-pre-training-by-representing-and-predicting-spans
numCitedBy: 906
reading_status: TBD
ref_count: 68
tags:
- gen-from-ref
- other-default
- paper
venue: TACL
year: 2020
---

# SpanBERT - Improving Pre-training by Representing and Predicting Spans

## Abstract

We present SpanBERT, a pre-training method that is designed to better represent and predict spans of text. Our approach extends BERT by (1) masking contiguous random spans, rather than random tokens, and (2) training the span boundary representations to predict the entire content of the masked span, without relying on the individual token representations within it. SpanBERT consistently outperforms BERT and our better-tuned baselines, with substantial gains on span selection tasks such as question answering and coreference resolution. In particular, with the same training data and model size as BERTlarge, our single model obtains 94.6% and 88.7% F1 on SQuAD 1.1 and 2.0 respectively. We also achieve a new state of the art on the OntoNotes coreference resolution task (79.6% F1), strong performance on the TACRED relation extraction benchmark, and even gains on GLUE.1

## Paper References

1. End-to-end Neural Coreference Resolution
2. Learning Recurrent Span Representations for Extractive Question Answering
3. BERT for Coreference Resolution - Baselines and Analysis
4. [BERT - Pre-training of Deep Bidirectional Transformers for Language Understanding](2019-bert.md)
5. ERNIE - Enhanced Language Representation with Informative Entities
6. Matching the Blanks - Distributional Similarity for Relation Learning
7. [Unified Language Model Pre-training for Natural Language Understanding and Generation](2019-unified-language-model-pre-training-for-natural-language-understanding-and-generation)
8. MASS - Masked Sequence to Sequence Pre-training for Language Generation
9. CoNLL-2012 Shared Task - Modeling Multilingual Unrestricted Coreference in OntoNotes
10. [Transformer-XL - Attentive Language Models beyond a Fixed-Length Context](2019-transformer-xl-attentive-language-models-beyond-a-fixed-length-context)
11. [GLUE - A Multi-Task Benchmark and Analysis Platform for Natural Language Understanding](2018-glue-a-multi-task-benchmark-and-analysis-platform-for-natural-language-understanding)
12. [RoBERTa - A Robustly Optimized BERT Pretraining Approach](2019-roberta-a-robustly-optimized-bert-pretraining-approach)
13. Higher-Order Coreference Resolution with Coarse-to-Fine Inference
14. [Skip-Thought Vectors](2015-skip-thought-vectors)
15. [SQuAD - 100,000+ Questions for Machine Comprehension of Text](2016-squad-100-000-questions-for-machine-comprehension-of-text)
16. Jointly Predicting Predicates and Arguments in Neural Semantic Role Labeling
17. [Cross-lingual Language Model Pretraining](2019-cross-lingual-language-model-pretraining)
18. [XLNet - Generalized Autoregressive Pretraining for Language Understanding](2019-xlnet-generalized-autoregressive-pretraining-for-language-understanding)
19. [TriviaQA - A Large Scale Distantly Supervised Challenge Dataset for Reading Comprehension](2017-triviaqa-a-large-scale-distantly-supervised-challenge-dataset-for-reading-comprehension)
20. [A Broad-Coverage Challenge Corpus for Sentence Understanding through Inference](2018-a-broad-coverage-challenge-corpus-for-sentence-understanding-through-inference)
21. Position-aware Attention and Supervised Data Improve Slot Filling
22. pair2vec - Compositional Word-Pair Embeddings for Cross-Sentence Inference
23. [Attention is All you Need](2017-attention-is-all-you-need.md)
24. HuggingFace's Transformers - State-of-the-art Natural Language Processing
25. [Universal Language Model Fine-tuning for Text Classification](2018-universal-language-model-fine-tuning-for-text-classification)
26. context2vec - Learning Generic Context Embedding with Bidirectional LSTM
27. [Multi-Task Deep Neural Networks for Natural Language Understanding](2019-multi-task-deep-neural-networks-for-natural-language-understanding)
28. SearchQA - A New Q&A Dataset Augmented with Context from a Search Engine
29. Natural Questions - A Benchmark for Question Answering Research
30. HotpotQA - A Dataset for Diverse, Explainable Multi-hop Question Answering
31. [Know What You Don't Know - Unanswerable Questions for SQuAD](2018-know-what-you-don-t-know-unanswerable-questions-for-squad)
32. [Recursive Deep Models for Semantic Compositionality Over a Sentiment Treebank](2013-recursive-deep-models-for-semantic-compositionality-over-a-sentiment-treebank)
33. [SemEval-2017 Task 1 - Semantic Textual Similarity Multilingual and Crosslingual Focused Evaluation](2017-semeval-2017-task-1-semantic-textual-similarity-multilingual-and-crosslingual-focused-evaluation)
34. An efficient framework for learning sentence representations
35. The Seventh PASCAL Recognizing Textual Entailment Challenge
36. [Deep Contextualized Word Representations](2018-deep-contextualized-word-representations)
37. KERMIT - Generative Insertion-Based Modeling for Sequences
38. MRQA 2019 Shared Task - Evaluating Generalization in Reading Comprehension
39. The Winograd Schema Challenge
40. ERNIE - Enhanced Representation through Knowledge Integration
41. Blockwise Parallel Decoding for Deep Autoregressive Models
42. The Second PASCAL Recognising Textual Entailment Challenge
43. Using the Output Embedding to Improve Language Models
44. Automatically Constructing a Corpus of Sentential Paraphrases
45. [Neural Network Acceptability Judgments](2019-neural-network-acceptability-judgments)
46. The PASCAL Recognising Textual Entailment Challenge
47. A Baseline for Detecting Misclassified and Out-of-Distribution Examples in Neural Networks
48. [Adam - A Method for Stochastic Optimization](2015-adam-a-method-for-stochastic-optimization)
49. fairseq - A Fast, Extensible Toolkit for Sequence Modeling
50. [Decoupled Weight Decay Regularization](2019-decoupled-weight-decay-regularization)
51. [Layer Normalization](2016-layer-normalization)
52. Gaussian Error Linear Units (GELUs)
53. [NewsQA - A Machine Comprehension Dataset](2017-newsqa-a-machine-comprehension-dataset)
