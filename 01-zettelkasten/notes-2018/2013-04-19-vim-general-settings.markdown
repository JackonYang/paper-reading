---
layout: post
title: "vim 全局插件的配置"
date: 2013-04-19 16:46
comments: true
categories: [vim]
---

前段时间发现自己的 vimrc 问题很大，一些关键配置无法兼容多个编程语言。

深入研究了一下 vim，重写了一套干净的配置文件，备份在 github 上。[我的配置文件][myvimrc]

[myvimrc]: https://github.com/JackonYang/vimplugin

<!--more-->

新的配置文件，严格区分全局插件和文件类型插件。
更详细的关于 vim plugin 原理的解释在[这里][vimplugin]

本文只涉及全局插件的配置(global plugin)。

[vimplugin]: /blog/2013/04/19/vim-general-settings/

系统配置
--------

vim normal 模式下禁用中文输入法，否则输入中文时很烦。
ibus 配置如下：

{% img /images/escapeIbus.png %}

这是一个初步的方案，原理就是 `Esc` 时顺便把输入法也禁用了。
后面可以继续正常切换，所以，并不是 vim normal 模式下完全不能用。


必要设置
--------

通常要放在 vimrc 文件头，因为其他插件会依赖这几条设置。

``` vim
set nocompatible  " Use Vim defaults instead of 100% vi compatibility
filetype plugin indent on
syntax on
```

解释：

1. 不兼容 vi。vim 可以兼容 vi，但一些新特性是 vi 不支持的。所以要用 noncompatiable
2. 打开了三个特性：自动检测文件类型，基于文件类型的插件生效，智能缩进。

    跟文件类型/编程语言有关的设置，基本都依赖于前两个。  
    indent 的作用没这么基础，但也是要设置的，放在这里，整齐。
3. 如果通篇的文字不是一个颜色，那就就需要打开这个特性。

字符编码 encoding
-----------------

涉及中文的，总要是先处理好字符编码问题。
关于 vim 字符编码工作原理的详细解释在 [这里][encodingDetail]

[encodingDetail]: /blog/2012/11/21/ubuntu-and-vim-encoding-settings/

我的具体设置及原因如下：

``` vim
" encoding
set encoding=utf-8  " vim cache encoding
set fileencodings=utf-8,gb18030,gbk " open file with
set fileencoding=utf-8 " save file with
```

tab
---

关于使用 tab 还是用空格代替，争论很多。

我采用 4 空格替代一个 tab。
一方面是喜欢，另一方面是为了 python 的 pep8 规范

``` vim
" tabs
set tabstop=4 " tab width 
set shiftwidth=4 " width of nested tabs
set expandtab " input spaces instead of tab when typing a tab
set softtabstop=4 " 1. space deleted when typing <BackSpace>
```

高亮显示当前行 
--------------

两个作用：

1. 清楚的看到空行/行尾是否有空格，有几个;
2. 定位光标位置方便。

使用`highlight_current_line.vim`插件，修改为当前行 darkgray 背景色。

默认是加粗字体，但编辑 markdown 时总有当前行设置了加粗的错觉。
没找到简单的配置方法，直接改了插件里面的颜色值

自动补全
--------

自动补全包括两个: 

- autocomplet:  \<tab\>补一个单词或者文件名
- snipmate: \<tab\>补全一个模式，比如输入 def 后补全 python 的函数定义模板。

装一下插件，默认配置即可。

增强鼠标和 BACKSPACE
--------------------

``` vim
" 如果当前 vim 支持鼠标，那么，启用鼠标。a 可以理解为所有模式(all)
" 严格说来，不是 all，以为不包括几个一般用户不关心的模式。
if has('mouse')
    set mouse=a
endif

" <BACKSPACE>
set backspace=indent,eol,start  " more powerful backspacing
```

增强提示行
---------

``` vim
" status line
" always shown, shown as the second last line in the editor window
set laststatus=2 " 
" format, by default, vim does not show the status line at all.
set statusline=%F%m%r%h%w\[FORMAT=%{&ff}]\[TYPE=%Y]\[POS=%04l,%04v][%p%%]\[LEN=%L] 
```

搜索
----

!!! 待补充

``` vim
" search as you type
set incsearch
```

ctrl-s 保存
-----------

!!! 未完成

下面的设置，理论是应该是可以的。但执行无效。

```
" TODO: make it available
" to save, press ctrl-s
" nmap <F3> :w<CR>
" imap <c-s> <Esc>:w<CR>a
```

ctags/cscope + taglist
----------------------

没研究清楚到底用哪个。两个都用稍微乱了一点的感觉。

[vimer]: http://www.vimer.cn/
