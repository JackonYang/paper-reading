---
title: On the importance of initialization and momentum in deep learning
authors:
- Ilya Sutskever
- James Martens
- George E. Dahl
- Geoffrey E. Hinton
fieldsOfStudy:
- Computer Science
meta_key: 2013-on-the-importance-of-initialization-and-momentum-in-deep-learning
numCitedBy: 3576
reading_status: TBD
ref_count: 39
tags:
- gen-from-ref
- other-default
- paper
venue: ICML
year: 2013
---

# On the importance of initialization and momentum in deep learning

## Abstract

Deep and recurrent neural networks (DNNs and RNNs respectively) are powerful models that were considered to be almost impossible to train using stochastic gradient descent with momentum. In this paper, we show that when stochastic gradient descent with momentum uses a well-designed random initialization and a particular type of slowly increasing schedule for the momentum parameter, it can train both DNNs and RNNs (on datasets with long-term dependencies) to levels of performance that were previously achievable only with Hessian-Free optimization. We find that both the initialization and the momentum are crucial since poorly initialized networks cannot be trained with momentum and well-initialized networks perform markedly worse when the momentum is absent or poorly tuned. 
 
Our success training these models suggests that previous attempts to train deep and recurrent neural networks from random initializations have likely failed due to poor initialization schemes. Furthermore, carefully tuned momentum methods suffice for dealing with the curvature issues in deep and recurrent network training objectives without the need for sophisticated second-order methods.

## Paper References

1. [Understanding the difficulty of training deep feedforward neural networks](2010-understanding-the-difficulty-of-training-deep-feedforward-neural-networks)
2. Learning Recurrent Neural Networks with Hessian-Free Optimization
3. Neural Networks - Tricks of the Trade
4. [Generating Text with Recurrent Neural Networks](2011-generating-text-with-recurrent-neural-networks)
5. [Greedy Layer-Wise Training of Deep Networks](2006-greedy-layer-wise-training-of-deep-networks)
6. Deep Learning Made Easier by Linear Transformations in Perceptrons
7. Learning long-term dependencies with gradient descent is difficult
8. Stochastic dynamics of learning with momentum in neural networks
9. [ImageNet classification with deep convolutional neural networks](2012-imagenet-classification-with-deep-convolutional-neural-networks)
10. Dynamics and algorithms for stochastic search
11. [A Fast Learning Algorithm for Deep Belief Nets](2006-a-fast-learning-algorithm-for-deep-belief-nets)
12. [Long Short-Term Memory](1997-long-short-term-memory)
13. Deep learning via Hessian-free optimization
14. [Context-Dependent Pre-Trained Deep Neural Networks for Large-Vocabulary Speech Recognition](2012-context-dependent-pre-trained-deep-neural-networks-for-large-vocabulary-speech-recognition)
15. Neural Networks - Tricks of the Trade
16. Sequence Transduction with Recurrent Neural Networks
17. [Acoustic Modeling Using Deep Belief Networks](2012-acoustic-modeling-using-deep-belief-networks)
18. Towards Faster Stochastic Gradient Search
19. [Reducing the Dimensionality of Data with Neural Networks](2006-reducing-the-dimensionality-of-data-with-neural-networks)
20. [Deep Neural Networks for Acoustic Modeling in Speech Recognition](2012-deep-neural-networks-for-acoustic-modeling-in-speech-recognition)
21. SUBWORD LANGUAGE MODELING WITH NEURAL NETWORKS
22. An optimal method for stochastic composite optimization
23. Introductory Lectures on Convex Optimization - A Basic Course
24. Improved Preconditioner for Hessian Free Optimization
25. Better Mini-Batch Algorithms via Accelerated Gradient Methods
26. Harnessing Nonlinearity - Predicting Chaotic Systems and Saving Energy in Wireless Communication
27. Some methods of speeding up the convergence of iteration methods
28. Large Scale Online Learning
29. Training Deep and Recurrent Networks with Hessian-Free Optimization
30. [Efficient BackProp](2012-efficient-backprop)
