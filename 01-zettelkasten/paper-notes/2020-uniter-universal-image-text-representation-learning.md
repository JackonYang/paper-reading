---
title: UNITER - UNiversal Image-TExt Representation Learning
authors:
- Yen-Chun Chen
- Linjie Li
- Licheng Yu
- Ahmed El Kholy
- Faisal Ahmed
- Zhe Gan
- Yu Cheng
- Jingjing Liu
fieldsOfStudy:
- Computer Science
meta_key: 2020-uniter-universal-image-text-representation-learning
numCitedBy: 608
reading_status: TBD
ref_count: 59
tags:
- gen-from-ref
- other-default
- paper
venue: ECCV
year: 2020
---

# UNITER - UNiversal Image-TExt Representation Learning

## Abstract

Joint image-text embedding is the bedrock for most Vision-and-Language (V+L) tasks, where multimodality inputs are simultaneously processed for joint visual and textual understanding. In this paper, we introduce UNITER, a UNiversal Image-TExt Representation, learned through large-scale pre-training over four image-text datasets (COCO, Visual Genome, Conceptual Captions, and SBU Captions), which can power heterogeneous downstream V+L tasks with joint multimodal embeddings. We design four pre-training tasks: Masked Language Modeling (MLM), Masked Region Modeling (MRM, with three variants), Image-Text Matching (ITM), and Word-Region Alignment (WRA). Different from previous work that applies joint random masking to both modalities, we use conditional masking on pre-training tasks (i.e., masked language/region modeling is conditioned on full observation of image/text). In addition to ITM for global image-text alignment, we also propose WRA via the use of Optimal Transport (OT) to explicitly encourage fine-grained alignment between words and image regions during pre-training. Comprehensive analysis shows that both conditional masking and OT-based WRA contribute to better pre-training. We also conduct a thorough ablation study to find an optimal combination of pre-training tasks. Extensive experiments show that UNITER achieves new state of the art across six V+L tasks (over nine datasets), including Visual Question Answering, Image-Text Retrieval, Referring Expression Comprehension, Visual Commonsense Reasoning, Visual Entailment, and NLVR$^2$. Code is available at this https URL.

## Paper References

