---
title: Greedy Layer-Wise Training of Deep Networks
authors:
- Yoshua Bengio
- Pascal Lamblin
- D. Popovici
- H. Larochelle
fieldsOfStudy:
- Computer Science
meta_key: 2006-greedy-layer-wise-training-of-deep-networks
numCitedBy: 3457
reading_status: TBD
ref_count: 25
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Greedy-Layer-Wise-Training-of-Deep-Networks-Bengio-Lamblin/355d44f53428b1ac4fb2ab468d593c720640e5bd?sort=total-citations
venue: NIPS
year: 2006
---

[semanticscholar url](https://www.semanticscholar.org/paper/Greedy-Layer-Wise-Training-of-Deep-Networks-Bengio-Lamblin/355d44f53428b1ac4fb2ab468d593c720640e5bd?sort=total-citations)

# Greedy Layer-Wise Training of Deep Networks

## Abstract

Complexity theory of circuits strongly suggests that deep architectures can be much more efficient (sometimes exponentially) than shallow architectures, in terms of computational elements required to represent some functions. Deep multi-layer neural networks have many levels of non-linearities allowing them to compactly represent highly non-linear and highly-varying functions. However, until recently it was not clear how to train such deep networks, since gradient-based optimization starting from random initialization appears to often get stuck in poor solutions. Hinton et al. recently introduced a greedy layer-wise unsupervised learning algorithm for Deep Belief Networks (DBN), a generative model with many layers of hidden causal variables. In the context of the above optimization problem, we study this algorithm empirically and explore variants to better understand its success and extend it to cases where the inputs are continuous or where the structure of the input distribution is not revealing enough about the variable to be predicted in a supervised task. Our experiments also confirm the hypothesis that the greedy layer-wise unsupervised training strategy mostly helps the optimization, by initializing weights in a region near a good local minimum, giving rise to internal distributed representations that are high-level abstractions of the input, bringing better generalization.

## Paper References

1. [A Fast Learning Algorithm for Deep Belief Nets](2006-a-fast-learning-algorithm-for-deep-belief-nets)
2. Scaling learning algorithms towards AI
3. Training MLPs layer by layer using an objective function for internal representations
4. Convex Neural Networks
5. The Curse of Highly Variable Functions for Local Kernel Machines
6. A Monte Carlo EM Approach for Partially Observable Diffusion Processes - Theory and Applications to Neural Networks
7. The Cascade-Correlation Learning Architecture
8. [Reducing the Dimensionality of Data with Neural Networks](2006-reducing-the-dimensionality-of-data-with-neural-networks)
9. Practical issues in temporal difference learning
10. [Training Products of Experts by Minimizing Contrastive Divergence](2002-training-products-of-experts-by-minimizing-contrastive-divergence)
11. Many-Layered Learning
12. The wake-sleep algorithm for unsupervised neural networks.
13. Exponential Family Harmoniums with an Application to Information Retrieval
14. Continuous restricted Boltzmann machine with an implementable training algorithm
15. Computational limitations of small-depth circuits
16. Circuit Complexity before the Dawn of the New Millennium
