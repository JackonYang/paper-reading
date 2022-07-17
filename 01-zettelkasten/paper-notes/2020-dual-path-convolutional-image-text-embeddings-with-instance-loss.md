---
title: Dual-path Convolutional Image-Text Embeddings with Instance Loss
authors:
- Zhedong Zheng
- Liang Zheng
- Michael Garrett
- Yi Yang
- Mingliang Xu
- Yi-Dong Shen
fieldsOfStudy:
- Computer Science
meta_key: 2020-dual-path-convolutional-image-text-embeddings-with-instance-loss
numCitedBy: 151
reading_status: TBD
ref_count: 92
tags:
- gen-from-ref
- other-default
- paper
venue: ACM Trans. Multim. Comput. Commun. Appl.
year: 2020
---

# Dual-path Convolutional Image-Text Embeddings with Instance Loss

## Abstract

Matching images and sentences demands a fine understanding of both modalities. In this article, we propose a new system to discriminatively embed the image and text to a shared visual-textual space. In this field, most existing works apply the ranking loss to pull the positive image/text pairs close and push the negative pairs apart from each other. However, directly deploying the ranking loss on heterogeneous features (i.e., text and image features) is less effective, because it is hard to find appropriate triplets at the beginning. So the naive way of using the ranking loss may compromise the network from learning inter-modal relationship. To address this problem, we propose the instance loss, which explicitly considers the intra-modal data distribution. It is based on an unsupervised assumption that each image/text group can be viewed as a class. So the network can learn the fine granularity from every image/text group. The experiment shows that the instance loss offers better weight initialization for the ranking loss, so that more discriminative embeddings can be learned. Besides, existing works usually apply the off-the-shelf features, i.e., word2vec and fixed visual feature. So in a minor contribution, this article constructs an end-to-end dual-path convolutional network to learn the image and text representations. End-to-end learning allows the system to directly learn from the data and fully utilize the supervision. On two generic retrieval datasets (Flickr30k and MSCOCO), experiments demonstrate that our method yields competitive accuracy compared to state-of-the-art methods. Moreover, in language-based person retrieval, we improve the state of the art by a large margin. The code has been made publicly available.

## Paper References

