---
layout: post
title: "python 入门的小任务"
date: 2013-09-02 09:16
comments: true
categories: [python,vivian]
---

python 入门，假定已经掌握如下内容：

- 简单的 c 语言基础（二级 c）
- 知道 c++ 或 JAVA 中 class 的概念

个人比较习惯任务式的学习。
所以，本文按顺序列举学习任务和目的，并做简要介绍。

<!--more-->

搭建 python 开发环境 
--------------------

python 版本建议使用 2.7

详细步骤参考[搭建 python 开发环境](/blog/2013/09/02/python-dev-env/)

参考资料
--------

入门推荐使用 [a byte of python](http://files.swaroopch.com/python/byte_of_python.pdf)(有中文版本).

打印中文"你好" -- 理解字符编码
------------------------------

最常见的入门程序是打印 hello world，
考虑到实际代码中经常设计中文，需要一点基础的[字符编码][intro-encoding]知识。
我们把入门任务升级为：打印中文 "你好"

python 代码文件的第一行声明使用 utf-8 编码，即可处理中文。

{% include_code deal with non_ASCII characters lang:python hello_world_cn.py%}

简单的单词数统计 -- 流程控制与常用数据结构
------------------------------------------

掌握一点最基本的 python 语法，我们就可以用代码干点有意义的事情了。

#### 关键语法如下：

- str 数据类型
- 数据结构: list/set/dict
- 流程控制语句：for/if

#### 任务：统计一句话中各英文单词的出现频率

text 变量中存储的是一句话，
这句话中可能包含多个子句，子句之间用 ',' 分割开。
单词与单词之间用空格隔开。
比如：
"here is a string, this is a text, this is a sentence"

请统计这句话中各英文单词出现的频率，将结果存储为字典。
字典的 key 是单词，value 是出现频率。

#### 案例代码：

{% include_code calculate word frequency lang:python word_freq.py%}


[intro-encoding]: /blog/2012/11/19/introduction-to-common-encoding/
[python-gramma]: /blog/2013/03/02/python-tutorial-basic-grammar/
