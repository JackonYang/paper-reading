---
title: Deep Learning with Dynamic Computation Graphs
authors:
- M. Looks
- Marcello Herreshoff
- DeLesley S. Hutchins
- Peter Norvig
fieldsOfStudy:
- Computer Science
meta_key: 2017-deep-learning-with-dynamic-computation-graphs
numCitedBy: 107
reading_status: TBD
ref_count: 22
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Deep-Learning-with-Dynamic-Computation-Graphs-Looks-Herreshoff/08d2bae3ddf44d67b9b192a6ff26e954192e4806?sort=total-citations
venue: ICLR
year: 2017
---

# Deep Learning with Dynamic Computation Graphs

## Abstract

Neural networks that compute over graph structures are a natural fit for problems in a variety of domains, including natural language (parse trees) and cheminformatics (molecular graphs). However, since the computation graph has a different shape and size for every input, such networks do not directly support batched training or inference. They are also difficult to implement in popular deep learning libraries, which are based on static data-flow graphs. We introduce a technique called dynamic batching, which not only batches together operations between different input graphs of dissimilar shape, but also between different nodes within a single input graph. The technique allows us to create static graphs, using popular libraries, that emulate dynamic computation graphs of arbitrary shape and size. We further present a high-level library of compositional blocks that simplifies the creation of dynamic graph models. Using the library, we demonstrate concise and batch-wise parallel implementations for a variety of models from the literature.

## Paper References

1. Learning task-dependent distributed representations by backpropagation through structure
2. Molecular graph convolutions - moving beyond fingerprints
3. When Are Tree Structures Necessary for Deep Learning of Representations?
4. Improving the speed of neural networks on CPUs
5. Recursive Distributed Representations
6. [Theano - A Python framework for fast computation of mathematical expressions](2016-theano-a-python-framework-for-fast-computation-of-mathematical-expressions.md)
7. [Improved Semantic Representations From Tree-Structured Long Short-Term Memory Networks](2015-improved-semantic-representations-from-tree-structured-long-short-term-memory-networks.md)
8. Neural Tree Indexers for Text Understanding
9. A Fast Unified Model for Parsing and Sentence Understanding
10. [Learning to Compose Neural Networks for Question Answering](2016-learning-to-compose-neural-networks-for-question-answering.md)
11. [ImageNet classification with deep convolutional neural networks](2012-imagenet-classification-with-deep-convolutional-neural-networks.md)
12. [Neural Machine Translation by Jointly Learning to Align and Translate](2015-neural-machine-translation-by-jointly-learning-to-align-and-translate.md)
13. [Torch7 - A Matlab-like Environment for Machine Learning](2011-torch7-a-matlab-like-environment-for-machine-learning.md)
14. Monadic parser combinators
15. GPU implementation of neural networks
16. Generalising monads to arrows
17. Application of Cascade Correlation Networks for Structures to Chemistry
18. Feed-Forward Networks with Attention Can Solve Some Long-Term Memory Problems
