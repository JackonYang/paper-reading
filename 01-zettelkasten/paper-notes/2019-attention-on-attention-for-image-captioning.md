---
title: Attention on Attention for Image Captioning
authors:
- Lun Huang
- Wenmin Wang
- Jie Chen
- Xiao-Yong Wei
fieldsOfStudy:
- Computer Science
meta_key: 2019-attention-on-attention-for-image-captioning
numCitedBy: 316
reading_status: TBD
ref_count: 48
tags:
- gen-from-ref
- other-default
- paper
venue: 2019 IEEE/CVF International Conference on Computer Vision (ICCV)
year: 2019
---

# Attention on Attention for Image Captioning

## Abstract

Attention mechanisms are widely used in current encoder/decoder frameworks of image captioning, where a weighted average on encoded vectors is generated at each time step to guide the caption decoding process. However, the decoder has little idea of whether or how well the attended vector and the given attention query are related, which could make the decoder give misled results. In this paper, we propose an Attention on Attention (AoA) module, which extends the conventional attention mechanisms to determine the relevance between attention results and queries. AoA first generates an information vector and an attention gate using the attention result and the current context, then adds another attention by applying element-wise multiplication to them and finally obtains the attended information, the expected useful knowledge. We apply AoA to both the encoder and the decoder of our image captioning model, which we name as AoA Network (AoANet). Experiments show that AoANet outperforms all previously published methods and achieves a new state-of-the-art performance of 129.8 CIDEr-D score on MS COCO Karpathy offline test split and 129.6 CIDEr-D (C40) score on the official online testing server. Code is available at https://github.com/husthuaan/AoANet.

## Paper References

1. [Knowing When to Look - Adaptive Attention via a Visual Sentinel for Image Captioning](2017-knowing-when-to-look-adaptive-attention-via-a-visual-sentinel-for-image-captioning)
2. Exploring Visual Relationship for Image Captioning
3. Recurrent Fusion Network for Image Captioning
4. [Review Networks for Caption Generation](2016-review-networks-for-caption-generation)
5. [Bottom-Up and Top-Down Attention for Image Captioning and Visual Question Answering](2018-bottom-up-and-top-down-attention-for-image-captioning-and-visual-question-answering)
6. SCA-CNN - Spatial and Channel-Wise Attention in Convolutional Networks for Image Captioning
7. [Attention is All you Need](2017-attention-is-all-you-need)
8. Less Is More - Picking Informative Frames for Video Captioning
9. Self-Critical Sequence Training for Image Captioning
10. [Boosting Image Captioning with Attributes](2017-boosting-image-captioning-with-attributes)
11. [Show and tell - A neural image caption generator](2015-show-and-tell-a-neural-image-caption-generator)
12. Multi-level Attention Networks for Visual Question Answering
13. [From captions to visual concepts and back](2015-from-captions-to-visual-concepts-and-back)
14. Semantic Compositional Networks for Visual Captioning
15. [Show, Attend and Tell - Neural Image Caption Generation with Visual Attention](2015-show-attend-and-tell-neural-image-caption-generation-with-visual-attention)
16. [Multimodal Compact Bilinear Pooling for Visual Question Answering and Visual Grounding](2016-multimodal-compact-bilinear-pooling-for-visual-question-answering-and-visual-grounding)
17. Auto-Encoding Scene Graphs for Image Captioning
18. [Stacked Attention Networks for Image Question Answering](2016-stacked-attention-networks-for-image-question-answering)
19. MSR-VTT - A Large Video Description Dataset for Bridging Video and Language
20. [SPICE - Semantic Propositional Image Caption Evaluation](2016-spice-semantic-propositional-image-caption-evaluation)
21. StyleNet - Generating Attractive Visual Captions with Styles
22. [Dynamic Fusion With Intra- and Inter-Modality Attention Flow for Visual Question Answering](2019-dynamic-fusion-with-intra-and-inter-modality-attention-flow-for-visual-question-answering)
23. [Faster R-CNN - Towards Real-Time Object Detection with Region Proposal Networks](2015-faster-r-cnn-towards-real-time-object-detection-with-region-proposal-networks)
24. [Deep Residual Learning for Image Recognition](2016-deep-residual-learning-for-image-recognition)
25. [CIDEr - Consensus-based image description evaluation](2015-cider-consensus-based-image-description-evaluation)
26. [Language Modeling with Gated Convolutional Networks](2017-language-modeling-with-gated-convolutional-networks)
27. Scheduled Sampling for Sequence Prediction with Recurrent Neural Networks
28. [Visual Genome - Connecting Language and Vision Using Crowdsourced Dense Image Annotations](2016-visual-genome-connecting-language-and-vision-using-crowdsourced-dense-image-annotations)
29. Connecting modalities - Semi-supervised segmentation and annotation of images using unaligned text corpora
30. [Adam - A Method for Stochastic Optimization](2015-adam-a-method-for-stochastic-optimization)
31. I2T - Image Parsing to Text Description
32. BabyTalk - Understanding and Generating Simple Image Descriptions
33. Corpus-Guided Sentence Generation of Natural Images
34. [Microsoft COCO - Common Objects in Context](2014-microsoft-coco-common-objects-in-context)
35. Relation Networks for Object Detection
36. [Learning Phrase Representations using RNN Encoder-Decoder for Statistical Machine Translation](2014-learning-phrase-representations-using-rnn-encoder-decoder-for-statistical-machine-translation)
37. Non-local Neural Networks
38. Min-Entropy Latent Model for Weakly Supervised Object Detection
39. [Compact Bilinear Pooling](2016-compact-bilinear-pooling)
40. The Dynamic Representation of Scenes
41. [ROUGE - A Package for Automatic Evaluation of Summaries](2004-rouge-a-package-for-automatic-evaluation-of-summaries)
42. Midge - Generating Image Descriptions From Computer Vision Detections
43. Control of goal-directed and stimulus-driven attention in the brain
44. [Bleu - a Method for Automatic Evaluation of Machine Translation](2002-bleu-a-method-for-automatic-evaluation-of-machine-translation)
45. C-MIL - Continuation Multiple Instance Learning for Weakly Supervised Object Detection
46. MUTAN - Multimodal Tucker Fusion for Visual Question Answering
47. [METEOR - An Automatic Metric for MT Evaluation with Improved Correlation with Human Judgments](2005-meteor-an-automatic-metric-for-mt-evaluation-with-improved-correlation-with-human-judgments)
