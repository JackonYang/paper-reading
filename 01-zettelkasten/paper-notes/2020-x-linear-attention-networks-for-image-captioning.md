---
title: X-Linear Attention Networks for Image Captioning
authors:
- Yingwei Pan
- Ting Yao
- Yehao Li
- Tao Mei
fieldsOfStudy:
- Computer Science
meta_key: 2020-x-linear-attention-networks-for-image-captioning
numCitedBy: 161
reading_status: TBD
ref_count: 45
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/X-Linear-Attention-Networks-for-Image-Captioning-Pan-Yao/4adfa7b83342b77c830f2b0f6fc1b784c21e7ed0?sort=total-citations
venue: 2020 IEEE/CVF Conference on Computer Vision and Pattern Recognition (CVPR)
year: 2020
---

[semanticscholar url](https://www.semanticscholar.org/paper/X-Linear-Attention-Networks-for-Image-Captioning-Pan-Yao/4adfa7b83342b77c830f2b0f6fc1b784c21e7ed0?sort=total-citations)

# X-Linear Attention Networks for Image Captioning

## Abstract

Recent progress on fine-grained visual recognition and visual question answering has featured Bilinear Pooling, which effectively models the 2nd order interactions across multi-modal inputs. Nevertheless, there has not been evidence in support of building such interactions concurrently with attention mechanism for image captioning. In this paper, we introduce a unified attention block --- X-Linear attention block, that fully employs bilinear pooling to selectively capitalize on visual information or perform multi-modal reasoning. Technically, X-Linear attention block simultaneously exploits both the spatial and channel-wise bilinear attention distributions to capture the 2$^{nd}$ order interactions between the input single-modal or multi-modal features. Higher and even infinity order feature interactions are readily modeled through stacking multiple X-Linear attention blocks and equipping the block with Exponential Linear Unit (ELU) in a parameter-free fashion, respectively. Furthermore, we present X-Linear Attention Networks (dubbed as X-LAN) that novelly integrates X-Linear attention block(s) into image encoder and sentence decoder of image captioning model to leverage higher order intra- and inter-modal interactions. The experiments on COCO benchmark demonstrate that our X-LAN obtains to-date the best published CIDEr performance of 132.0% on COCO Karpathy test split. When further endowing Transformer with X-Linear attention blocks, CIDEr is boosted up to 132.8%. Source code is available at https://github.com/Panda-Peter/image-captioning.

## Paper References

1. [Bilinear Attention Networks](2018-bilinear-attention-networks)
2. [Multimodal Compact Bilinear Pooling for Visual Question Answering and Visual Grounding](2016-multimodal-compact-bilinear-pooling-for-visual-question-answering-and-visual-grounding)
3. [Bottom-Up and Top-Down Attention for Image Captioning and Visual Question Answering](2018-bottom-up-and-top-down-attention-for-image-captioning-and-visual-question-answering)
4. Hierarchical Bilinear Pooling for Fine-Grained Visual Recognition
5. [Knowing When to Look - Adaptive Attention via a Visual Sentinel for Image Captioning](2017-knowing-when-to-look-adaptive-attention-via-a-visual-sentinel-for-image-captioning)
6. Squeeze-and-Excitation Networks
7. Pointing Novel Objects in Image Captioning
8. Exploring Visual Relationship for Image Captioning
9. [Attention on Attention for Image Captioning](2019-attention-on-attention-for-image-captioning)
10. Squeeze-and-Excitation Networks
11. Bilinear CNN Models for Fine-Grained Visual Recognition
12. Look Back and Predict Forward in Image Captioning
13. [Boosting Image Captioning with Attributes](2017-boosting-image-captioning-with-attributes)
14. [Compact Bilinear Pooling](2016-compact-bilinear-pooling)
15. Recurrent Fusion Network for Image Captioning
16. Describing Multimedia Content Using Attention-Based Encoder-Decoder Networks
17. Incorporating Copying Mechanism in Image Captioning for Learning Novel Objects
18. Convolutional Auto-encoding of Sentence Topics for Image Paragraph Generation
19. [Attention is All you Need](2017-transformer.md)
20. [Image Captioning with Semantic Attention](2016-image-captioning-with-semantic-attention)
21. Auto-Encoding Scene Graphs for Image Captioning
22. Hierarchy Parsing for Image Captioning
23. [Show, Attend and Tell - Neural Image Caption Generation with Visual Attention](2015-show-attend-and-tell-neural-image-caption-generation-with-visual-attention)
24. [Visual Genome - Connecting Language and Vision Using Crowdsourced Dense Image Annotations](2016-visual-genome-connecting-language-and-vision-using-crowdsourced-dense-image-annotations)
25. Explain Images with Multimodal Recurrent Neural Networks
26. [Show and tell - A neural image caption generator](2015-show-and-tell-a-neural-image-caption-generator)
27. [Language Modeling with Gated Convolutional Networks](2017-language-modeling-with-gated-convolutional-networks)
28. [Faster R-CNN - Towards Real-Time Object Detection with Region Proposal Networks](2015-faster-r-cnn.md)
29. [Deep Visual-Semantic Alignments for Generating Image Descriptions](2017-deep-visual-semantic-alignments-for-generating-image-descriptions)
30. [Deep Residual Learning for Image Recognition](2015-resnet.md)
31. [Self-Critical Sequence Training for Image Captioning](2017-self-critical-sequence-training-for-image-captioning)
32. [Sequence to Sequence Learning with Neural Networks](2014-sequence-to-sequence-learning-with-neural-networks)
33. [Microsoft COCO - Common Objects in Context](2014-microsoft-coco-common-objects-in-context)
34. [Conceptual Captions - A Cleaned, Hypernymed, Image Alt-text Dataset For Automatic Image Captioning](2018-conceptual-captions-a-cleaned-hypernymed-image-alt-text-dataset-for-automatic-image-captioning)
35. [CIDEr - Consensus-based image description evaluation](2015-cider-consensus-based-image-description-evaluation)
36. [SPICE - Semantic Propositional Image Caption Evaluation](2016-spice-semantic-propositional-image-caption-evaluation)
37. Continuously Differentiable Exponential Linear Units
38. [Adam - A Method for Stochastic Optimization](2015-adam-a-method-for-stochastic-optimization)
39. [ImageNet - A large-scale hierarchical image database](2009-imagenet-a-large-scale-hierarchical-image-database)
40. [ROUGE - A Package for Automatic Evaluation of Summaries](2004-rouge-a-package-for-automatic-evaluation-of-summaries)
41. [Bleu - a Method for Automatic Evaluation of Machine Translation](2002-bleu-a-method-for-automatic-evaluation-of-machine-translation)
42. [METEOR - An Automatic Metric for MT Evaluation with Improved Correlation with Human Judgments](2005-meteor-an-automatic-metric-for-mt-evaluation-with-improved-correlation-with-human-judgments)
