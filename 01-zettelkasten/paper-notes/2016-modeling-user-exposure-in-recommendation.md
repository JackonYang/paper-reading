---
title: Modeling User Exposure in Recommendation
authors:
- Dawen Liang
- Laurent Charlin
- James McInerney
- D. Blei
fieldsOfStudy:
- Computer Science
meta_key: 2016-modeling-user-exposure-in-recommendation
numCitedBy: 249
reading_status: TBD
ref_count: 44
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Modeling-User-Exposure-in-Recommendation-Liang-Charlin/3b93f37e5af2f6f66af33720dc8d0e4de7dc4e65?sort=total-citations
venue: WWW
year: 2016
---

[semanticscholar url](https://www.semanticscholar.org/paper/Modeling-User-Exposure-in-Recommendation-Liang-Charlin/3b93f37e5af2f6f66af33720dc8d0e4de7dc4e65?sort=total-citations)

# Modeling User Exposure in Recommendation

## Abstract

Collaborative filtering analyzes user preferences for items (e.g., books, movies, restaurants, academic papers) by exploiting the similarity patterns across users. In implicit feedback settings, all the items, including the ones that a user did not consume, are taken into consideration. But this assumption does not accord with the common sense understanding that users have a limited scope and awareness of items. For example, a user might not have heard of a certain paper, or might live too far away from a restaurant to experience it. In the language of causal analysis (Imbens & Rubin, 2015), the assignment mechanism (i.e., the items that a user is exposed to) is a latent variable that may change for various user/item combinations. In this paper, we propose a new probabilistic approach that directly incorporates user exposure to items into collaborative filtering. The exposure is modeled as a latent variable and the model infers its value from data. In doing so, we recover one of the most successful state-of-the-art approaches as a special case of our model (Hu et al. 2008), and provide a plug-in method for conditioning exposure on various forms of exposure covariates (e.g., topics in text, venue locations). We show that our scalable inference algorithm outperforms existing benchmarks in four different domains both with and without exposure covariates.

## Paper References

1. Collaborative Filtering for Implicit Feedback Datasets
2. [BPR - Bayesian Personalized Ranking from Implicit Feedback](2009-bpr-bayesian-personalized-ranking-from-implicit-feedback.md)
3. A contextual-bandit approach to personalized news article recommendation
4. One-Class Collaborative Filtering
5. Response Aware Model-Based Collaborative Filtering
6. Improving pairwise learning for item recommendation from implicit feedback
7. Collaborative Filtering and the Missing at Random Assumption
8. Content-based recommendations with Poisson factorization
9. Counterfactual Risk Minimization
10. [Probabilistic Matrix Factorization](2007-probabilistic-matrix-factorization.md)
11. One-class collaborative filtering with random graphs
12. Collaborative topic modeling for recommending scientific articles
13. GUIDO IMBENS, DONALD RUBIN, Causal Inference for Statistics, Social, and Biomedical Sciences - An Introduction. New York - Cambridge University Press.
14. [Latent Dirichlet Allocation](2003-latent-dirichlet-allocation.md)
15. Causal Inference for Statistics, Social, and Biomedical Sciences - An Introduction
16. Factorization Machines
17. Friendship and mobility - user movement in location-based social networks
18. [Distributed Representations of Words and Phrases and their Compositionality](2013-distributed-representations-of-words-and-phrases-and-their-compositionality.md)
19. A View of the Em Algorithm that Justifies Incremental, Sparse, and other Variants
20. [Graphical Models, Exponential Families, and Variational Inference](2008-graphical-models-exponential-families-and-variational-inference.md)
21. Estimating causal effects of treatments in randomized and nonrandomized studies.
22. [Matrix Factorization Techniques for Recommender Systems](2009-matrix-factorization-techniques-for-recommender-systems.md)
23. Counterfactual reasoning and learning systems - the example of computational advertising
24. Zero-inflacted Poisson regression, with an application to defects in manufacturing
25. The Million Song Dataset
26. Spike and slab variable selection - Frequentist and Bayesian strategies
27. Causality - Models, Reasoning and Inference
28. Statistical Analysis With Missing Data
29. Data Analysis Using Regression and Multilevel/Hierarchical Models
30. [Pattern Recognition and Machine Learning](2007-pattern-recognition-and-machine-learning.md)
31. Graphical Models
32. Bayesian computation via the gibbs sampler and related markov chain monte carlo methods (with discus
33. Causal inference in statistics
34. WSABIE - Scaling Up to Large Vocabulary Image Annotation
35. [Maximum likelihood from incomplete data via the EM - algorithm plus discussions on the paper](1977-maximum-likelihood-from-incomplete-data-via-the-em-algorithm-plus-discussions-on-the-paper.md)
