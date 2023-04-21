# Learning AIGC Models

hands on AIGC models using Pytorch and AI-compilers

# Goals

1. image generation - GANs
2. image generation - Diffusion Models
3. text generation - ChatGPT related
4. multi-modal - to be defined

# 学习过程

## 01. Learn GANs on coursera.org

- title: Generative Adversarial Networks (GANs) Specialization
- link: <https://www.coursera.org/specializations/generative-adversarial-networks-gans>
- notes: Build your very own GAN using PyTorch. [related code](https://github.com/amanchadha/coursera-gan-specialization)

时长：

1. 共 3 个 course，10 个 week，官方预估 10h/week。合计约 100h。
2. 如果跳过 optional，实测 3-4h/week。
3. 我用了 4 天。

点评：

1. 课程质量很高，既有理论，又有 coding，还有运行环境和 GPU。
2. 从 hello world 水平的 original GAN 开始，不停的换结构、换 loss 体验了 10 多个改进模型，理解的深度是不一样的。
3. 非常推荐

比较重要的 GANs Model：

- [x] original GAN
- [x] DCGAN
- [x] WGAN & WGAN-GP
- [x] Conditional GAN
- [x] Controllable GAN
- [x] StyleGAN
- [ ] BigGAN
- [x] Pix2Pix
- [x] CycleGAN

其他 GANs Model：

- [ ] SN-GAN
- [ ] InfoGAN
- [ ] ProteinGAN
- [ ] Pix2PixHD
- [ ] SRGAN (Super Resolution GAN)
- [ ] GauGAN
- [ ] MUNIT

## 02. Learn Diffusion Models - NIPS 2022 workshop

- title: NeurIPS 2022 Workshop-Diffusion and Score-Based Generative Models
- link: <https://www.youtube.com/watch?v=wMmqCMwuM2Q>
- notes: Uploaded Jan 18, 2023. 主讲人 Yang Song (宋飏) 在 OpenAI，师从 Stefano Ermon (DDIM 通讯作者)。

时长：

1. 视频 1h 30min
2. 我花了 10h。数学比较多，又想听懂基本概念和演进关系，很慢。

点评：

1. 目前从数学层面把 diffusion 的优势讲的最清晰的。质量堪比吴恩达讲 deep learning。
2. 动画做的也非常好。
3. 在 blog 里提供了 tutorial 的 jupyter notebooks。<https://yang-song.net/blog/2021/score/>
4. 作者疑似过于强调自己对 diffusion model 的贡献，甚至参考文献都不太提 DDPM

code:

- [ ] Score-based Generative Modeling (not GAN, but [code](https://colab.research.google.com/github/https-deeplearning-ai/GANs-Public/blob/master/C2W2_(Optional_Notebook)_Score_Based_Generative_Modeling.ipynb#scrollTo=YyQtV7155Nht) provided)

continuing...
