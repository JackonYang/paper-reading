---
title: In Defense of Grid Features for Visual Question Answering
authors:
- Huaizu Jiang
- Ishan Misra
- Marcus Rohrbach
- E. Learned-Miller
- Xinlei Chen
fieldsOfStudy:
- Computer Science
meta_key: 2020-in-defense-of-grid-features-for-visual-question-answering
numCitedBy: 116
reading_status: TBD
ref_count: 64
tags:
- gen-from-ref
- other-default
- paper
venue: 2020 IEEE/CVF Conference on Computer Vision and Pattern Recognition (CVPR)
year: 2020
---

# In Defense of Grid Features for Visual Question Answering

## Abstract

Popularized as `bottom-up' attention, bounding box (or region) based visual features have recently surpassed vanilla grid-based convolutional features as the de facto standard for vision and language tasks like visual question answering (VQA). However, it is not clear whether the advantages of regions (e.g. better localization) are the key reasons for the success of bottom-up attention. In this paper, we revisit grid features for VQA, and find they can work surprisingly well -- running more than an order of magnitude faster with the same accuracy (e.g. if pre-trained in a similar fashion). Through extensive experiments, we verify that this observation holds true across different VQA models (reporting a state-of-the-art accuracy on VQA 2.0 test-std, 72.71), datasets, and generalizes well to other tasks like image captioning. As grid features make the model design and training process much simpler, this enables us to train them end-to-end and also use a more flexible network design. We learn VQA models end-to-end, from pixels directly to answers, and show that strong performance is achievable without using any region annotations in pre-training. We hope our findings help further improve the scientific understanding and the practical application of VQA. Code and features will be made available.

## Paper References

1. [Bottom-Up and Top-Down Attention for Image Captioning and Visual Question Answering](2018-bottom-up-and-top-down-attention-for-image-captioning-and-visual-question-answering)
2. [Making the V in VQA Matter - Elevating the Role of Image Understanding in Visual Question Answering](2017-making-the-v-in-vqa-matter-elevating-the-role-of-image-understanding-in-visual-question-answering)
3. Answer Them All! Toward Universal Visual Question Answering Models
4. Learning to Count Objects in Natural Images for Visual Question Answering
5. [Deep Modular Co-Attention Networks for Visual Question Answering](2019-deep-modular-co-attention-networks-for-visual-question-answering)
6. Beyond Bilinear - Generalized Multimodal Factorized High-Order Pooling for Visual Question Answering
7. [Unified Vision-Language Pre-Training for Image Captioning and VQA](2020-unified-vision-language-pre-training-for-image-captioning-and-vqa)
8. [Multimodal Compact Bilinear Pooling for Visual Question Answering and Visual Grounding](2016-multimodal-compact-bilinear-pooling-for-visual-question-answering-and-visual-grounding)
9. Towards VQA Models That Can Read
10. Tips and Tricks for Visual Question Answering - Learnings from the 2017 Challenge
11. [VQA - Visual Question Answering](2015-vqa-visual-question-answering)
12. [Show and tell - A neural image caption generator](2015-show-and-tell-a-neural-image-caption-generator)
13. [Feature Pyramid Networks for Object Detection](2017-feature-pyramid-networks-for-object-detection)
14. VizWiz Grand Challenge - Answering Visual Questions from Blind People
15. Interpretable Counting for Visual Question Answering
16. [Very Deep Convolutional Networks for Large-Scale Image Recognition](2015-very-deep-convolutional-networks-for-large-scale-image-recognition)
17. [UNITER - Learning UNiversal Image-TExt Representations](2019-uniter-learning-universal-image-text-representations)
18. [Visual Genome - Connecting Language and Vision Using Crowdsourced Dense Image Annotations](2016-visual-genome-connecting-language-and-vision-using-crowdsourced-dense-image-annotations)
19. [ViLBERT - Pretraining Task-Agnostic Visiolinguistic Representations for Vision-and-Language Tasks](2019-vilbert-pretraining-task-agnostic-visiolinguistic-representations-for-vision-and-language-tasks)
20. [UNITER - UNiversal Image-TExt Representation Learning](2020-uniter-universal-image-text-representation-learning)
21. [VisualBERT - A Simple and Performant Baseline for Vision and Language](2019-visualbert-a-simple-and-performant-baseline-for-vision-and-language)
22. Pythia v0.1 - the Winning Entry to the VQA Challenge 2018
23. [VL-BERT - Pre-training of Generic Visual-Linguistic Representations](2020-vl-bert-pre-training-of-generic-visual-linguistic-representations)
24. [Show, Attend and Tell - Neural Image Caption Generation with Visual Attention](2015-show-attend-and-tell-neural-image-caption-generation-with-visual-attention)
25. [Stacked Attention Networks for Image Question Answering](2016-stacked-attention-networks-for-image-question-answering)
26. [FiLM - Visual Reasoning with a General Conditioning Layer](2018-film-visual-reasoning-with-a-general-conditioning-layer)
27. [Attention is All you Need](2017-attention-is-all-you-need)
28. [Deep Residual Learning for Image Recognition](2015-resnet.md)
29. [BERT - Pre-training of Deep Bidirectional Transformers for Language Understanding](2019-bert.md)
30. [Aggregated Residual Transformations for Deep Neural Networks](2017-aggregated-residual-transformations-for-deep-neural-networks)
31. [Faster R-CNN - Towards Real-Time Object Detection with Region Proposal Networks](2015-faster-r-cnn-towards-real-time-object-detection-with-region-proposal-networks)
32. [Bilinear Attention Networks](2018-bilinear-attention-networks)
33. [Microsoft COCO - Common Objects in Context](2014-microsoft-coco-common-objects-in-context)
34. [Long-term recurrent convolutional networks for visual recognition and description](2015-long-term-recurrent-convolutional-networks-for-visual-recognition-and-description)
35. [CIDEr - Consensus-based image description evaluation](2015-cider-consensus-based-image-description-evaluation)
36. [SSD - Single Shot MultiBox Detector](2016-ssd-single-shot-multibox-detector)
37. [Focal Loss for Dense Object Detection](2020-focal-loss-for-dense-object-detection)
38. [Focal Loss for Dense Object Detection](2017-focal-loss-for-dense-object-detection)
39. [Deep Visual-Semantic Alignments for Generating Image Descriptions](2017-deep-visual-semantic-alignments-for-generating-image-descriptions)
40. Deformable ConvNets V2 - More Deformable, Better Results
41. [SPICE - Semantic Propositional Image Caption Evaluation](2016-spice-semantic-propositional-image-caption-evaluation)
42. Pyramid Scene Parsing Network
43. [LXMERT - Learning Cross-Modality Encoder Representations from Transformers](2019-lxmert-learning-cross-modality-encoder-representations-from-transformers)
44. [A simple neural network module for relational reasoning](2017-a-simple-neural-network-module-for-relational-reasoning)
45. [CLEVR - A Diagnostic Dataset for Compositional Language and Elementary Visual Reasoning](2017-clevr-a-diagnostic-dataset-for-compositional-language-and-elementary-visual-reasoning)
46. Unified Perceptual Parsing for Scene Understanding
47. [Adam - A Method for Stochastic Optimization](2015-adam-a-method-for-stochastic-optimization)
48. [GloVe - Global Vectors for Word Representation](2014-glove-global-vectors-for-word-representation)
49. [ImageNet - A large-scale hierarchical image database](2009-imagenet-a-large-scale-hierarchical-image-database)
50. Exploring Nearest Neighbor Approaches for Image Captioning
51. [Microsoft COCO Captions - Data Collection and Evaluation Server](2015-microsoft-coco-captions-data-collection-and-evaluation-server)
52. METEOR - An Automatic Metric for MT Evaluation with High Levels of Correlation with Human Judgments
53. [Bleu - a Method for Automatic Evaluation of Machine Translation](2002-bleu-a-method-for-automatic-evaluation-of-machine-translation)
54. YFCC100M - the new data in multimedia research
55. Symbol grounding problem
56. [Mask R-CNN](2020-mask-r-cnn)
57. Neural-Symbolic VQA - Disentangling Reasoning from Vision and Language Understanding
58. ReferItGame - Referring to Objects in Photographs of Natural Scenes
