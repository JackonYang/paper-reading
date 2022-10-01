---
title: Fast Matrix Factorization for Online Recommendation with Implicit Feedback
authors:
- Xiangnan He
- Hanwang Zhang
- Min-Yen Kan
- Tat-Seng Chua
fieldsOfStudy:
- Computer Science
meta_key: 2016-fast-matrix-factorization-for-online-recommendation-with-implicit-feedback
numCitedBy: 750
reading_status: TBD
ref_count: 49
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Fast-Matrix-Factorization-for-Online-Recommendation-He-Zhang/ab443bd7e732374caabb5785b8d37bbfc724c845?sort=total-citations
venue: SIGIR
year: 2016
---

[semanticscholar url](https://www.semanticscholar.org/paper/Fast-Matrix-Factorization-for-Online-Recommendation-He-Zhang/ab443bd7e732374caabb5785b8d37bbfc724c845?sort=total-citations)

# Fast Matrix Factorization for Online Recommendation with Implicit Feedback

## Abstract

This paper contributes improvements on both the effectiveness and efficiency of Matrix Factorization (MF) methods for implicit feedback. We highlight two critical issues of existing works. First, due to the large space of unobserved feedback, most existing works resort to assign a uniform weight to the missing data to reduce computational complexity. However, such a uniform assumption is invalid in real-world settings. Second, most methods are also designed in an offline setting and fail to keep up with the dynamic nature of online data. We address the above two issues in learning MF models from implicit feedback. We first propose to weight the missing data based on item popularity, which is more effective and flexible than the uniform-weight assumption. However, such a non-uniform weighting poses efficiency challenge in learning the model. To address this, we specifically design a new learning algorithm based on the element-wise Alternating Least Squares (eALS) technique, for efficiently optimizing a MF model with variably-weighted missing data. We exploit this efficiency to then seamlessly devise an incremental update strategy that instantly refreshes a MF model given new feedback. Through comprehensive experiments on two public datasets in both offline and online protocols, we show that our implemented, open-source (https://github.com/hexiangnan/sigir16-eals) eALS consistently outperforms state-of-the-art implicit MF methods.

## Paper References

1. Fast als-based matrix factorization for explicit and implicit feedback datasets
2. Effective Latent Models for Binary Feedback in Recommender Systems
3. Mind the gaps - weighting the unknown in large-scale one-class collaborative filtering
4. Improving pairwise learning for item recommendation from implicit feedback
5. Dynamic Matrix Factorization with Priors on Unknown Values
6. Online learning for collaborative filtering
7. [BPR - Bayesian Personalized Ranking from Implicit Feedback](2009-bpr-bayesian-personalized-ranking-from-implicit-feedback.md)
8. Online-updating regularized kernel matrix factorization models for large-scale recommender systems
9. Collaborative Filtering for Implicit Feedback Datasets
10. Fast context-aware recommendations with factorization machines
11. Learning Image and User Features for Recommendation in Social Networks
12. Real-time top-n recommendation in social streams
13. Advances in Collaborative Filtering
14. TriRank - Review-aware Explainable Recommendation by Modeling Aspects
15. Large-scale matrix factorization with distributed stochastic gradient descent
16. Discrete Collaborative Filtering
17. Predicting the popularity of web 2.0 items based on user comments
18. Training and testing of recommender systems on data missing not at random
19. Performance of recommender algorithms on top-n recommendation tasks
20. One-Class Collaborative Filtering
21. Collaborative Filtering and the Missing at Random Assumption
22. Comment-based multi-view clustering of web 2.0 items
23. Robust Non-negative Graph Embedding - Towards noisy data, unreliable graphs, and noisy labels
24. [Adaptive Subgradient Methods for Online Learning and Stochastic Optimization](2011-adaptive-subgradient-methods-for-online-learning-and-stochastic-optimization.md)
25. Google news personalization - scalable online collaborative filtering
26. Collaborative filtering with temporal dynamics
27. TencentRec - Real-time Stream Recommendation in Practice
28. [GloVe - Global Vectors for Word Representation](2014-glove-global-vectors-for-word-representation.md)
29. Iteration complexity of randomized block-coordinate descent methods for minimizing a composite function
30. Start from Scratch - Towards Automatically Identifying, Modeling, and Naming Visual Attributes
31. [Distributed Representations of Words and Phrases and their Compositionality](2013-distributed-representations-of-words-and-phrases-and-their-compositionality.md)
32. Attribute-Augmented Semantic Hierarchy - Towards a Unified Framework for Content-Based Image Retrieval
33. Multimedia Summarization for Social Events in Microblog Stream
34. Perception-Guided Multimodal Feature Fusion for Photo Aesthetics Assessment
35. Enhancing Video Event Recognition Using Automatically Constructed Semantic-Visual Knowledge Base
36. Machine Learning - The High Interest Credit Card of Technical Debt
37. Matrix multiplication via arithmetic progressions
38. ACM International Conference on Multimedia Retrieval (ICMR 2014)
39. Neural Word Embedding as Implicit Matrix Factorization
