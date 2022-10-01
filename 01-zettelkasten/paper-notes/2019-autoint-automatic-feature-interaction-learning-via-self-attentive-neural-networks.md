---
title: AutoInt - Automatic Feature Interaction Learning via Self-Attentive Neural Networks
authors:
- Weiping Song
- Chence Shi
- Zhiping Xiao
- Zhijian Duan
- Yewen Xu
- Ming Zhang
- Jian Tang
fieldsOfStudy:
- Computer Science
meta_key: 2019-autoint-automatic-feature-interaction-learning-via-self-attentive-neural-networks
numCitedBy: 287
reading_status: TBD
ref_count: 43
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/AutoInt:-Automatic-Feature-Interaction-Learning-via-Song-Shi/08588a4e596b02f22ac77dc8300aaabc27cb66b4?sort=total-citations
venue: CIKM
year: 2019
---

[semanticscholar url](https://www.semanticscholar.org/paper/AutoInt:-Automatic-Feature-Interaction-Learning-via-Song-Shi/08588a4e596b02f22ac77dc8300aaabc27cb66b4?sort=total-citations)

# AutoInt - Automatic Feature Interaction Learning via Self-Attentive Neural Networks

## Abstract

Click-through rate (CTR) prediction, which aims to predict the probability of a user clicking on an ad or an item, is critical to many online applications such as online advertising and recommender systems. The problem is very challenging since (1) the input features (e.g., the user id, user age, item id, item category) are usually sparse and high-dimensional, and (2) an effective prediction relies on high-order combinatorial features (a.k.a. cross features), which are very time-consuming to hand-craft by domain experts and are impossible to be enumerated. Therefore, there have been efforts in finding low-dimensional representations of the sparse and high-dimensional raw features and their meaningful combinations. In this paper, we propose an effective and efficient method called the AutoInt to automatically learn the high-order feature interactions of input features. Our proposed algorithm is very general, which can be applied to both numerical and categorical input features. Specifically, we map both the numerical and categorical features into the same low-dimensional space. Afterwards, a multi-head self-attentive neural network with residual connections is proposed to explicitly model the feature interactions in the low-dimensional space. With different layers of the multi-head self-attentive neural networks, different orders of feature combinations of input features can be modeled. The whole model can be efficiently fit on large-scale raw data in an end-to-end fashion. Experimental results on four real-world datasets show that our proposed approach not only outperforms existing state-of-the-art approaches for prediction but also offers good explainability. Code is available at: \urlhttps://github.com/DeepGraphLearning/RecommenderSystems.

## Paper References

1. Product-Based Neural Networks for User Response Prediction
2. Deep Learning over Multi-field Categorical Data - - A Case Study on User Response Prediction
3. xDeepFM - Combining Explicit and Implicit Feature Interactions for Recommender Systems
4. Deep Interest Network for Click-Through Rate Prediction
5. Ad click prediction - a view from the trenches
6. [DeepFM - A Factorization-Machine based Neural Network for CTR Prediction](2017-deepfm-a-factorization-machine-based-neural-network-for-ctr-prediction.md)
7. [Deep & Cross Network for Ad Click Predictions](2017-deep-cross-network-for-ad-click-predictions.md)
8. NAIS - Neural Attentive Item Similarity Model for Recommendation
9. Practical Lessons from Predicting Clicks on Ads at Facebook
10. [Wide & Deep Learning for Recommender Systems](2016-wide-deep-learning-for-recommender-systems.md)
11. [Neural Factorization Machines for Sparse Predictive Analytics](2017-neural-factorization-machines-for-sparse-predictive-analytics.md)
12. TEM - Tree-enhanced Embedding Model for Explainable Recommendation
13. Latent Cross - Making Use of Context in Recurrent Recommender Systems
14. Gradient boosting factorization machines
15. Field-aware Factorization Machines for CTR Prediction
16. Predicting ad click-through rates via feature-based fully coupled interaction tensor factorization
17. Session-Based Social Recommendation via Dynamic Graph Attention Networks
18. Predicting response in mobile advertising with hierarchical importance-aware factorization machine
19. Predicting clicks - estimating the click-through rate for new ads
20. GB-CENT - Gradient Boosted Categorical Embedding and Numerical Trees
21. Factorizing personalized Markov chains for next-basket recommendation
22. Fast context-aware recommendations with factorization machines
23. [A Structured Self-attentive Sentence Embedding](2017-a-structured-self-attentive-sentence-embedding.md)
24. [Deep Neural Networks for YouTube Recommendations](2016-deep-neural-networks-for-youtube-recommendations.md)
25. Deep Crossing - Web-Scale Modeling without Manually Crafted Combinatorial Features
26. Factorization Machines
27. [Representation Learning - A Review and New Perspectives](2013-representation-learning-a-review-and-new-perspectives.md)
28. [Attention is All you Need](2017-attention-is-all-you-need.md)
29. [Adam - A Method for Stochastic Optimization](2015-adam-a-method-for-stochastic-optimization.md)
30. Higher-Order Factorization Machines
31. Polynomial Networks and Factorization Machines - New Insights and Efficient Training Algorithms
32. Web-Scale Bayesian Click-Through rate Prediction for Sponsored Search Advertising in Microsoft's Bing Search Engine
33. Unsupervised learning of hierarchical representations with convolutional deep belief networks
34. [Dropout - a simple way to prevent neural networks from overfitting](2014-dropout-a-simple-way-to-prevent-neural-networks-from-overfitting.md)
35. Key-Value Memory Networks for Directly Reading Documents
36. Deep Embedding Forest - Forest-based Serving with Deep Embedding Features
37. [Deep Residual Learning for Image Recognition](2016-deep-residual-learning-for-image-recognition.md)
38. [A Neural Attention Model for Abstractive Sentence Summarization](2015-a-neural-attention-model-for-abstractive-sentence-summarization.md)
39. [Neural Machine Translation by Jointly Learning to Align and Translate](2015-neural-machine-translation-by-jointly-learning-to-align-and-translate.md)
40. [Attentional Factorization Machines - Learning the Weight of Feature Interactions via Attention Networks](2017-attentional-factorization-machines-learning-the-weight-of-feature-interactions-via-attention-networks.md)
41. [Graph Attention Networks](2018-graph-attention-networks.md)
42. [TensorFlow - A system for large-scale machine learning](2016-tensorflow-a-system-for-large-scale-machine-learning.md)
43. [End-To-End Memory Networks](2015-end-to-end-memory-networks.md)
