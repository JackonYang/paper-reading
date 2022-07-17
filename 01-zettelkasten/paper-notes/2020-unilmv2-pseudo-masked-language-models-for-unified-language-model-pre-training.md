---
title: UniLMv2 - Pseudo-Masked Language Models for Unified Language Model Pre-Training
authors:
- Hangbo Bao
- Li Dong
- Furu Wei
- Wenhui Wang
- Nan Yang
- Xiaodong Liu
- Yu Wang
- Songhao Piao
- Jianfeng Gao
- Ming Zhou
- H. Hon
fieldsOfStudy:
- Computer Science
meta_key: 2020-unilmv2-pseudo-masked-language-models-for-unified-language-model-pre-training
numCitedBy: 173
reading_status: TBD
ref_count: 47
tags:
- gen-from-ref
- paper
venue: ICML
year: 2020
---

# UniLMv2 - Pseudo-Masked Language Models for Unified Language Model Pre-Training

## Abstract

We propose to pre-train a unified language model for both autoencoding and partially autoregressive language modeling tasks using a novel training procedure, referred to as a pseudo-masked language model (PMLM). Given an input text with masked tokens, we rely on conventional masks to learn inter-relations between corrupted tokens and context via autoencoding, and pseudo masks to learn intra-relations between masked spans via partially autoregressive modeling. With well-designed position embeddings and self-attention masks, the context encodings are reused to avoid redundant computation. Moreover, conventional masks used for autoencoding provide global masking information, so that all the position embeddings are accessible in partially autoregressive language modeling. In addition, the two tasks pre-train a unified language model as a bidirectional encoder and a sequence-to-sequence decoder, respectively. Our experiments show that the unified language models pre-trained using PMLM achieve new state-of-the-art results on a wide range of natural language understanding and generation tasks across several widely used benchmarks.

## Paper References

1. [Unified Language Model Pre-training for Natural Language Understanding and Generation](2019-unified-language-model-pre-training-for-natural-language-understanding-and-generation)
2. [XLNet - Generalized Autoregressive Pretraining for Language Understanding](2019-xlnet-generalized-autoregressive-pretraining-for-language-understanding)
3. MASS - Masked Sequence to Sequence Pre-training for Language Generation
4. Cross-Lingual Natural Language Generation via Pre-Training
5. [BERT - Pre-training of Deep Bidirectional Transformers for Language Understanding](2019-bert-pre-training-of-deep-bidirectional-transformers-for-language-understanding)
6. BART - Denoising Sequence-to-Sequence Pre-training for Natural Language Generation, Translation, and Comprehension
7. Text Summarization with Pretrained Encoders
8. [Attention is All you Need](2017-attention-is-all-you-need)
9. [ALBERT - A Lite BERT for Self-supervised Learning of Language Representations](2020-albert-a-lite-bert-for-self-supervised-learning-of-language-representations)
10. [Exploring the Limits of Transfer Learning with a Unified Text-to-Text Transformer](2020-exploring-the-limits-of-transfer-learning-with-a-unified-text-to-text-transformer)
11. Paragraph-level Neural Question Generation with Maxout Pointer and Gated Self-attention Networks
12. [GLUE - A Multi-Task Benchmark and Analysis Platform for Natural Language Understanding](2018-glue-a-multi-task-benchmark-and-analysis-platform-for-natural-language-understanding)
13. [Deep Contextualized Word Representations](2018-deep-contextualized-word-representations)
14. [Google's Neural Machine Translation System - Bridging the Gap between Human and Machine Translation](2016-google-s-neural-machine-translation-system-bridging-the-gap-between-human-and-machine-translation)
15. Get To The Point - Summarization with Pointer-Generator Networks
16. [Recursive Deep Models for Semantic Compositionality Over a Sentiment Treebank](2013-recursive-deep-models-for-semantic-compositionality-over-a-sentiment-treebank)
17. A Simple Method for Commonsense Reasoning
18. [SpanBERT - Improving Pre-training by Representing and Predicting Spans](2020-spanbert-improving-pre-training-by-representing-and-predicting-spans)
19. [SemEval-2017 Task 1 - Semantic Textual Similarity Multilingual and Crosslingual Focused Evaluation](2017-semeval-2017-task-1-semantic-textual-similarity-multilingual-and-crosslingual-focused-evaluation)
20. [RoBERTa - A Robustly Optimized BERT Pretraining Approach](2019-roberta-a-robustly-optimized-bert-pretraining-approach)
21. [Rethinking the Inception Architecture for Computer Vision](2016-rethinking-the-inception-architecture-for-computer-vision)
22. [A Broad-Coverage Challenge Corpus for Sentence Understanding through Inference](2018-a-broad-coverage-challenge-corpus-for-sentence-understanding-through-inference)
23. Don't Give Me the Details, Just the Summary! Topic-Aware Convolutional Neural Networks for Extreme Summarization
24. Harvesting Paragraph-level Question-Answer Pairs from Wikipedia
25. Addressing Semantic Drift in Question Generation for Semi-Supervised Question Answering
26. [Adam - A Method for Stochastic Optimization](2015-adam-a-method-for-stochastic-optimization)
27. [Aligning Books and Movies - Towards Story-Like Visual Explanations by Watching Movies and Reading Books](2015-aligning-books-and-movies-towards-story-like-visual-explanations-by-watching-movies-and-reading-books)
28. [Know What You Don't Know - Unanswerable Questions for SQuAD](2018-know-what-you-don-t-know-unanswerable-questions-for-squad)
29. [Neural Network Acceptability Judgments](2019-neural-network-acceptability-judgments)
30. The Sixth PASCAL Recognizing Textual Entailment Challenge
31. [SQuAD - 100,000+ Questions for Machine Comprehension of Text](2016-squad-100-000-questions-for-machine-comprehension-of-text)
32. The Seventh PASCAL Recognizing Textual Entailment Challenge
33. Automatically Constructing a Corpus of Sentential Paraphrases
34. [ROUGE - A Package for Automatic Evaluation of Summaries](2004-rouge-a-package-for-automatic-evaluation-of-summaries)
35. [Bleu - a Method for Automatic Evaluation of Machine Translation](2002-bleu-a-method-for-automatic-evaluation-of-machine-translation)
36. The Second PASCAL Recognising Textual Entailment Challenge
37. The PASCAL Recognising Textual Entailment Challenge
38. “Cloze Procedure” - A New Tool for Measuring Readability
39. [Improving Language Understanding by Generative Pre-Training](2018-improving-language-understanding-by-generative-pre-training)
40. The Third PASCAL Recognizing Textual Entailment Challenge
41. [METEOR - An Automatic Metric for MT Evaluation with Improved Correlation with Human Judgments](2005-meteor-an-automatic-metric-for-mt-evaluation-with-improved-correlation-with-human-judgments)
