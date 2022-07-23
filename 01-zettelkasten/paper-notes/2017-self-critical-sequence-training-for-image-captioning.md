---
title: Self-Critical Sequence Training for Image Captioning
authors:
- Steven J. Rennie
- E. Marcheret
- Youssef Mroueh
- Jerret Ross
- Vaibhava Goel
fieldsOfStudy:
- Computer Science
meta_key: 2017-self-critical-sequence-training-for-image-captioning
numCitedBy: 1045
reading_status: TBD
ref_count: 30
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Self-Critical-Sequence-Training-for-Image-Rennie-Marcheret/6c8353697cdbb98dfba4f493875778c4286d3e3a?sort=total-citations
venue: 2017 IEEE Conference on Computer Vision and Pattern Recognition (CVPR)
year: 2017
---

[semanticscholar url](https://www.semanticscholar.org/paper/Self-Critical-Sequence-Training-for-Image-Rennie-Marcheret/6c8353697cdbb98dfba4f493875778c4286d3e3a?sort=total-citations)

# Self-Critical Sequence Training for Image Captioning

## Abstract

Recently it has been shown that policy-gradient methods for reinforcement learning can be utilized to train deep end-to-end systems directly on non-differentiable metrics for the task at hand. In this paper we consider the problem of optimizing image captioning systems using reinforcement learning, and show that by carefully optimizing our systems using the test metrics of the MSCOCO task, significant gains in performance can be realized. Our systems are built using a new optimization approach that we call self-critical sequence training (SCST). SCST is a form of the popular REINFORCE algorithm that, rather than estimating a baseline to normalize the rewards and reduce variance, utilizes the output of its own test-time inference algorithm to normalize the rewards it experiences. Using this approach, estimating the reward signal (as actor-critic methods must do) and estimating normalization (as REINFORCE algorithms typically do) is avoided, while at the same time harmonizing the model with respect to its test-time inference procedure. Empirically we find that directly optimizing the CIDEr metric with SCST and greedy decoding at test-time is highly effective. Our results on the MSCOCO evaluation sever establish a new state-of-the-art on the task, improving the best result in terms of CIDEr from 104.9 to 114.7.

## Paper References

1. Professor Forcing - A New Algorithm for Training Recurrent Networks
2. High-Dimensional Continuous Control Using Generalized Advantage Estimation
3. Show and Tell - Lessons Learned from the 2015 MSCOCO Image Captioning Challenge
4. [Adam - A Method for Stochastic Optimization](2015-adam-a-method-for-stochastic-optimization)
5. Scheduled Sampling for Sequence Prediction with Recurrent Neural Networks
6. [Show and tell - A neural image caption generator](2015-show-and-tell-a-neural-image-caption-generator)
7. [Deep Residual Learning for Image Recognition](2015-resnet.md)
8. Neural Variational Inference and Learning in Belief Networks
9. [Simple statistical gradient-following algorithms for connectionist reinforcement learning](2004-simple-statistical-gradient-following-algorithms-for-connectionist-reinforcement-learning)
10. [Show, Attend and Tell - Neural Image Caption Generation with Visual Attention](2015-show-attend-and-tell-neural-image-caption-generation-with-visual-attention)
11. Sequence Level Training with Recurrent Neural Networks
12. [Reinforcement Learning - An Introduction](2005-reinforcement-learning-an-introduction)
13. [Long Short-Term Memory](1997-long-short-term-memory)
14. Reinforcement Learning Neural Turing Machines
15. [Deep Visual-Semantic Alignments for Generating Image Descriptions](2017-deep-visual-semantic-alignments-for-generating-image-descriptions)
16. [Learning Phrase Representations using RNN Encoder-Decoder for Statistical Machine Translation](2014-learning-phrase-representations-using-rnn-encoder-decoder-for-statistical-machine-translation)
17. [CIDEr - Consensus-based image description evaluation](2015-cider-consensus-based-image-description-evaluation)
18. [Microsoft COCO - Common Objects in Context](2014-microsoft-coco-common-objects-in-context)
19. Context models and out-of-context objects
20. [ROUGE - A Package for Automatic Evaluation of Summaries](2004-rouge-a-package-for-automatic-evaluation-of-summaries)
21. [Bleu - a Method for Automatic Evaluation of Machine Translation](2002-bleu-a-method-for-automatic-evaluation-of-machine-translation)
22. [METEOR - An Automatic Metric for MT Evaluation with Improved Correlation with Human Judgments](2005-meteor-an-automatic-metric-for-mt-evaluation-with-improved-correlation-with-human-judgments)
23. An Actor-Critic Algorithm for Sequence Prediction
