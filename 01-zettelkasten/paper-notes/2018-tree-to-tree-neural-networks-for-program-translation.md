---
title: Tree-to-tree Neural Networks for Program Translation
authors:
- Xinyun Chen
- Chang Liu
- D. Song
fieldsOfStudy:
- Computer Science
meta_key: 2018-tree-to-tree-neural-networks-for-program-translation
numCitedBy: 153
reading_status: TBD
ref_count: 36
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Tree-to-tree-Neural-Networks-for-Program-Chen-Liu/6c6170ffb39cdc8cfffbeda9c7a2259eda5875f2?sort=total-citations
venue: NeurIPS
year: 2018
---

[semanticscholar url](https://www.semanticscholar.org/paper/Tree-to-tree-Neural-Networks-for-Program-Chen-Liu/6c6170ffb39cdc8cfffbeda9c7a2259eda5875f2?sort=total-citations)

# Tree-to-tree Neural Networks for Program Translation

## Abstract

Program translation is an important tool to migrate legacy code in one language into an ecosystem built in a different language. In this work, we are the first to employ deep neural networks toward tackling this problem. We observe that program translation is a modular procedure, in which a sub-tree of the source tree is translated into the corresponding target sub-tree at each step. To capture this intuition, we design a tree-to-tree neural network to translate a source tree into a target one. Meanwhile, we develop an attention mechanism for the tree-to-tree model, so that when the decoder expands one non-terminal in the target tree, the attention mechanism locates the corresponding sub-tree in the source tree to guide the expansion of the decoder. We evaluate the program translation capability of our tree-to-tree model against several state-of-the-art approaches. Compared against other neural translation models, we observe that our approach is consistently better than the baselines with a margin of up to 15 points. Further, our approach can improve the previous state-of-the-art program translation approaches by a margin of 20 points on the translation of real-world projects.

## Paper References

1. [Neural Machine Translation by Jointly Learning to Align and Translate](2015-neural-machine-translation-by-jointly-learning-to-align-and-translate.md)
2. Tree-to-Sequence Attentional Neural Machine Translation
3. Latent Attention For If-Then Program Synthesis
4. Learning Neural Programs To Parse Programs
5. Lexical statistical machine translation for language migration
6. Divide-and-Conquer Approach for Multi-phase Statistical Migration for Source Code (T)
7. Towards String-To-Tree Neural Machine Translation
8. Phrase-Based Statistical Translation of Programming Languages
9. Towards Synthesizing Complex Programs From Input-Output Examples
10. [Effective Approaches to Attention-based Neural Machine Translation](2015-effective-approaches-to-attention-based-neural-machine-translation.md)
11. [Attention is All you Need](2017-attention-is-all-you-need.md)
12. Long Short-Term Memory Over Recursive Structures
13. DeepCoder - Learning to Write Programs
14. Towards Neural Machine Translation with Latent Tree Attention
15. Top-down Tree Long Short-Term Memory Networks
16. On Using Very Large Target Vocabulary for Neural Machine Translation
17. RobustFill - Neural Program Learning under Noisy I/O
18. Dual Learning for Machine Translation
19. Grammar as a Foreign Language
20. Learning to Generate Pseudo-Code from Source Code Using Statistical Machine Translation (T)
21. Abstract Syntax Networks for Code Generation and Semantic Parsing
22. Latent Predictor Networks for Code Generation
23. Neuro-Symbolic Program Synthesis
24. Mapping API Elements for Code Migration with Vector Representations
25. Tree-structured decoding with doubly-recurrent neural networks
26. [Improved Semantic Representations From Tree-Structured Long Short-Term Memory Networks](2015-improved-semantic-representations-from-tree-structured-long-short-term-memory-networks.md)
27. Language to Logical Form with Neural Attention
28. Visualizing and Understanding Recurrent Networks
29. A Survey of Machine Learning for Big Code and Naturalness
30. [Parsing Natural Scenes and Natural Language with Recursive Neural Networks](2011-parsing-natural-scenes-and-natural-language-with-recursive-neural-networks.md)
31. Grammar Variational Autoencoder
32. Recurrent Neural Network Grammars
33. [Semi-Supervised Recursive Autoencoders for Predicting Sentiment Distributions](2011-semi-supervised-recursive-autoencoders-for-predicting-sentiment-distributions.md)
