---
layout: post
title: "vim auto complete"
date: 2013-03-19 14:34
comments: true
categories: [vim]
---

linux shell 下重度依赖自动补全命令和文件名，
vim 下一直用的很少，主要因为补全的模式很多，命令又比较复杂。

本文试图分析各种补全模式及其应用场景，将适合自己的几种模式进行封装并设置快捷键(`<tab>`)

<!--more-->

#### vim auto-complete 模式概述

三种核心模式：

- Auto-completion with known words: 当前打开的文件/窗口中已出现过的 words
- Auto-completion using a dictionary file: 在固定 dictionary 中检索.
    `set dictionary+=/path/to/dictionary/file/with/words`
- Context-aware auto-completion with Omni-completion: 灵活的自定义补全方式，一般根据编程语言使用对应模板。模板位置：
    `ftplugin/<language>complete.vim` or `$VIMRUNTIME/autoload/<language>complete.vim`

当然，模式可以分的更精细，而且每种模式都有对应的一些快捷键。
vim 手册给出的模式与快捷键列表：

1. Whole lines                                          `i_CTRL-X_CTRL-L`
2. keywords in the current file                         `i_CTRL-X_CTRL-N`
3. keywords in 'dictionary'                             `i_CTRL-X_CTRL-K`
4. keywords in 'thesaurus', thesaurus-style             `i_CTRL-X_CTRL-T`
5. keywords in the current and included files           `i_CTRL-X_CTRL-I`
6. tags                                                 `i_CTRL-X_CTRL-]`
7. file names                                           `i_CTRL-X_CTRL-F`
8. definitions or macros                                `i_CTRL-X_CTRL-D`
9. Vim command-line                                     `i_CTRL-X_CTRL-V`
10. User defined completion                             `i_CTRL-X_CTRL-U`
11. omni completion                                     `i_CTRL-X_CTRL-O`
12. Spelling suggestions                                `i_CTRL-X_s`
13. keywords in 'complete'                              `i_CTRL-N`

若要熟悉这些模式和对应命令，每次补全时需要自己选择补全模式，完全不是 easy writing.

`<c-x>` 模式是 insert-mode 的子模式。在该模式下，用快捷键实现对应模式补全`<c-k>`(dictionary),  `<c-o>`(omni)

#### 理想的自动补全方式

快捷键调用一个模式判断函数，根据上下文选择最佳模式并自动调用。

1. 其中 omni complete 的优先级可以最高。
2. keyword 和 上下文 次之
3. 特殊场景的判断函数，如 文件名(包含路径时)，时间日期等。

快捷键使用 tab 与 linux shell 保持一致。
由此引发一个新的需求：
当光标在行首或空白字符之后时，插入 \t, 而不是自动补全。

#### `supertab` 一键自动补全 plugin

下载安装：[plugin github repo url](https://github.com/ervandew/supertab)

可以实现 文件名补全、关键词补全、字典补全、omni 补全等。
