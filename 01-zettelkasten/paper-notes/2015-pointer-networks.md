---
title: Pointer Networks
authors:
- Oriol Vinyals
- Meire Fortunato
- Navdeep Jaitly
fieldsOfStudy:
- Computer Science
meta_key: 2015-pointer-networks
numCitedBy: 1722
reading_status: TBD
ref_count: 29
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Pointer-Networks-Vinyals-Fortunato/9653d5c2c7844347343d073bbedd96e05d52f69b?sort=total-citations
venue: NIPS
year: 2015
---

# Pointer Networks

## Abstract

We introduce a new neural architecture to learn the conditional probability of an output sequence with elements that are discrete tokens corresponding to positions in an input sequence. Such problems cannot be trivially addressed by existent approaches such as sequence-to-sequence [1] and Neural Turing Machines [2], because the number of target classes in each step of the output depends on the length of the input, which is variable. Problems such as sorting variable sized sequences, and various combinatorial optimization problems belong to this class. Our model solves the problem of variable size output dictionaries using a recently proposed mechanism of neural attention. It differs from the previous attention attempts in that, instead of using attention to blend hidden units of an encoder to a context vector at each decoder step, it uses attention as a pointer to select a member of the input sequence as the output. We call this architecture a Pointer Net (Ptr-Net). We show Ptr-Nets can be used to learn approximate solutions to three challenging geometric problems - finding planar convex hulls, computing Delaunay triangulations, and the planar Travelling Salesman Problem - using training examples alone. Ptr-Nets not only improve over sequence-to-sequence with input attention, but also allow us to generalize to variable size output dictionaries. We show that the learnt models generalize beyond the maximum lengths they were trained on. We hope our results on these tasks will encourage a broader exploration of neural learning for discrete problems.

## Paper References

1. [Sequence to Sequence Learning with Neural Networks](2014-sequence-to-sequence-learning-with-neural-networks.md)
2. Learning to Execute
3. [Neural Machine Translation by Jointly Learning to Align and Translate](2015-neural-machine-translation-by-jointly-learning-to-align-and-translate.md)
4. [Show and tell - A neural image caption generator](2015-show-and-tell-a-neural-image-caption-generator.md)
5. [Unsupervised Learning of Video Representations using LSTMs](2015-unsupervised-learning-of-video-representations-using-lstms.md)
6. [Long Short-Term Memory](1997-long-short-term-memory.md)
7. [Memory Networks](2015-memory-networks.md)
8. [Long-term recurrent convolutional networks for visual recognition and description](2015-long-term-recurrent-convolutional-networks-for-visual-recognition-and-description.md)
9. Grammar as a Foreign Language
10. [Neural Turing Machines](2014-neural-turing-machines.md)
11. [Generating Sequences With Recurrent Neural Networks](2013-generating-sequences-with-recurrent-neural-networks.md)
12. An application of recurrent nets to phone probability estimation
13. Dynamic Programming Treatment of the Travelling Salesman Problem
14. An Efficient Algorithm for Determining the Convex Hull of a Finite Planar Set
15. Learning internal representations by error propagation
16. Convex hulls of finite sets of points in two and three dimensions
17. Efficient Unstructured Mesh Generation by Means of Delaunay Triangulation and Bowyer-Watson Algorithm
18. On the Identification of the Convex Hull of a Finite Set of Points in the Plane
