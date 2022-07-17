---
title: Co-Teaching-Robust Training
filesize_readable: 1.9 MB
meta_key: 2018-co-teaching-robust-training
meta_relpath: paper-extra-data/pdf-meta/2018-co-teaching-robust-training.yaml
pdf_relpath: paper-repo/pdfs/2018-Co-teaching-Robust%20Training.pdf
reading_status: TBD
tags:
- other-default
- paper
url_slug: 2018-Co-teaching-Robust%20Training
year: 2018
---

[pdf(local)](../../paper-repo/pdfs/2018-Co-teaching-Robust%20Training.pdf)

# Co-Teaching-Robust Training

recent studies on the memorization effects of deep neural networks show that they would first memorize training data of clean labels and then those of noisy labels.

理论前提：训练时，先学到 clean label，然后学 noisy label。所以，训练的早期，low loss 的数据，大概率是 clean label

同一个 model 的不同初始化版本，因为随机数的存在，在早期是可以提供不同的 view 的，所以，相互 sync 训练结果，有意义。
