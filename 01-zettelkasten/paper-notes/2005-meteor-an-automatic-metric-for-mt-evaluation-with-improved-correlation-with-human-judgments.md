---
title: METEOR - An Automatic Metric for MT Evaluation with Improved Correlation with Human Judgments
authors:
- S. Banerjee
- A. Lavie
fieldsOfStudy:
- Computer Science
meta_key: 2005-meteor-an-automatic-metric-for-mt-evaluation-with-improved-correlation-with-human-judgments
numCitedBy: 3017
reading_status: TBD
ref_count: 7
tags:
- gen-from-ref
- other-default
- paper
venue: IEEvaluation@ACL
year: 2005
---

# METEOR - An Automatic Metric for MT Evaluation with Improved Correlation with Human Judgments

## Abstract

We describe METEOR, an automatic metric for machine translation evaluation that is based on a generalized concept of unigram matching between the machineproduced translation and human-produced reference translations. Unigrams can be matched based on their surface forms, stemmed forms, and meanings; furthermore, METEOR can be easily extended to include more advanced matching strategies. Once all generalized unigram matches between the two strings have been found, METEOR computes a score for this matching using a combination of unigram-precision, unigram-recall, and a measure of fragmentation that is designed to directly capture how well-ordered the matched words in the machine translation are in relation to the reference. We evaluate METEOR by measuring the correlation between the metric scores and human judgments of translation quality. We compute the Pearson R correlation value between its scores and human quality assessments of the LDC TIDES 2003 Arabic-to-English and Chinese-to-English datasets. We perform segment-bysegment correlation, and show that METEOR gets an R correlation value of 0.347 on the Arabic data and 0.331 on the Chinese data. This is shown to be an improvement on using simply unigramprecision, unigram-recall and their harmonic F1 combination. We also perform experiments to show the relative contributions of the various mapping modules.

## Paper References

1. Automatic evaluation of machine translation quality using n-gram co-occurrence statistics
2. The significance of recall in automatic metrics for MT evaluation
3. Evaluation of machine translation and its evaluation
4. [Bleu - a Method for Automatic Evaluation of Machine Translation](2002-bleu-a-method-for-automatic-evaluation-of-machine-translation)
5. FEMTI - creating and using a framework for MT evaluation
6. Syntax-based Alignment of Multiple Translations - Extracting Paraphrases and Generating New Sentences
