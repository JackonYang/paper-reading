---
layout: post
title: "用 vim 加速工作效率"
date: 2013-03-19 01:22
comments: true
categories: vim
---

个人理解，学习/研究 vim 的根本目的在于：
如何用最少的 plugin，最简洁的操作更好的提升的工作效率。

vim plugin 与配置文件，本质上是同一个概念。
具体解释见：[Vim Plugin 与个性化设置的原理](http://jackonyang.github.com/blog/2013/03/18/personalizing-vim/)

鉴于 vim 的 plugin 太多，没有必要也不可能掌握全部 plugin.
不涉及全部的 plugin，也不涉及一个 plugin 的全部用法。

<!--more-->

### 配置 vim 的根本目的

这本不应该是一个问题，但是，杂乱的 vim 配置攻略和 plugin，
很容易让我们盲目配置 vim，做大量没有意义的工作，甚至引起 plugin 冲突。

使用 vim 本身就是为了高效处理文本文档，从最早的纯粹编辑演化到现在的编辑、编译等。
配置 vim 的根本目的，自然是更高效的处理文档、加速日常工作。

##### 更高效的本质

好的文章和代码是改出来的，大部分时间都是在 _阅读_、_定位错误_、_修改错误_.
所以，更高效意味着：

1. motion: moving faster,
2. writing: less input, more output. more convient
3. reading: more readable
4. extention: using it everywhere, compiler/web browser/pdf viewer

至于衡量配置好与坏的标准，我想，只要足够加速我们日常工作即可，无需追求全面。

##### 加速与简化的本质:

1. 用最方便的按键序列完成最常见的操作，
2. 把重复的操作序列提取为更短的命令。

面对这两个需求，图形界面的局限性就显而易见。
所以，命令行操作具备更大的优化空间。

### 插件选择

从 2008 年开始使用 vim 至今，已经 6 年有余。
现在是第三次深入研究 vim。
目前的理解如下：

1. 插件的选择，仅由个人使用需求决定。
2. 在实践中找出自己需要加速的操作，然后找出可以实现需求的的最少插件。
3. 先读 [a byte of vim](http://swaroopch.com/notes/vim/)，了解设计原理与核心功能。否则不知道自己什么地方可以加速。


### 主要的加速需求与解决方案

每个需求对应的链接给出了解决方案的详细说明，最新的 vim 配置都在
[personalizing ubuntu](https://github.com/JackonYang/personalizing-ubuntu)

##### move fast

自带的功能已经足够强大，为了方便在代码之间的跳转，安装 ctags/taglist。
根据个人实践，cscope 用处不大。

详细用法 [戳这里](http://jackonyang.github.com/blog/2013/03/22/vim-better-navigation/)

###### easy writing

- Auto-Completion: [tab 一键自动补全](http://jackonyang.github.com/blog/2013/03/19/vim-auto-complete/)
- 模板导入 Templates
- 缩写输入/错误纠正 Abbreviations
- 剪切复制与删除 

##### more readable: 

- highlight: syntax on，语言的配置文件放入 systax 目录下。
- statusline: 始终显示：文件格式、类型，光标行列数、百分比，文章总行数。
- current line: 背景色使用 darkgray.

##### multi-files:

很多人提到安装 winmanager，我还没体会到这个插件带来的效率提升。

##### more

- modifying tabs。不同平台和场合，tab 长度的定义相差较大。实践中，逐步开始转向 4 空格的长度，甚至直接使用 4 空格。python特别需要，tab 转 4 空格。
