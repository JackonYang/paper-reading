---
title: Learning to Represent Programs with Graphs
authors:
- Miltiadis Allamanis
- M. Brockschmidt
- M. Khademi
fieldsOfStudy:
- Computer Science
meta_key: 2018-learning-to-represent-programs-with-graphs
numCitedBy: 460
reading_status: TBD
ref_count: 30
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Learning-to-Represent-Programs-with-Graphs-Allamanis-Brockschmidt/d0f2d7236e43f129744e88130fb71f8f872d2b31?sort=total-citations
venue: ICLR
year: 2018
---

[semanticscholar url](https://www.semanticscholar.org/paper/Learning-to-Represent-Programs-with-Graphs-Allamanis-Brockschmidt/d0f2d7236e43f129744e88130fb71f8f872d2b31?sort=total-citations)

# Learning to Represent Programs with Graphs

## Abstract

Learning tasks on source code (i.e., formal languages) have been considered recently, but most work has tried to transfer natural language methods and does not capitalize on the unique opportunities offered by code's known syntax. For example, long-range dependencies induced by using the same variable or function in distant locations are often not considered. We propose to use graphs to represent both the syntactic and semantic structure of code and use graph-based deep learning methods to learn to reason over program structures. 
In this work, we present how to construct graphs from source code and how to scale Gated Graph Neural Networks training to such large graphs. We evaluate our method on two tasks: VarNaming, in which a network attempts to predict the name of a variable given its usage, and VarMisuse, in which the network learns to reason about selecting the correct variable that should be used at a given program location. Our comparison to methods that use less structured program representations shows the advantages of modeling known structure, and suggests that our models learn to infer meaningful names and to solve the VarMisuse task in many cases. Additionally, our testing showed that VarMisuse identifies a number of bugs in mature open-source projects.

## Paper References

1. [Gated Graph Sequence Neural Networks](2016-gated-graph-sequence-neural-networks.md)
2. Learning Python Code Suggestion with a Sparse Pointer Network
3. Suggesting accurate method and class names
4. A Survey of Machine Learning for Big Code and Naturalness
5. Probabilistic model for code with decision trees
6. Predicting Program Properties from Big Code
7. Structured Generative Models of Natural Source Code
8. A Convolutional Attention Network for Extreme Summarization of Source Code
9. Code completion with statistical language models
10. node2vec - Scalable Feature Learning for Networks
11. Modeling Relational Data with Graph Convolutional Networks
12. Encoding Sentences with Graph Convolutional Networks for Semantic Role Labeling
13. A new model for learning in graph domains
14. PHOG - Probabilistic Model for Code
15. UvA-DARE (Digital Academic Modeling Relational Data with Graph Convolutional Networks Modeling Relational Data with Graph Convolutional Networks
16. On the naturalness of software
17. Premise Selection for Theorem Proving by Deep Graph Embedding
18. [GloVe - Global Vectors for Word Representation](2014-glove-global-vectors-for-word-representation.md)
19. [Neural Message Passing for Quantum Chemistry](2017-neural-message-passing-for-quantum-chemistry.md)
20. [Semi-Supervised Classification with Graph Convolutional Networks](2017-semi-supervised-classification-with-graph-convolutional-networks.md)
21. [Distributed Representations of Words and Phrases and their Compositionality](2013-distributed-representations-of-words-and-phrases-and-their-compositionality.md)
22. Learning natural coding conventions
23. Automated software transplantation
24. Statistical Deobfuscation of Android Applications
25. [TensorFlow - Large-Scale Machine Learning on Heterogeneous Distributed Systems](2016-tensorflow-large-scale-machine-learning-on-heterogeneous-distributed-systems.md)
26. Detecting argument selection defects
27. [Convolutional Neural Networks on Graphs with Fast Localized Spectral Filtering](2016-convolutional-neural-networks-on-graphs-with-fast-localized-spectral-filtering.md)
28. [On the Properties of Neural Machine Translation - Encoder-Decoder Approaches](2014-on-the-properties-of-neural-machine-translation-encoder-decoder-approaches.md)
29. Program synthesis by sketching
30. A few billion lines of code later
