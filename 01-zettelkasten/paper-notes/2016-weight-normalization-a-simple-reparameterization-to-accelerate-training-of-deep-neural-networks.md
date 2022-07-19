---
title: Weight Normalization - A Simple Reparameterization to Accelerate Training of Deep Neural Networks
authors:
- Tim Salimans
- Diederik P. Kingma
fieldsOfStudy:
- Computer Science
meta_key: 2016-weight-normalization-a-simple-reparameterization-to-accelerate-training-of-deep-neural-networks
numCitedBy: 1296
reading_status: TBD
ref_count: 39
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Weight-Normalization:-A-Simple-Reparameterization-Salimans-Kingma/3d2c6941a9b4608ba52b328369a3352db2092ae0?sort=total-citations
venue: NIPS
year: 2016
---

# Weight Normalization - A Simple Reparameterization to Accelerate Training of Deep Neural Networks

## Abstract

We present weight normalization: a reparameterization of the weight vectors in a neural network that decouples the length of those weight vectors from their direction. By reparameterizing the weights in this way we improve the conditioning of the optimization problem and we speed up convergence of stochastic gradient descent. Our reparameterization is inspired by batch normalization but does not introduce any dependencies between the examples in a minibatch. This means that our method can also be applied successfully to recurrent models such as LSTMs and to noise-sensitive applications such as deep reinforcement learning or generative models, for which batch normalization is less well suited. Although our method is much simpler, it still provides much of the speed-up of full batch normalization. In addition, the computational overhead of our method is lower, permitting more optimization steps to be taken in the same amount of time. We demonstrate the usefulness of our method on applications in supervised image recognition, generative modelling, and deep reinforcement learning.

## Paper References

1. [Batch Normalization - Accelerating Deep Network Training by Reducing Internal Covariate Shift](2015-batch-normalization-accelerating-deep-network-training-by-reducing-internal-covariate-shift)
2. Deep Learning Made Easier by Linear Transformations in Perceptrons
3. [Layer Normalization](2016-layer-normalization)
4. Recurrent Batch Normalization
5. [On the importance of initialization and momentum in deep learning](2013-on-the-importance-of-initialization-and-momentum-in-deep-learning)
6. Natural Neural Networks
7. [Adam - A Method for Stochastic Optimization](2015-adam-a-method-for-stochastic-optimization)
8. Data-dependent Initializations of Convolutional Neural Networks
9. All you need is a good init
10. [Understanding the difficulty of training deep feedforward neural networks](2010-understanding-the-difficulty-of-training-deep-feedforward-neural-networks)
11. [Deep Residual Learning for Image Recognition](2015-resnet.md)
12. [Deeply-Supervised Nets](2015-deeply-supervised-nets)
13. Optimizing Neural Networks with Kronecker-factored Approximate Curvature
14. [Network In Network](2014-network-in-network)
15. [Striving for Simplicity - The All Convolutional Net](2015-striving-for-simplicity-the-all-convolutional-net)
16. Deep learning via Hessian-free optimization
17. [Densely Connected Convolutional Networks](2017-densely-connected-convolutional-networks)
18. [Long Short-Term Memory](1997-long-short-term-memory)
19. [Learning Multiple Layers of Features from Tiny Images](2009-learning-multiple-layers-of-features-from-tiny-images)
20. Improved Variational Inference with Inverse Autoregressive Flow
21. [Maxout Networks](2013-maxout-networks)
22. Human-level control through deep reinforcement learning
23. Stochastic Backpropagation and Approximate Inference in Deep Generative Models
24. Neural Learning in Structured Parameter Spaces - Natural Riemannian Gradient
25. [DRAW - A Recurrent Neural Network For Image Generation](2015-draw-a-recurrent-neural-network-for-image-generation)
26. Scaling up Natural Gradient by Sparsely Factorizing the Inverse Fisher Matrix
27. [Theano - new features and speed improvements](2012-theano-new-features-and-speed-improvements)
28. The Arcade Learning Environment - An Evaluation Platform for General Agents (Extended Abstract)
29. Markov Chain Monte Carlo and Variational Inference - Bridging the Gap
30. Rank, Trace-Norm and Max-Norm
31. Acceleration of stochastic approximation by averaging
32. Rectified linear neural networks with tied-scalar regularization for LVCSR
33. [Deep Learning](2016-deep-learning)
34. [Auto-Encoding Variational Bayes](2014-auto-encoding-variational-bayes)
