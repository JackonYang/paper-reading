---
title: Neural Factorization Machines for Sparse Predictive Analytics
authors:
- Xiangnan He
- Tat-Seng Chua
fieldsOfStudy:
- Computer Science
meta_key: 2017-neural-factorization-machines-for-sparse-predictive-analytics
numCitedBy: 854
reading_status: TBD
ref_count: 45
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Neural-Factorization-Machines-for-Sparse-Predictive-He-Chua/3d1f9a530e710fdd4e2313bda4c8a1f574e60ab6?sort=total-citations
venue: SIGIR
year: 2017
---

[semanticscholar url](https://www.semanticscholar.org/paper/Neural-Factorization-Machines-for-Sparse-Predictive-He-Chua/3d1f9a530e710fdd4e2313bda4c8a1f574e60ab6?sort=total-citations)

# Neural Factorization Machines for Sparse Predictive Analytics

## Abstract

Many predictive tasks of web applications need to model categorical variables, such as user IDs and demographics like genders and occupations. To apply standard machine learning techniques, these categorical predictors are always converted to a set of binary features via one-hot encoding, making the resultant feature vector highly sparse. To learn from such sparse data effectively, it is crucial to account for the interactions between features. Factorization Machines (FMs) are a popular solution for efficiently using the second-order feature interactions. However, FM models feature interactions in a linear way, which can be insufficient for capturing the non-linear and complex inherent structure of real-world data. While deep neural networks have recently been applied to learn non-linear feature interactions in industry, such as the Wide&Deep by Google and DeepCross by Microsoft, the deep structure meanwhile makes them difficult to train. In this paper, we propose a novel model Neural Factorization Machine (NFM) for prediction under sparse settings. NFM seamlessly combines the linearity of FM in modelling second-order feature interactions and the non-linearity of neural network in modelling higher-order feature interactions. Conceptually, NFM is more expressive than FM since FM can be seen as a special case of NFM without hidden layers. Empirical results on two regression tasks show that with one hidden layer only, NFM significantly outperforms FM with a 7.3% relative improvement. Compared to the recent deep learning methods Wide&Deep and DeepCross, our NFM uses a shallower structure but offers better performance, being much easier to train and tune in practice.

## Paper References

1. Deep Learning over Multi-field Categorical Data - - A Case Study on User Response Prediction
2. [Wide & Deep Learning for Recommender Systems](2016-wide-deep-learning-for-recommender-systems.md)
3. Exponential Machines
4. [Factorization Machines with libFM](2012-factorization-machines-with-libfm.md)
5. Neural Collaborative Filtering
6. Field-aware Factorization Machines for CTR Prediction
7. Predicting response in mobile advertising with hierarchical importance-aware factorization machine
8. [Fast Matrix Factorization for Online Recommendation with Implicit Feedback](2016-fast-matrix-factorization-for-online-recommendation-with-implicit-feedback.md)
9. Factorization Machines
10. Exploiting ranking factorization machines for microblog retrieval
11. Co-factorization machines - modeling user interests and predicting individual decisions in Twitter
12. A Generic Coordinate Descent Framework for Learning from Implicit Feedback
13. Learning Hierarchical Representation Model for NextBasket Recommendation
14. Polynomial Networks and Factorization Machines - New Insights and Efficient Training Algorithms
15. Higher-Order Factorization Machines
16. Deep CTR Prediction in Display Advertising
17. [BPR - Bayesian Personalized Ranking from Implicit Feedback](2009-bpr-bayesian-personalized-ranking-from-implicit-feedback.md)
18. Fast context-aware recommendations with factorization machines
19. Cross-Platform App Recommendation by Jointly Modeling Ratings and Texts
20. Deep Crossing - Web-Scale Modeling without Manually Crafted Combinatorial Features
21. Visual Classification by ℓ1-Hypergraph Modeling
22. [Batch Normalization - Accelerating Deep Network Training by Reducing Internal Covariate Shift](2015-batch-normalization-accelerating-deep-network-training-by-reducing-internal-covariate-shift.md)
23. CORE - Context-Aware Open Relation Extraction with Factorization Machines
24. [Factorization meets the neighborhood - a multifaceted collaborative filtering model](2008-factorization-meets-the-neighborhood-a-multifaceted-collaborative-filtering-model.md)
25. [Dropout - a simple way to prevent neural networks from overfitting](2014-dropout-a-simple-way-to-prevent-neural-networks-from-overfitting.md)
26. [Deep Residual Learning for Image Recognition](2016-deep-residual-learning-for-image-recognition.md)
27. Why Does Unsupervised Pre-training Help Deep Learning?
28. Scalable Semi-Supervised Learning by Efficient Anchor Graph Regularization
29. Predicting the popularity of web 2.0 items based on user comments
30. Play and Rewind - Optimizing Binary Representations of Videos by Self-Supervised Temporal Hashing
31. Learning Visual Semantic Relationships for Efficient Visual Retrieval
32. Discrete Collaborative Filtering
33. Item Silk Road - Recommending Items from Information Domains to Social Users
34. A Mathematical Framework for Feature Selection from Real-World Data with Non-Linear Observations
35. Classification by Retrieval - Binarizing Data and Classifiers
36. [Adaptive Subgradient Methods for Online Learning and Stochastic Optimization](2011-adaptive-subgradient-methods-for-online-learning-and-stochastic-optimization.md)
37. Context-aware Image Tweet Modelling and Recommendation
38. Attentive Collaborative Filtering - Multimedia Recommendation with Item- and Component-Level Attention
39. The MovieLens Datasets - History and Context
40. Real-Time Local Event Detection in GeoTagged Tweet Streams
41. GeoBurst - Real-Time Local Event Detection in Geo-Tagged Tweet Streams
42. Attribute-augmented semantic hierarchy - towards bridging semantic gap and intention gap in image retrieval
43. Frappe - Understanding the Usage and Perception of Mobile App Recommendations In-The-Wild
44. [Attentional Factorization Machines - Learning the Weight of Feature Interactions via Attention Networks](2017-attentional-factorization-machines-learning-the-weight-of-feature-interactions-via-attention-networks.md)