1. Modality-Invariant Image-Text Embedding for Image-Sentence Matching
2. [Learning Two-Branch Neural Networks for Image-Text Matching Tasks](2019-learning-two-branch-neural-networks-for-image-text-matching-tasks)
3. [Learning Deep Structure-Preserving Image-Text Embeddings](2016-learning-deep-structure-preserving-image-text-embeddings)
4. Identity-Aware Textual-Visual Matching with Latent Co-attention
5. [Stacked Cross Attention for Image-Text Matching](2018-stacked-cross-attention-for-image-text-matching)
6. Effective Multi-Modal Retrieval based on Stacked Auto-Encoders
7. A Discriminatively Learned CNN Embedding for Person Reidentification
8. Hierarchical Multimodal LSTM for Dense Visual-Semantic Embedding
9. Image Captioning with Deep Bidirectional LSTMs and Multi-Task Learning
10. Learning Deep Representations of Fine-Grained Visual Descriptions
11. Cross-Modal Retrieval via Deep and Bidirectional Representation Learning
12. [DeViSE - A Deep Visual-Semantic Embedding Model](2013-devise-a-deep-visual-semantic-embedding-model)
13. [VSE++ - Improved Visual-Semantic Embeddings](2017-vse-improved-visual-semantic-embeddings)
14. Learning a Recurrent Residual Fusion Network for Multimodal Matching
15. [Instance-Aware Image and Sentence Matching with Selective Multimodal LSTM](2017-instance-aware-image-and-sentence-matching-with-selective-multimodal-lstm)
16. [Learning Semantic Concepts and Order for Image and Sentence Matching](2018-learning-semantic-concepts-and-order-for-image-and-sentence-matching)
17. Framing Image Description as a Ranking Task - Data, Models and Evaluation Metrics (Extended Abstract)
18. Person Reidentification via Structural Deep Metric Learning
19. Modality-Dependent Cross-Media Retrieval
20. Associating neural word embeddings with deep image representations using Fisher Vectors
21. Look, Imagine and Match - Improving Textual-Visual Cross-Modal Retrieval with Generative Models
22. Cross-Modal Retrieval With CNN Visual Features - A New Baseline
23. Image Caption Generation with Part of Speech Guidance
24. [Linking Image and Text with 2-Way Nets](2017-linking-image-and-text-with-2-way-nets)
25. Deep Fragment Embeddings for Bidirectional Image Sentence Mapping
26. Show and Tell - Lessons Learned from the 2015 MSCOCO Image Captioning Challenge
27. [Show and tell - A neural image caption generator](2015-show-and-tell-a-neural-image-caption-generator)
28. Multimodal Convolutional Neural Networks for Matching Image and Sentence
29. [Deep Captioning with Multimodal Recurrent Neural Networks (m-RNN)](2015-deep-captioning-with-multimodal-recurrent-neural-networks-m-rnn)
30. [DeepLab - Semantic Image Segmentation with Deep Convolutional Nets, Atrous Convolution, and Fully Connected CRFs](2018-deeplab-semantic-image-segmentation-with-deep-convolutional-nets-atrous-convolution-and-fully-connected-crfs)
31. Large-Scale Cross-Modality Search via Collective Matrix Factorization Hashing
32. Cross-media semantic representation via bi-directional learning to rank
33. Cross-Modal Subspace Learning via Pairwise Constraints
34. Correspondence Autoencoders for Cross-Modal Retrieval
35. Deep correlation for matching images and text
36. Discriminative Bimodal Networks for Visual Localization and Detection with Natural Language Queries
37. A new approach to cross-modal multimedia retrieval
38. DeepReID - Deep Filter Pairing Neural Network for Person Re-identification
39. Leveraging Visual Question Answering for Image-Caption Ranking
40. [Dual Attention Networks for Multimodal Reasoning and Matching](2017-dual-attention-networks-for-multimodal-reasoning-and-matching)
41. Image Classification by Cross-Media Active Learning With Privileged Information
42. Unsupervised Person Re-identification
43. [Very Deep Convolutional Networks for Large-Scale Image Recognition](2014-vggnet.md)
44. Person Re-identification - Past, Present and Future
45. A New Evaluation Protocol and Benchmarking Results for Extendable Cross-media Retrieval
46. Multi-scale Deep Learning Architectures for Person Re-identification
47. Part-Based R-CNNs for Fine-Grained Category Detection
48. Unsupervised Semantic-Preserving Adversarial Hashing for Image Search
49. [Deep Residual Learning for Image Recognition](2015-resnet.md)
50. Discriminative Dictionary Learning With Common Label Alignment for Cross-Modal Retrieval
51. Shared Predictive Cross-Modal Deep Quantization
52. Twitter100k - A Real-World Dataset for Weakly Supervised Cross-Media Retrieval
53. Learning Coupled Feature Spaces for Cross-Modal Matching
54. Uncovering the Temporal Context for Video Question Answering
55. Learning Aligned Cross-Modal Representations from Weakly Aligned Data
56. Progressive Learning for Person Re-Identification With One Example
57. Improving Person Re-identification by Attribute and Identity Learning
58. [Microsoft COCO - Common Objects in Context](2014-microsoft-coco-common-objects-in-context)
59. Person Search with Natural Language Description
60. Multimodal Discriminative Binary Embedding for Large-Scale Cross-Modal Retrieval
61. Event Extraction via Dynamic Multi-Pooling Convolutional Neural Networks
62. Very Deep Convolutional Networks for Text Classification
63. Collecting Image Annotations Using Amazon's Mechanical Turk
64. Convolutional Neural Network Architectures for Matching Natural Language Sentences
65. Do Convolutional Networks need to be Deep for Text Classification ?
66. [ImageNet classification with deep convolutional neural networks](2012-alexnet.md)
67. A Multimedia Retrieval Framework Based on Semi-Supervised Ranking and Relevance Feedback
68. Query-Adaptive Hash Code Ranking for Large-Scale Multi-View Visual Search
69. Generalized Multiview Analysis - A discriminative latent space
70. Learning Label Preserving Binary Codes for Multimedia Retrieval
71. [ImageNet Large Scale Visual Recognition Challenge](2015-imagenet-large-scale-visual-recognition-challenge)
72. [Character-level Convolutional Networks for Text Classification](2015-character-level-convolutional-networks-for-text-classification)
73. RNN Fisher Vectors for Action Recognition and Image Annotation
74. [Convolutional Sequence to Sequence Learning](2017-convolutional-sequence-to-sequence-learning)
75. Flexible Multi-View Dimensionality Co-Reduction
76. [Google's Neural Machine Translation System - Bridging the Gap between Human and Machine Translation](2016-google-s-neural-machine-translation-system-bridging-the-gap-between-human-and-machine-translation)
77. [Convolutional Neural Networks for Sentence Classification](2014-convolutional-neural-networks-for-sentence-classification)
78. [Understanding the difficulty of training deep feedforward neural networks](2010-understanding-the-difficulty-of-training-deep-feedforward-neural-networks)
79. [From image descriptions to visual denotations - New similarity metrics for semantic inference over event descriptions](2014-from-image-descriptions-to-visual-denotations-new-similarity-metrics-for-semantic-inference-over-event-descriptions)
80. Canonical Correlation Analysis - An Overview with Application to Learning Methods
81. Framing image description as a ranking task
82. MatConvNet - Convolutional Neural Networks for MATLAB
83. [Long Short-Term Memory](1997-long-short-term-memory)
84. Evaluating Appearance Models for Recognition, Reacquisition, and Tracking
85. [Efficient Estimation of Word Representations in Vector Space](2013-efficient-estimation-of-word-representations-in-vector-space)
86. Alone versus In-a-group
87. [Recurrent neural network based language model](2010-recurrent-neural-network-based-language-model)
88. Paying More Attention to Saliency
89. [Improving Word Representations via Global Context and Multiple Word Prototypes](2012-improving-word-representations-via-global-context-and-multiple-word-prototypes)
