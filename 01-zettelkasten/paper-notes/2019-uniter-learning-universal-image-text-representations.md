---
title: UNITER - Learning UNiversal Image-TExt Representations
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
meta_key: 2019-uniter-learning-universal-image-text-representations
numCitedBy: 288
reading_status: TBD
ref_count: 56
tags:
- gen-from-ref
- other-default
- paper
venue: ECCV 2020
year: 2019
---

# UNITER - Learning UNiversal Image-TExt Representations

## Abstract

Joint image-text embedding is the bedrock for most Vision-and-Language (V+L) tasks, where multimodality inputs are jointly processed for visual and textual understanding. In this paper, we introduce UNITER, a UNiversal Image-TExt Representation, learned through large-scale pre-training over four image-text datasets (COCO, Visual Genome, Conceptual Captions, and SBU Captions), which can power heterogeneous downstream V+L tasks with joint multimodal embeddings. We design three pre-training tasks: Masked Language Modeling (MLM), Image-Text Matching (ITM), and Masked Region Modeling (MRM, with three variants). Different from concurrent work on multimodal pre-training that apply joint random masking to both modalities, we use conditioned masking on pre-training tasks (i.e., masked language/region modeling is conditioned on full observation of image/text). Comprehensive analysis shows that conditioned masking yields better performance than unconditioned masking. We also conduct a thorough ablation study to find an optimal setting for the combination of pre-training tasks. Extensive experiments show that UNITER achieves new state of the art across six V+L tasks (over nine datasets), including Visual Question Answering, Image-Text Retrieval, Referring Expression Comprehension, Visual Commonsense Reasoning, Visual Entailment, and NLVR2.

## Paper References

