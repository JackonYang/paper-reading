---
title: Building high-level features using large scale unsupervised learning
authors:
- Quoc V. Le
- Marc'Aurelio Ranzato
- R. Monga
- Matthieu Devin
- G. Corrado
- Kai Chen
- J. Dean
- A. Ng
fieldsOfStudy:
- Computer Science
meta_key: 2013-building-high-level-features-using-large-scale-unsupervised-learning
numCitedBy: 2105
reading_status: TBD
ref_count: 63
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Building-high-level-features-using-large-scale-Le-Ranzato/72e93aa6767ee683de7f001fa72f1314e40a8f35?sort=total-citations
venue: 2013 IEEE International Conference on Acoustics, Speech and Signal Processing
year: 2013
---

# Building high-level features using large scale unsupervised learning

## Abstract

We consider the problem of building high-level, class-specific feature detectors from only unlabeled data. For example, is it possible to learn a face detector using only unlabeled images? To answer this, we train a deep sparse autoencoder on a large dataset of images (the model has 1 billion connections, the dataset has 10 million 200×200 pixel images downloaded from the Internet). We train this network using model parallelism and asynchronous SGD on a cluster with 1,000 machines (16,000 cores) for three days. Contrary to what appears to be a widely-held intuition, our experimental results reveal that it is possible to train a face detector without having to label images as containing a face or not. Control experiments show that this feature detector is robust not only to translation but also to scaling and out-of-plane rotation. We also find that the same network is sensitive to other high-level concepts such as cat faces and human bodies. Starting from these learned features, we trained our network to recognize 22,000 object categories from ImageNet and achieve a leap of 70% relative improvement over the previous state-of-the-art.

## Paper References

1. [An Analysis of Single-Layer Networks in Unsupervised Feature Learning](2011-an-analysis-of-single-layer-networks-in-unsupervised-feature-learning)
2. [Learning Multiple Layers of Features from Tiny Images](2009-learning-multiple-layers-of-features-from-tiny-images)
3. Measuring Invariances in Deep Networks
4. Convolutional deep belief networks for scalable unsupervised learning of hierarchical representations
5. Large-scale deep unsupervised learning using graphics processors
6. Visualizing Higher-Layer Features of a Deep Network
7. ICA with Reconstruction Cost for Efficient Overcomplete Feature Learning
8. [Large Scale Distributed Deep Networks](2012-large-scale-distributed-deep-networks)
9. Unsupervised Learning of Invariant Feature Hierarchies with Applications to Object Recognition
10. [A Fast Learning Algorithm for Deep Belief Nets](2006-a-fast-learning-algorithm-for-deep-belief-nets)
11. Sparse deep belief net model for visual area V2
12. Scaling learning algorithms towards AI
13. Tiled convolutional neural networks
14. [Greedy Layer-Wise Training of Deep Networks](2006-greedy-layer-wise-training-of-deep-networks)
15. On optimization methods for deep learning
16. Emergence of Complex-Like Cells in a Temporal Product Network with Local Receptive Fields
17. Cat Head Detection - How to Effectively Exploit Shape and Texture Features
18. What Does Classifying More Than 10, 000 Image Categories Tell Us?
19. What is the best multi-stage architecture for object recognition?
20. High-dimensional signature compression for large-scale image classification
21. Layer-wise analysis of deep networks with Gaussian kernels
22. Object Recognition with Gradient-Based Learning
23. [Reducing the Dimensionality of Data with Neural Networks](2006-reducing-the-dimensionality-of-data-with-neural-networks)
24. [ImageNet - A large-scale hierarchical image database](2009-imagenet-a-large-scale-hierarchical-image-database)
25. Emergence of simple-cell receptive field properties by learning a sparse code for natural images
26. Traffic sign recognition with multi-scale Convolutional Networks
27. [Labeled Faces in the Wild - A Database forStudying Face Recognition in Unconstrained Environments](2008-labeled-faces-in-the-wild-a-database-forstudying-face-recognition-in-unconstrained-environments)
28. WSABIE - Scaling Up to Large Vocabulary Image Annotation
29. The chains model for detecting parts by their context
30. Efficient sparse coding algorithms
31. Why is Real-World Visual Object Recognition Hard?
32. [Gradient-based learning applied to document recognition](1998-lenet5.md)
33. Invariant visual representation by single neurons in the human brain
34. Slow feature analysis yields a rich repertoire of complex cell properties.
35. Nonlinear image representation using divisive normalization
36. A new benchmark for stereo-based pedestrian detection
37. How Does the Brain Solve Visual Object Recognition?
38. Hierarchical models of object recognition in cortex
39. Stimulus-selective properties of inferior temporal neurons in the macaque
40. Receptive fields, binocular interaction and functional architecture in the cat's visual cortex
41. Deep, Big, Simple Neural Nets for Handwritten Digit Recognition
42. Receptive fields of single neurones in the cat's striate cortex
43. Neocognitron - A new algorithm for pattern recognition tolerant of deformations and shifts in position
44. Aging and the human neocortex
45. Theoretical Neuroscience - Computational and Mathematical Modeling of Neural Systems
46. Developmental psychology - Rational imitation in preverbal infants
47. Receptive fields
48. SENSC - a Stable and Efficient Algorithm for Nonnegative Sparse Coding - SENSC - a Stable and Efficient Algorithm for Nonnegative Sparse Coding
49. Deep Big Simple Neural Nets Excel on Handwritten Digit Recognition
50. Self-taught learning - transfer learning from unlabeled data
