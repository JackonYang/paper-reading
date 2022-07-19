---
title: Dropout - a simple way to prevent neural networks from overfitting
authors:
- Nitish Srivastava
- Geoffrey E. Hinton
- A. Krizhevsky
- Ilya Sutskever
- R. Salakhutdinov
fieldsOfStudy:
- Computer Science
meta_key: 2014-dropout-a-simple-way-to-prevent-neural-networks-from-overfitting
numCitedBy: 28300
reading_status: TBD
ref_count: 43
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Dropout:-a-simple-way-to-prevent-neural-networks-Srivastava-Hinton/34f25a8704614163c4095b3ee2fc969b60de4698?sort=total-citations
venue: J. Mach. Learn. Res.
year: 2014
---

# Dropout - a simple way to prevent neural networks from overfitting

## Abstract

Deep neural nets with a large number of parameters are very powerful machine learning systems. However, overfitting is a serious problem in such networks. Large networks are also slow to use, making it difficult to deal with overfitting by combining the predictions of many different large neural nets at test time. Dropout is a technique for addressing this problem. The key idea is to randomly drop units (along with their connections) from the neural network during training. This prevents units from co-adapting too much. During training, dropout samples from an exponential number of different "thinned" networks. At test time, it is easy to approximate the effect of averaging the predictions of all these thinned networks by simply using a single unthinned network that has smaller weights. This significantly reduces overfitting and gives major improvements over other regularization methods. We show that dropout improves the performance of neural networks on supervised learning tasks in vision, speech recognition, document classification and computational biology, obtaining state-of-the-art results on many benchmark data sets.

## Paper References

1. Improving Neural Networks with Dropout
2. [Learning Multiple Layers of Features from Tiny Images](2009-learning-multiple-layers-of-features-from-tiny-images)
3. Fast dropout training
4. [ImageNet classification with deep convolutional neural networks](2012-alexnet.md)
5. [A Fast Learning Algorithm for Deep Belief Nets](2006-a-fast-learning-algorithm-for-deep-belief-nets)
6. Learning with Marginalized Corrupted Features
7. Simplifying Neural Networks by Soft Weight-Sharing
8. Dropout Training as Adaptive Regularization
9. Deep Boltzmann Machines
10. Bayesian Learning for Neural Networks
11. [Stacked Denoising Autoencoders - Learning Useful Representations in a Deep Network with a Local Denoising Criterion](2010-stacked-denoising-autoencoders-learning-useful-representations-in-a-deep-network-with-a-local-denoising-criterion)
12. Phone Recognition with the Mean-Covariance Restricted Boltzmann Machine
13. [Acoustic Modeling Using Deep Belief Networks](2012-acoustic-modeling-using-deep-belief-networks)
14. [Practical Bayesian Optimization of Machine Learning Algorithms](2012-practical-bayesian-optimization-of-machine-learning-algorithms)
15. Stochastic Pooling for Regularization of Deep Convolutional Neural Networks
16. Best practices for convolutional neural networks applied to visual document analysis
17. Learning to classify with missing and corrupted features
18. [Reducing the Dimensionality of Data with Neural Networks](2006-reducing-the-dimensionality-of-data-with-neural-networks)
19. [Maxout Networks](2013-maxout-networks)
20. [Reading Digits in Natural Images with Unsupervised Feature Learning](2011-reading-digits-in-natural-images-with-unsupervised-feature-learning)
21. [Extracting and composing robust features with denoising autoencoders](2008-extracting-and-composing-robust-features-with-denoising-autoencoders)
22. Nightmare at test time - robust learning by feature deletion
23. Convolutional neural networks applied to house numbers digit classification
24. What is the best multi-stage architecture for object recognition?
25. Marginalized Denoising Autoencoders for Domain Adaptation
26. Backpropagation Applied to Handwritten Zip Code Recognition
27. Bayesian probabilistic matrix factorization using Markov chain Monte Carlo
28. [The Kaldi Speech Recognition Toolkit](2011-the-kaldi-speech-recognition-toolkit)
29. [Regression Shrinkage and Selection via the Lasso](1996-regression-shrinkage-and-selection-via-the-lasso)
30. High-dimensional signature compression for large-scale image classification
31. CUDAMat - a CUDA-based matrix class for Python
32. Bayesian prediction of tissue-regulated splicing using RNA sequence and cellular context
33. Rank, Trace-Norm and Max-Norm
34. Sex, mixability, and modularity
35. The Stability of Inverse Problems
36. IEEE Workshop on automatic speech recognition and understanding
