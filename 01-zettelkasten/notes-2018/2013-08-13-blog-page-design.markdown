---
layout: post
title: "博客页面原型设计"
date: 2013-08-13 10:30
comments: true
categories: project
---

使用 octopress 搭建个人博客，重新设计前端页面的主题和展示样式.
遵循形式为内容服务的原则。

#### 基本元素

- banner
- navigation
- 博客摘要与详细内容
- 最近发表、标签索引等扩展信息
- footer

<!--more-->

#### banner 设计与实现

banner 代码位于 `source/_includes/custom/header.html`

2 种设计风格：

- 简洁风 -- 个人头像/logo + name + 简要介绍
- 秀  -- 大幅 banner 图片，爱因斯坦头像

#### navigation 导航栏

需要专门的导航栏么？

需要以下几种页面信息：

- blog
- about
- rss订阅
- 分类浏览

博客内容的导航--目录，参考
http://www.zfanw.com/blog/zencoding-vim-tutorial-chinese.html

#### 博客摘要与详细信息

- 发表时间
- 题目
- 文章摘要/完整内容
- 分类
- 标签
- 阅读数
- 评论
- 喜欢
- 分享

读者首先关注当前文章，所以，应该突出当前文章的题目、时间、概要。  
我的博客当前不存在太多的评论，无法获取阅读数，所以，不予展示。

题目与时间靠前展示，概要随后，最后展示分类和标签信息。

为了响应式和布局方便，
题目和时间是否需要分行展示?
分类和标签信息是否需要分行展示?

#### reference

http://ux.etao.com/

http://coolshell.cn/articles/10337.html

http://ethan.herokuapp.com/work

http://blog.alexharr.is/

http://designthinking.ideo.com/

http://article.yeeyan.org/view/163202/156620

http://www.yeeyan.org/articles/view/38227/11310

http://tech.ddvip.com/2008-10/122345307175323.html

http://www.hi-id.com/

http://designmind.frogdesign.com/blog/

http://www.360doc.com/content/11/0314/21/519755_101151742.shtml
