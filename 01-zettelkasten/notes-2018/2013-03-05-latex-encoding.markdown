---
layout: post
title: "latex 字符编码与跨平台中文支持"
date: 2013-03-05 02:49
comments: true
categories: [coding,encoding]
---

大多数 windows 用户从来没有考虑过 latex 字符编码的问题。
通用都是用 CJK 包中的 GBK 字符编码。
如此写成的源码放到 ubuntu 下往往不能直接编译成功。
因为，ubuntu 默认安装包中缺少这种字体。

跨平台、多语言支持，utf8 编码是最好的解决方案。
关于字符编码的基本概念，点击 [这里](/blog/2012/11/19/introduction-to-common-encoding/)

<!--more-->

utf8 编码块平台中文支持
-----------------------

1. 声明字符编码时使用：`\begin{CJK}{UTF8}{gbsn}`

    windows 下一般使用 `\begin{CJK}{GBK}{song}`。
2. 每一个 `.tex` 的源码文件第一行声明字符编码格式：`% !Mode:: "TeX:UTF-8"`

    winedit 默认使用 GBK 打开源文件，不会自动检测字符编码，打开以后显示乱码。
    源码文件第一行声明字符编码即可。

{% include_code latex Chinese with utf8 lang:latex test.tex%}

