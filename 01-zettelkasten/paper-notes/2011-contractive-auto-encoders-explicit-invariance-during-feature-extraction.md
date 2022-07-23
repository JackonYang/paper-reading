---
title: Contractive Auto-Encoders - Explicit Invariance During Feature Extraction
authors:
- S. Rifai
- Pascal Vincent
- X. Muller
- Xavier Glorot
- Yoshua Bengio
fieldsOfStudy:
- Computer Science
meta_key: 2011-contractive-auto-encoders-explicit-invariance-during-feature-extraction
numCitedBy: 1259
reading_status: TBD
ref_count: 25
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Contractive-Auto-Encoders:-Explicit-Invariance-Rifai-Vincent/195d0a8233a7a46329c742eaff56c276f847fadc?sort=total-citations
venue: ICML
year: 2011
---

[semanticscholar url](https://www.semanticscholar.org/paper/Contractive-Auto-Encoders:-Explicit-Invariance-Rifai-Vincent/195d0a8233a7a46329c742eaff56c276f847fadc?sort=total-citations)

# Contractive Auto-Encoders - Explicit Invariance During Feature Extraction

## Abstract

We present in this paper a novel approach for training deterministic auto-encoders. We show that by adding a well chosen penalty term to the classical reconstruction cost function, we can achieve results that equal or surpass those attained by other regularized auto-encoders as well as denoising auto-encoders on a range of datasets. This penalty term corresponds to the Frobenius norm of the Jacobian matrix of the encoder activations with respect to the input. We show that this penalty term results in a localized space contraction which in turn yields robust features on the activation layer. Furthermore, we show how this penalty term is related to both regularized auto-encoders and denoising auto-encoders and how it can be seen as a link between deterministic and non-deterministic auto-encoders. We find empirically that this penalty helps to carve a representation that better captures the local directions of variation dictated by the data, corresponding to a lower-dimensional non-linear manifold, while being more invariant to the vast majority of directions orthogonal to the manifold. Finally, we show that by using the learned features to initialize a MLP, we achieve state of the art classification error on a range of datasets, surpassing other methods of pretraining.

## Paper References

1. [Stacked Denoising Autoencoders - Learning Useful Representations in a Deep Network with a Local Denoising Criterion](2010-stacked-denoising-autoencoders-learning-useful-representations-in-a-deep-network-with-a-local-denoising-criterion.md)
2. Training with Noise is Equivalent to Tikhonov Regularization
3. Tangent Prop - A Formalism for Specifying Selected Invariances in an Adaptive Network
4. Sparse coding with an overcomplete basis set - A strategy employed by V1?
5. Neural networks and principal component analysis - Learning from examples without local minima
6. [Learning Multiple Layers of Features from Tiny Images](2009-learning-multiple-layers-of-features-from-tiny-images.md)
7. [A Fast Learning Algorithm for Deep Belief Nets](2006-a-fast-learning-algorithm-for-deep-belief-nets.md)
8. Learning invariant features through topographic filter maps
9. [Greedy Layer-Wise Training of Deep Networks](2006-greedy-layer-wise-training-of-deep-networks.md)
10. Convolutional deep belief networks for scalable unsupervised learning of hierarchical representations
11. What is the best multi-stage architecture for object recognition?
12. Sparse deep belief net model for visual area V2
13. Deep learning via semi-supervised embedding
14. Nonlinear Autoassociation Is Not Equivalent to PCA
15. Learning representations by backpropagating errors
16. Learning representations by back-propagating errors
17. [Learning Deep Architectures for AI](2007-learning-deep-architectures-for-ai.md)
18. An empirical evaluation of deep architectures on problems with many factors of variation
19. Learning representations by back-propagation errors, nature
20. Advances in Neural Information Processing Systems 8 (NIPS 1995)
