---
title: BERT4Rec - Sequential Recommendation with Bidirectional Encoder Representations from Transformer
authors:
- Fei Sun
- Jun Liu
- Jian Wu
- Changhua Pei
- Xiao Lin
- Wenwu Ou
- Peng Jiang
fieldsOfStudy:
- Computer Science
meta_key: 2019-bert4rec-sequential-recommendation-with-bidirectional-encoder-representations-from-transformer
numCitedBy: 510
reading_status: TBD
ref_count: 61
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/BERT4Rec:-Sequential-Recommendation-with-Encoder-Sun-Liu/690edf44e8739fd80bdfb76f40c9a4a222f3bba8?sort=total-citations
venue: CIKM
year: 2019
---

[semanticscholar url](https://www.semanticscholar.org/paper/BERT4Rec:-Sequential-Recommendation-with-Encoder-Sun-Liu/690edf44e8739fd80bdfb76f40c9a4a222f3bba8?sort=total-citations)

# BERT4Rec - Sequential Recommendation with Bidirectional Encoder Representations from Transformer

## Abstract

Modeling users' dynamic preferences from their historical behaviors is challenging and crucial for recommendation systems. Previous methods employ sequential neural networks to encode users' historical interactions from left to right into hidden representations for making recommendations. Despite their effectiveness, we argue that such left-to-right unidirectional models are sub-optimal due to the limitations including: \begin enumerate* [label=series\itshape\alph*\upshape)] \item unidirectional architectures restrict the power of hidden representation in users' behavior sequences; \item they often assume a rigidly ordered sequence which is not always practical. \end enumerate* To address these limitations, we proposed a sequential recommendation model called BERT4Rec, which employs the deep bidirectional self-attention to model user behavior sequences. To avoid the information leakage and efficiently train the bidirectional model, we adopt the Cloze objective to sequential recommendation, predicting the random masked items in the sequence by jointly conditioning on their left and right context. In this way, we learn a bidirectional representation model to make recommendations by allowing each item in user historical behaviors to fuse information from both left and right sides. Extensive experiments on four benchmark datasets show that our model outperforms various state-of-the-art sequential models consistently.

## Paper References

1. Self-Attentive Sequential Recommendation
2. Improving Sequential Recommendation with Knowledge-Enhanced Memory Networks
3. Fusing Similarity Models with Markov Chains for Sparse Sequential Recommendation
4. Personalized Top-N Sequential Recommendation via Convolutional Sequence Embedding
5. Neural Attentive Session-based Recommendation
6. [BERT - Pre-training of Deep Bidirectional Transformers for Language Understanding](2019-bert-pre-training-of-deep-bidirectional-transformers-for-language-understanding.md)
7. A Dynamic Recurrent Model for Next Basket Recommendation
8. Translation-based Recommendation
9. Session-based Recommendations with Recurrent Neural Networks
10. Deep content-based music recommendation
11. STAMP - Short-Term Attention/Memory Priority Model for Session-based Recommendation
12. Neural Collaborative Filtering
13. [Attention is All you Need](2017-attention-is-all-you-need.md)
14. Sequential User-based Recurrent Neural Network Recommendations
15. Convolutional Matrix Factorization for Document Context-Aware Recommendation
16. Collaborative Deep Learning for Recommender Systems
17. Personalizing Session-based Recommendations with Hierarchical Recurrent Neural Networks
18. [Self-Attention with Relative Position Representations](2018-self-attention-with-relative-position-representations.md)
19. Recurrent Recommender Networks
20. Visually-Aware Fashion Recommendation and Design with Generative Image Models
21. Collaborative Denoising Auto-Encoders for Top-N Recommender Systems
22. Factorizing personalized Markov chains for next-basket recommendation
23. [BPR - Bayesian Personalized Ranking from Implicit Feedback](2009-bpr-bayesian-personalized-ranking-from-implicit-feedback.md)
24. Recurrent Neural Networks with Top-k Gains for Session-based Recommendations
25. [Factorization meets the neighborhood - a multifaceted collaborative filtering model](2008-factorization-meets-the-neighborhood-a-multifaceted-collaborative-filtering-model.md)
26. Bridging Viterbi and posterior decoding - a generalized risk approach to hidden path inference based on hidden Markov models
27. [Probabilistic Matrix Factorization](2007-probabilistic-matrix-factorization.md)
28. Attention-Based Transactional Context Embedding for Next-Item Recommendation
29. Restricted Boltzmann machines for collaborative filtering
30. [Deep Neural Networks for YouTube Recommendations](2016-deep-neural-networks-for-youtube-recommendations.md)
31. [Improving Language Understanding by Generative Pre-Training](2018-improving-language-understanding-by-generative-pre-training.md)
32. What Your Images Reveal - Exploiting Visual Contents for Point-of-Interest Recommendation
33. Image-Based Recommendations on Styles and Substitutes
34. FISM - factored item similarity models for top-N recommender systems
35. [Adam - A Method for Stochastic Optimization](2015-adam-a-method-for-stochastic-optimization.md)
36. Why Self-Attention? A Targeted Evaluation of Neural Machine Translation Architectures
37. [Long Short-Term Memory](1997-long-short-term-memory.md)
38. [Distilling the Knowledge in a Neural Network](2015-distilling-the-knowledge-in-a-neural-network.md)
39. An MDP-Based Recommender System
40. AutoRec - Autoencoders Meet Collaborative Filtering
41. [Learning Phrase Representations using RNN Encoder-Decoder for Statistical Machine Translation](2014-learning-phrase-representations-using-rnn-encoder-decoder-for-statistical-machine-translation.md)
42. [Dropout - a simple way to prevent neural networks from overfitting](2014-dropout-a-simple-way-to-prevent-neural-networks-from-overfitting.md)
43. [Deep Residual Learning for Image Recognition](2016-deep-residual-learning-for-image-recognition.md)
44. Advances in Collaborative Filtering
45. [Distributed Representations of Words and Phrases and their Compositionality](2013-distributed-representations-of-words-and-phrases-and-their-compositionality.md)
46. [Neural Machine Translation by Jointly Learning to Align and Translate](2015-neural-machine-translation-by-jointly-learning-to-align-and-translate.md)
47. [A Structured Self-attentive Sentence Embedding](2017-a-structured-self-attentive-sentence-embedding.md)
48. [Amazon.com Recommendations - Item-to-Item Collaborative Filtering](2003-amazon-com-recommendations-item-to-item-collaborative-filtering.md)
49. Hierarchical Attention Networks for Document Classification
50. Generating Wikipedia by Summarizing Long Sequences
51. [Item-based collaborative filtering recommendation algorithms](2001-item-based-collaborative-filtering-recommendation-algorithms.md)
52. [Layer Normalization](2016-layer-normalization.md)
53. The MovieLens Datasets - History and Context
54. [Efficient Estimation of Word Representations in Vector Space](2013-efficient-estimation-of-word-representations-in-vector-space.md)
55. [Bridging Nonlinearities and Stochastic Regularizers with Gaussian Error Linear Units](2016-bridging-nonlinearities-and-stochastic-regularizers-with-gaussian-error-linear-units.md)
56. [Matrix Factorization Techniques for Recommender Systems](2009-matrix-factorization-techniques-for-recommender-systems.md)
57. “Cloze Procedure” - A New Tool for Measuring Readability
58. [Language Models are Unsupervised Multitask Learners](2019-language-models-are-unsupervised-multitask-learners.md)
59. Multi-Head Attention with Disagreement Regularization
60. Sequential Recommendation with User Memory Networks
61. Diversifying Personalized Recommendation with User-session Context
