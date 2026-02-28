---
layout: post
title: "vim 入门"
date: 2013-09-03 09:17
comments: true
categories: [vim,vivian]
---

vim 是一款高效的编辑器，可以快速完成各种复杂的编辑任务。
尤其适合于写代码。证据如下图:

<!--more-->

{% img /images/coding_with_vim.gif %}

mode
----

#### 为什么要有 mode

vim 速度快的根本原因在于，
键盘输入的不仅仅是纯文本，还可以是一个命令。
比如:

- `G` 可以快速移动到文件末尾。
- `yy` 可以复制当前行。
- `dw`删除光标所在的单词。

由此产生一个问题，如何判断用户要输入文件内容还是执行命令。
比如：用户按下 `G` 的时候，要输入字母 G 还是快速移动到文件末尾。

解决这个问题的关键是： mode(模式)。

#### mode 类型与快速切换

vim 有很多 mode，常见的有 3 个: 

1. Normal/Command mode: 快速移动、修改文档，切换到其他模式。  
    打开 vim 时，默认是 Normal mode.
2. Insert mode: 键盘输入的所有东西都会插入到文本内容中.  
    Normal 下 `i` 进入 Insert mode, `Esc` 回到 Normal mode.
3. Command-line mode: 打开/保存文件, 查找/替换，执行外部命令等。  
    Normal 下 `:` 进入 Command mode, `Esc` 回到 Normal mode

常见命令
--------

#### 快速插入：Normal --> Insert mode 的更多方法

Normal --> Insert 的方法很多。`i` 只是最简单，最常见的一种。
不同命令的区别仅仅在于插入的位置不同

- i 当前光标处
- a 在光标后
- I 当前行首
- A 当前行尾
- o 下一行（插入一行）
- o 上一行（插入一行）

#### 剪切/复制/粘贴