1. [Unified Vision-Language Pre-Training for Image Captioning and VQA](2020-unified-vision-language-pre-training-for-image-captioning-and-vqa)
2. [Stacked Cross Attention for Image-Text Matching](2018-stacked-cross-attention-for-image-text-matching)
3. Behind the Scene - Revealing the Secrets of Pre-trained Vision-and-Language Models
4. [Unicoder-VL - A Universal Encoder for Vision and Language by Cross-modal Pre-training](2020-unicoder-vl-a-universal-encoder-for-vision-and-language-by-cross-modal-pre-training)
5. [Learning Deep Structure-Preserving Image-Text Embeddings](2016-learning-deep-structure-preserving-image-text-embeddings)
6. [MAttNet - Modular Attention Network for Referring Expression Comprehension](2018-mattnet-modular-attention-network-for-referring-expression-comprehension)
7. [ViLBERT - Pretraining Task-Agnostic Visiolinguistic Representations for Vision-and-Language Tasks](2019-vilbert-pretraining-task-agnostic-visiolinguistic-representations-for-vision-and-language-tasks)
8. [Large-Scale Adversarial Training for Vision-and-Language Representation Learning](2020-large-scale-adversarial-training-for-vision-and-language-representation-learning)
9. [Multimodal Compact Bilinear Pooling for Visual Question Answering and Visual Grounding](2016-multimodal-compact-bilinear-pooling-for-visual-question-answering-and-visual-grounding)
10. [VideoBERT - A Joint Model for Video and Language Representation Learning](2019-videobert-a-joint-model-for-video-and-language-representation-learning)
11. [Conceptual Captions - A Cleaned, Hypernymed, Image Alt-text Dataset For Automatic Image Captioning](2018-conceptual-captions-a-cleaned-hypernymed-image-alt-text-dataset-for-automatic-image-captioning)
12. Context Encoders - Feature Learning by Inpainting
13. Selfie - Self-supervised Pretraining for Image Embedding
14. [12-in-1 - Multi-Task Vision and Language Representation Learning](2020-12-in-1-multi-task-vision-and-language-representation-learning)
15. [LXMERT - Learning Cross-Modality Encoder Representations from Transformers](2019-lxmert-learning-cross-modality-encoder-representations-from-transformers)
16. [VisualBERT - A Simple and Performant Baseline for Vision and Language](2019-visualbert-a-simple-and-performant-baseline-for-vision-and-language)
17. Visual Entailment - A Novel Task for Fine-Grained Image Understanding
18. [VL-BERT - Pre-training of Generic Visual-Linguistic Representations](2020-vl-bert-pre-training-of-generic-visual-linguistic-representations)
19. [Fusion of Detected Objects in Text for Visual Question Answering](2019-fusion-of-detected-objects-in-text-for-visual-question-answering)
20. Graph Optimal Transport for Cross-Domain Alignment
21. [Bottom-Up and Top-Down Attention for Image Captioning and Visual Question Answering](2018-bottom-up-and-top-down-attention-for-image-captioning-and-visual-question-answering)
22. Unsupervised Representation Learning by Predicting Image Rotations
23. [Language Models are Unsupervised Multitask Learners](2019-language-models-are-unsupervised-multitask-learners)
24. [Attention is All you Need](2017-attention-is-all-you-need.md)
25. Unsupervised Learning of Visual Representations by Solving Jigsaw Puzzles
26. Contrastive Bidirectional Transformer for Temporal Representation Learning
27. Colorful Image Colorization
28. [ALBERT - A Lite BERT for Self-supervised Learning of Language Representations](2020-albert-a-lite-bert-for-self-supervised-learning-of-language-representations)
29. [VQA - Visual Question Answering](2015-vqa-visual-question-answering)
30. Learning Video Representations using Contrastive Bidirectional Transformer
31. [Bilinear Attention Networks](2018-bilinear-attention-networks)
32. [From Recognition to Cognition - Visual Commonsense Reasoning](2019-from-recognition-to-cognition-visual-commonsense-reasoning)
33. [XLNet - Generalized Autoregressive Pretraining for Language Understanding](2019-xlnet-generalized-autoregressive-pretraining-for-language-understanding)
34. [Deep Contextualized Word Representations](2018-deep-contextualized-word-representations)
35. [Dynamic Fusion With Intra- and Inter-Modality Attention Flow for Visual Question Answering](2019-dynamic-fusion-with-intra-and-inter-modality-attention-flow-for-visual-question-answering)
36. Im2Text - Describing Images Using 1 Million Captioned Photographs
37. [Google's Neural Machine Translation System - Bridging the Gap between Human and Machine Translation](2016-google-s-neural-machine-translation-system-bridging-the-gap-between-human-and-machine-translation)
38. NLVR2 Visual Bias Analysis
39. Learning Generative Models with Sinkhorn Divergences
40. Scaling Neural Machine Translation
41. [A Corpus for Reasoning about Natural Language Grounded in Photographs](2019-a-corpus-for-reasoning-about-natural-language-grounded-in-photographs)
42. Distilling the Knowledge in a Neural Network
43. [Automatic differentiation in PyTorch](2017-automatic-differentiation-in-pytorch)
44. A Fast Proximal Point Method for Wasserstein Distance
45. [Decoupled Weight Decay Regularization](2019-decoupled-weight-decay-regularization)
46. Improving GANs Using Optimal Transport
47. Revealing the Dark Secrets of BERT
48. Wasserstein Generative Adversarial Networks
49. Sinkhorn Distances - Lightspeed Computation of Optimal Transport
50. Computational Optimal Transport
