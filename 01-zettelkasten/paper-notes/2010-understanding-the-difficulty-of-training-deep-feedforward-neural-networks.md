---
title: Understanding the difficulty of training deep feedforward neural networks
authors:
- Xavier Glorot
- Yoshua Bengio
fieldsOfStudy:
- Computer Science
meta_key: 2010-understanding-the-difficulty-of-training-deep-feedforward-neural-networks
numCitedBy: 12495
reading_status: TBD
ref_count: 26
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Understanding-the-difficulty-of-training-deep-Glorot-Bengio/b71ac1e9fb49420d13e084ac67254a0bbd40f83f?sort=total-citations
venue: AISTATS
year: 2010
---

# Understanding the difficulty of training deep feedforward neural networks

## Abstract

Whereas before 2006 it appears that deep multilayer neural networks were not successfully trained, since then several algorithms have been shown to successfully train them, with experimental results showing the superiority of deeper vs less deep architectures. All these experimental results were obtained with new initialization or training mechanisms. Our objective here is to understand better why standard gradient descent from random initialization is doing so poorly with deep neural networks, to better understand these recent relative successes and help design better algorithms in the future. We first observe the influence of the non-linear activations functions. We find that the logistic sigmoid activation is unsuited for deep networks with random initialization because of its mean value, which can drive especially the top hidden layer into saturation. Surprisingly, we find that saturated units can move out of saturation by themselves, albeit slowly, and explaining the plateaus sometimes seen when training neural networks. We find that a new non-linearity that saturates less can often be beneficial. Finally, we study how activations and gradients vary across layers and during training, with the idea that training may be more difficult when the singular values of the Jacobian associated with each layer are far from 1. Based on these considerations, we propose a new initialization scheme that brings substantially faster convergence. 1 Deep Neural Networks Deep learning methods aim at learning feature hierarchies with features from higher levels of the hierarchy formed by the composition of lower level features. They include Appearing in Proceedings of the 13 International Conference on Artificial Intelligence and Statistics (AISTATS) 2010, Chia Laguna Resort, Sardinia, Italy. Volume 9 of JMLR: WC Weston et al., 2008). Much attention has recently been devoted to them (see (Bengio, 2009) for a review), because of their theoretical appeal, inspiration from biology and human cognition, and because of empirical success in vision (Ranzato et al., 2007; Larochelle et al., 2007; Vincent et al., 2008) and natural language processing (NLP) (Collobert & Weston, 2008; Mnih & Hinton, 2009). Theoretical results reviewed and discussed by Bengio (2009), suggest that in order to learn the kind of complicated functions that can represent high-level abstractions (e.g. in vision, language, and other AI-level tasks), one may need deep architectures. Most of the recent experimental results with deep architecture are obtained with models that can be turned into deep supervised neural networks, but with initialization or training schemes different from the classical feedforward neural networks (Rumelhart et al., 1986). Why are these new algorithms working so much better than the standard random initialization and gradient-based optimization of a supervised training criterion? Part of the answer may be found in recent analyses of the effect of unsupervised pretraining (Erhan et al., 2009), showing that it acts as a regularizer that initializes the parameters in a “better” basin of attraction of the optimization procedure, corresponding to an apparent local minimum associated with better generalization. But earlier work (Bengio et al., 2007) had shown that even a purely supervised but greedy layer-wise procedure would give better results. So here instead of focusing on what unsupervised pre-training or semi-supervised criteria bring to deep architectures, we focus on analyzing what may be going wrong with good old (but deep) multilayer neural networks. Our analysis is driven by investigative experiments to monitor activations (watching for saturation of hidden units) and gradients, across layers and across training iterations. We also evaluate the effects on these of choices of activation function (with the idea that it might affect saturation) and initialization procedure (since unsupervised pretraining is a particular form of initialization and it has a drastic impact).

## Paper References

1. Exploring Strategies for Training Deep Neural Networks
2. [Greedy Layer-Wise Training of Deep Networks](2006-greedy-layer-wise-training-of-deep-networks)
3. [A Fast Learning Algorithm for Deep Belief Nets](2006-a-fast-learning-algorithm-for-deep-belief-nets)
4. [Learning Multiple Layers of Features from Tiny Images](2009-learning-multiple-layers-of-features-from-tiny-images)
5. [Learning Deep Architectures for AI](2007-learning-deep-architectures-for-ai)
6. [Extracting and composing robust features with denoising autoencoders](2008-extracting-and-composing-robust-features-with-denoising-autoencoders)
7. An empirical evaluation of deep architectures on problems with many factors of variation
8. Learning long-term dependencies with gradient descent is difficult
9. Learning representations by back-propagating errors
10. Efficient Learning of Sparse Representations with an Energy-Based Model
11. [Gradient-based learning applied to document recognition](1998-lenet5.md)
12. Accelerated Learning in Layered Neural Networks
13. [A unified architecture for natural language processing - deep neural networks with multitask learning](2008-a-unified-architecture-for-natural-language-processing-deep-neural-networks-with-multitask-learning)
14. A Scalable Hierarchical Distributed Language Model
15. Unsupervised Learning of Probabilistic Grammar-Markov Models for Object Categories
16. Deep learning via semi-supervised embedding
17. [Efficient BackProp](2012-efficient-backprop)
18. The Difficulty of Training Deep Architectures and the Effect of Unsupervised Pre-Training
19. Learning in modular systems
