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

## 03. Try Diffusion Model Products

策略：

1. 开源的 stable diffusion，自己跑起来，深度的把玩一下。包括：出图的速度、质量、稳定性，念咒语（prompt & 参数）的技巧、难度等。
2. 其他产品，看看别人分享的图片就差不多了。

知名产品 list:

- Google: Imagen
- OpenAI: Dall-e 2
- midjourney
- stable diffusion

体验 stable diffusion：

- 开源项目: https://github.com/AUTOMATIC1111/stable-diffusion-webui
- 开源的模型社区: https://civitai.com/ 。里面色图不少，网站默认是 safe 模式，不会显示，所以，打开是安全的。
- 教程: https://www.bilibili.com/video/BV1As4y127HW/?spm_id_from=333.788&vd_source=1697bbf64aa697e049f71ddb4140612c

体验感悟:

Stable Diffusion 做的非常好，特别是开源了模型。极大的促进了行业的发展，功德一件。

16G 内存的 Mac M1 Pro 一分钟出一张图。

看过再多，不如自己亲手画一张。用不了多久，到处都将是低垂的 AIGC 技术果实，很容易就能拿来变现或者娱乐自己。

关掉安全模式以后，civitai 里的模型，大部分都与福利姬相关，大部分模型下面也都会有涉黄图片。性，永远是推动技术发展的第一原动力。

深度学习模型赋予了 AI 创作的无限可能。但，需要审美好、懂设计的专业人士帮大家从无限可能中蒸馏出 awesome quality 的，犹如信息大爆炸的时代离不开推荐系统。

个人预判，“冲击 -> 重建 -> 新繁荣” 是不变的发展规律。AI 导致插画师失业，只是第一步的冲击。后面会重建大量的新就业新行业，至于新繁荣是什么，我还说不清楚。

## 04. continuing...