1. [Unicoder-VL - A Universal Encoder for Vision and Language by Cross-modal Pre-training](2020-unicoder-vl-a-universal-encoder-for-vision-and-language-by-cross-modal-pre-training)
2. [Learning Deep Structure-Preserving Image-Text Embeddings](2016-learning-deep-structure-preserving-image-text-embeddings)
3. [Stacked Cross Attention for Image-Text Matching](2018-stacked-cross-attention-for-image-text-matching)
4. [ViLBERT - Pretraining Task-Agnostic Visiolinguistic Representations for Vision-and-Language Tasks](2019-vilbert-pretraining-task-agnostic-visiolinguistic-representations-for-vision-and-language-tasks)
5. [Multimodal Compact Bilinear Pooling for Visual Question Answering and Visual Grounding](2016-multimodal-compact-bilinear-pooling-for-visual-question-answering-and-visual-grounding)
6. [VideoBERT - A Joint Model for Video and Language Representation Learning](2019-videobert-a-joint-model-for-video-and-language-representation-learning)
7. [MAttNet - Modular Attention Network for Referring Expression Comprehension](2018-mattnet-modular-attention-network-for-referring-expression-comprehension)
8. Context Encoders - Feature Learning by Inpainting
9. [Deep Visual-Semantic Alignments for Generating Image Descriptions](2017-deep-visual-semantic-alignments-for-generating-image-descriptions)
10. [LXMERT - Learning Cross-Modality Encoder Representations from Transformers](2019-lxmert-learning-cross-modality-encoder-representations-from-transformers)
11. [12-in-1 - Multi-Task Vision and Language Representation Learning](2020-12-in-1-multi-task-vision-and-language-representation-learning)
12. [Deep Modular Co-Attention Networks for Visual Question Answering](2019-deep-modular-co-attention-networks-for-visual-question-answering)
13. [VisualBERT - A Simple and Performant Baseline for Vision and Language](2019-visualbert-a-simple-and-performant-baseline-for-vision-and-language)
14. Visual Entailment - A Novel Task for Fine-Grained Image Understanding
15. [VL-BERT - Pre-training of Generic Visual-Linguistic Representations](2020-vl-bert-pre-training-of-generic-visual-linguistic-representations)
16. [Conceptual Captions - A Cleaned, Hypernymed, Image Alt-text Dataset For Automatic Image Captioning](2018-conceptual-captions-a-cleaned-hypernymed-image-alt-text-dataset-for-automatic-image-captioning)
17. Unsupervised Visual Representation Learning by Context Prediction
18. Unsupervised Representation Learning by Predicting Image Rotations
19. Flickr30k Entities - Collecting Region-to-Phrase Correspondences for Richer Image-to-Sentence Models
20. [Language Models are Unsupervised Multitask Learners](2019-language-models-are-unsupervised-multitask-learners)
21. [Attention is All you Need](2017-transformer.md)
22. [BERT - Pre-training of Deep Bidirectional Transformers for Language Understanding](2019-bert.md)
23. [Bottom-Up and Top-Down Attention for Image Captioning and Visual Question Answering](2018-bottom-up-and-top-down-attention-for-image-captioning-and-visual-question-answering)
24. Unsupervised Learning of Visual Representations by Solving Jigsaw Puzzles
25. [Fusion of Detected Objects in Text for Visual Question Answering](2019-fusion-of-detected-objects-in-text-for-visual-question-answering)
26. [ALBERT - A Lite BERT for Self-supervised Learning of Language Representations](2020-albert-a-lite-bert-for-self-supervised-learning-of-language-representations)
27. [Bilinear Attention Networks](2018-bilinear-attention-networks)
28. [XLNet - Generalized Autoregressive Pretraining for Language Understanding](2019-xlnet-generalized-autoregressive-pretraining-for-language-understanding)
29. [Visual Genome - Connecting Language and Vision Using Crowdsourced Dense Image Annotations](2016-visual-genome-connecting-language-and-vision-using-crowdsourced-dense-image-annotations)
30. [From Recognition to Cognition - Visual Commonsense Reasoning](2019-from-recognition-to-cognition-visual-commonsense-reasoning)
31. Colorful Image Colorization
32. Learning Video Representations using Contrastive Bidirectional Transformer
33. [Deep Contextualized Word Representations](2018-deep-contextualized-word-representations)
34. Learning Generative Models with Sinkhorn Divergences
35. [Modeling Context in Referring Expressions](2016-modeling-context-in-referring-expressions)
36. NLVR2 Visual Bias Analysis
37. [GQA - A New Dataset for Real-World Visual Reasoning and Compositional Question Answering](2019-gqa-a-new-dataset-for-real-world-visual-reasoning-and-compositional-question-answering)
38. [Microsoft COCO - Common Objects in Context](2014-microsoft-coco-common-objects-in-context)
39. Scaling Neural Machine Translation
40. [Google's Neural Machine Translation System - Bridging the Gap between Human and Machine Translation](2016-google-s-neural-machine-translation-system-bridging-the-gap-between-human-and-machine-translation)
41. Im2Text - Describing Images Using 1 Million Captioned Photographs
42. Distilling the Knowledge in a Neural Network
43. [RoBERTa - A Robustly Optimized BERT Pretraining Approach](2019-roberta-a-robustly-optimized-bert-pretraining-approach)
44. [A Corpus for Reasoning about Natural Language Grounded in Photographs](2019-a-corpus-for-reasoning-about-natural-language-grounded-in-photographs)
45. Revealing the Dark Secrets of BERT
46. [Decoupled Weight Decay Regularization](2019-decoupled-weight-decay-regularization)
47. Improving GANs Using Optimal Transport
48. [Automatic differentiation in PyTorch](2017-automatic-differentiation-in-pytorch)
49. A Fast Proximal Point Method for Wasserstein Distance
50. A Fast Proximal Point Method for Computing Wasserstein Distance
51. Sinkhorn Distances - Lightspeed Computation of Optimal Transport
52. Computational Optimal Transport
53. ReferItGame - Referring to Objects in Photographs of Natural Scenes
54. Selfie - Self-supervised Pretraining for Image Embedding
55. Wasserstein Generative Adversarial Networks
