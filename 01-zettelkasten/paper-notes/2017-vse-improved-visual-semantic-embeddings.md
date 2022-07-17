---
title: VSE++ - Improved Visual-Semantic Embeddings
authors:
- Fartash Faghri
- David J. Fleet
- J. Kiros
- S. Fidler
fieldsOfStudy:
- Computer Science
meta_key: 2017-vse-improved-visual-semantic-embeddings
numCitedBy: 151
reading_status: TBD
ref_count: 19
tags:
- gen-from-ref
- other-default
- paper
venue: ArXiv
year: 2017
---

# VSE++ - Improved Visual-Semantic Embeddings

## Abstract

This paper investigates the problem of image-caption retrieval using joint visualsemantic embeddings. We introduce a very simple change to the loss function used in the original formulation by Kiros et al. (2014), which leads to drastic improvements in the retrieval performance. In particular, the original paper uses the rank loss which computes the sum of violations across the negative training examples. Instead, we penalize the model according to the hardest negative examples. We then make several additional modifications according to the current best practices in image-caption retrieval. We showcase our model on the MS-COCO and Flickr30K datasets through comparisons and ablation studies. On MS-COCO, we improve caption retrieval by 21% in R@1 with respect to the original formulation. Our results outperform the state-of-the-art results by 8.8% in caption retrieval and 11.3% in image retrieval at R@1. On Flickr30K, we more than double R@1 as reported by Kiros et al. (2014) in both image and caption retrieval, and achieve near state-of-the-art performance. We further show that similar improvements also apply to the Order-embeddings by Vendrov et al. (2015) which builds on a similar loss function.

## Paper References

1. [Unifying Visual-Semantic Embeddings with Multimodal Neural Language Models](2014-unifying-visual-semantic-embeddings-with-multimodal-neural-language-models)
2. Framing Image Description as a Ranking Task - Data, Models and Evaluation Metrics (Extended Abstract)
3. [Order-Embeddings of Images and Language](2016-order-embeddings-of-images-and-language)
4. [Learning Two-Branch Neural Networks for Image-Text Matching Tasks](2019-learning-two-branch-neural-networks-for-image-text-matching-tasks)
5. Associating neural word embeddings with deep image representations using Fisher Vectors
6. Ask Your Neurons - A Neural-Based Approach to Answering Questions about Images
7. Visual Semantic Search - Retrieving Videos via Complex Textual Queries
8. [Deep Residual Learning for Image Recognition](2015-resnet.md)
9. [Instance-Aware Image and Sentence Matching with Selective Multimodal LSTM](2017-instance-aware-image-and-sentence-matching-with-selective-multimodal-lstm)
10. [Very Deep Convolutional Networks for Large-Scale Image Recognition](2014-vggnet.md)
11. [Aligning Books and Movies - Towards Story-Like Visual Explanations by Watching Movies and Reading Books](2015-aligning-books-and-movies-towards-story-like-visual-explanations-by-watching-movies-and-reading-books)
12. [Linking Image and Text with 2-Way Nets](2017-linking-image-and-text-with-2-way-nets)
13. [Dual Attention Networks for Multimodal Reasoning and Matching](2017-dual-attention-networks-for-multimodal-reasoning-and-matching)
14. [Microsoft COCO - Common Objects in Context](2014-microsoft-coco-common-objects-in-context)
15. Accurate, Large Minibatch SGD - Training ImageNet in 1 Hour
16. Grounded Compositional Semantics for Finding and Describing Images with Sentences
17. [Adam - A Method for Stochastic Optimization](2015-adam-a-method-for-stochastic-optimization)
18. [From image descriptions to visual denotations - New similarity metrics for semantic inference over event descriptions](2014-from-image-descriptions-to-visual-denotations-new-similarity-metrics-for-semantic-inference-over-event-descriptions)
19. Distributions in Statistics - Continuous Univariate Distributions-1 and 2
