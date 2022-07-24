---
title: Pytorch Under The Hood
filesize_readable: 1.3 MB
meta_key: pytorch-under-the-hood
meta_relpath: paper-extra-data/pdf-meta/pytorch-under-the-hood.yaml
pdf_relpath: paper-repo/pdfs/PyTorch%20under%20the%20hood.pdf
reading_status: TBD
tags:
- gen-from-pdf
- paper
- pytorch
url_slug: PyTorch%20under%20the%20hood
---

[pdf(local)](../../paper-repo/pdfs/PyTorch%20under%20the%20hood.pdf)

# Pytorch Under The Hood

Created: 2022-06-22 00:46

## Notes

不仅学会了 pytorch 的底层原理，还入门了 python object，http 协议。很牛逼的 ppt。

对于 deep learning 的工程调优，帮助较大。

updated to the PyTorch v.1.0.1 version.

## PyTorch Tensor

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h3gvyfr358j20zc0o6dii.jpg)

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h3gvwxfzobj20ym0l4n0u.jpg)

## Python Object and Zero Copy

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h3grjm3kzlj20qt0inq4h.jpg)

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h3grkuxbetj214x0pzdhd.jpg)

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h3grmckyqvj20qi0iimys.jpg)

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h3grolj4dtj20qk0ic0ul.jpg)

## Tensor Storage

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h3gruip855j20q70hudho.jpg)

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h3grtuo78rj20q20i5gob.jpg)

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h3grvm8l9mj20q40ic0vw.jpg)

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h3grwydpyoj20qd0g9q4a.jpg)

## PyTorch JIT

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h3grfc8hggj215i0nr78d.jpg)

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h3gs5lmzjcj20qa0ecjsj.jpg)

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h3gsqhlsywj20qi0hvgn8.jpg)

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h3gsvdp0nwj218d0u0go0.jpg)

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h3gsvrldwbj218x0u0tb6.jpg)

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h3gsxu3xgij218f0u0n1p.jpg)

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h3gsyz3x8kj21880u0424.jpg)

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h3gszkjcatj21go0u041t.jpg)

## Serialization & Deploy

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h3gt1ths3vj21b90u0dj8.jpg)

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h3gt5qa1utj21810u043i.jpg)

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h3gt5e8szdj21e50u0gqy.jpg)

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h3gta7x925j21dj0u0799.jpg)

they never put that "production" code in production.

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h3gtch43qbj217a0u0dk6.jpg)

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h3gtk8qpiij217r0u0q7m.jpg)

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h3gtllpjw2j21a90u0tdd.jpg)

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h3gtnxziwoj219m0u076t.jpg)

## Using the Model in node.js

https://blog.christianperone.com/2018/10/pytorch-1-0-tracing-jit-and-libtorch-c-api-to-integrate-pytorch-into-nodejs/

![](https://tva1.sinaimg.cn/large/e6c9d24egy1h3gt7ayky9j21ak0m641p.jpg)
