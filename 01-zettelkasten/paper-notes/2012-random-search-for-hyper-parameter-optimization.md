---
title: Random Search for Hyper-Parameter Optimization
authors:
- J. Bergstra
- Yoshua Bengio
fieldsOfStudy:
- Computer Science
meta_key: 2012-random-search-for-hyper-parameter-optimization
numCitedBy: 5726
reading_status: TBD
ref_count: 39
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Random-Search-for-Hyper-Parameter-Optimization-Bergstra-Bengio/188e247506ad992b8bc62d6c74789e89891a984f?sort=total-citations
venue: J. Mach. Learn. Res.
year: 2012
---

# Random Search for Hyper-Parameter Optimization

## Abstract

Grid search and manual search are the most widely used strategies for hyper-parameter optimization. This paper shows empirically and theoretically that randomly chosen trials are more efficient for hyper-parameter optimization than trials on a grid. Empirical evidence comes from a comparison with a large previous study that used grid search and manual search to configure neural networks and deep belief networks. Compared with neural networks configured by a pure grid search, we find that random search over the same domain is able to find models that are as good or better within a small fraction of the computation time. Granting random search the same computational budget, random search finds better models by effectively searching a larger, less promising configuration space. Compared with deep belief networks configured by a thoughtful combination of manual search and grid search, purely random search over the same 32-dimensional configuration space found statistically equal performance on four of seven data sets, and superior performance on one of seven. A Gaussian process analysis of the function from hyper-parameters to validation set performance reveals that for most data sets only a few of the hyper-parameters really matter, but that different hyper-parameters are important on different data sets. This phenomenon makes grid search a poor choice for configuring algorithms for new data sets. Our analysis casts some light on why recent "High Throughput" methods achieve surprising success--they appear to search through a large number of hyper-parameters because most hyper-parameters do not matter much. We anticipate that growing interest in large hierarchical models will place an increasing burden on techniques for hyper-parameter optimization; this work shows that random search is a natural baseline against which to judge progress in the development of adaptive (sequential) hyper-parameter optimization algorithms.

## Paper References

1. Automated configuration of algorithms for solving hard computational problems
2. Random search for hyper-parameter optimization
3. [Sequential Model-Based Optimization for General Algorithm Configuration](2011-sequential-model-based-optimization-for-general-algorithm-configuration.md)
4. Simulation-Based Optimization with Stochastic Approximation Using Common Random Numbers
5. Choosing search heuristics by non-stationary reinforcement learning
6. A Direct Search Optimization Method That Models the Objective and Constraint Functions by Linear Interpolation
7. Quas-Monte Carlo Strategies for Stochastic Optimization
8. Reducing the Time Complexity of the Derandomized Evolution Strategy with Covariance Matrix Adaptation (CMA-ES)
9. [A Fast Learning Algorithm for Deep Belief Nets](2006-a-fast-learning-algorithm-for-deep-belief-nets.md)
10. [Gaussian Processes for Machine Learning](2009-gaussian-processes-for-machine-learning.md)
11. [Understanding the difficulty of training deep feedforward neural networks](2010-understanding-the-difficulty-of-training-deep-feedforward-neural-networks.md)
12. Parameter Screening and Optimisation for ILP using Designed Experiments
13. Response Surface Methodology for Optimizing Hyper Parameters
14. On the efficiency of certain quasi-random sequences of points in evaluating multi-dimensional integrals
15. A Simplex Method for Function Minimization
16. [Learning Deep Architectures for AI](2007-learning-deep-architectures-for-ai.md)
17. [Optimization by Simulated Annealing](1983-optimization-by-simulated-annealing.md)
18. Assessing Relevance determination methods using DELVE
19. Why Does Unsupervised Pre-training Help Deep Learning?
20. [Neural Networks for Pattern Recognition](1993-neural-networks-for-pattern-recognition.md)
21. [A Practical Guide to Training Restricted Boltzmann Machines](2012-a-practical-guide-to-training-restricted-boltzmann-machines.md)
22. [Gradient-based learning applied to document recognition](1998-gradient-based-learning-applied-to-document-recognition.md)
23. A Comparison of Three Methods for Selecting Values of Input Variables in the Analysis of Output From a Computer Code
24. An empirical evaluation of deep architectures on problems with many factors of variation
25. Implementation and tests of low-discrepancy sequences
26. GNU Scientific Library Reference Manual - Third Edition
27. [LIBSVM - A library for support vector machines](2011-libsvm-a-library-for-support-vector-machines.md)
28. [Extracting and composing robust features with denoising autoencoders](2008-extracting-and-composing-robust-features-with-denoising-autoencoders.md)
29. An economic method of computing LPτ-sequences
30. Adaptive Control Processes - A Guided Tour.
31. Global Optimization Algorithms -- Theory and Application
32. [Efficient BackProp](2012-efficient-backprop.md)
33. Valuation of mortgage-backed securities using Brownian bridges to reduce effective dimension
34. Rechenberg, Ingo, Evolutionsstrategie - Optimierung technischer Systeme nach Prinzipien der biologischen Evolution. 170 S. mit 36 Abb. Frommann‐Holzboog‐Verlag. Stuttgart 1973. Broschiert
35. Evolutionsstrategie - Optimierung technischer Systeme nach Prinzipien der biologischen Evolution
