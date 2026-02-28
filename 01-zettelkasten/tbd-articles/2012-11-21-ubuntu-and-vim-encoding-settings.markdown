---
layout: post
title: "ubuntu and vim encoding settings"
date: 2012-11-21 12:40
comments: true
categories: [encoding,etc,vim]
---

ubuntu 与 windows 默认字符编码不一致，导致跨平台时常常出现乱码问题。

<!--more-->

一般攻略的处理方式
------------------

通常攻略的解决方法是修改 ubuntu 的默认字符编码为 gbk 或者 gb2312。
个人认为，为了兼容部分 windows 文件，修改 linux 系统默认字符编码，并不是最优解决方案。

1. ubuntu下，处理 utf-8 编码的情况远多于 gbk 或 gb2312.
	尤其是代码源文件，比如 python, mysql.
2. gb系编码，目前相对混乱。

	使用最多的是gb2312，但支持字符太少，难以满足日常应用。很多攻略都建议修改为gb2312。
	GBK 是 gb2312 的替代者，扩展了支持的字符，但亦有一些不支持的生僻字。
	GB18030，支持的字符较多，但与一些程序可能存在不兼容的问题。

Solution
--------

#### keep ubuntu default encoding unchanged, add gb18030 and gbk support.

``` bash add support of gb* encoding
$ sudo vim /var/lib/locales/supported.d/local
zh_CN.UTF-8 UTF-8
en_US.UTF-8 UTF-8
zh_CN.GB18030 GB18030
zh_CN.GBK GBK
# make it effect
$ sudo locale-gen
# make sure that all the encodings are utf-8
$ locale
LANG=zh_CN.UTF-8
LANGUAGE=zh_CN:zh
LC_CTYPE="zh_CN.UTF-8"
LC_NUMERIC="zh_CN.UTF-8"
LC_TIME="zh_CN.UTF-8"
LC_COLLATE="zh_CN.UTF-8"
LC_MONETARY="zh_CN.UTF-8"
LC_MESSAGES="zh_CN.UTF-8"
LC_PAPER="zh_CN.UTF-8"
LC_NAME="zh_CN.UTF-8"
LC_ADDRESS="zh_CN.UTF-8"
LC_TELEPHONE="zh_CN.UTF-8"
LC_MEASUREMENT="zh_CN.UTF-8"
LC_IDENTIFICATION="zh_CN.UTF-8"
LC_ALL=
```

#### encoding settings of vim

``` bash setting of vim in vimrc
"encoding
:set encoding=utf-8
:set fileencodings=utf-8,gb18030,gbk
:set fileencoding=utf-8
:set termencoding=utf-8
```

vim 字符编码工作原理
--------------------

#### vim 字符编码说明

Vim 有四个跟字符编码方式有关的选项，encoding、fileencoding、fileencodings、termencoding

- encoding: Vim 内部使用的字符编码方式，包括 Vim 的 buffer (缓冲区)、菜单文本、消息文本等。

	如果vim的encoding为utf-8,所编辑的文件采用GBK编码,
	vim会自动将读入的文件转成utf-8，而写入文件时,自动转回成GBK（文件的保存编码). 
- fileencoding: Vim 中当前编辑的文件的字符编码方式，保存文件时也会将文件保存为这种字符编码方式。
- fileencodings: Vim 自动探测 fileencodings 的顺序列表， 启动时会按照它所列出的字符编码方式逐一探测即将打开的文件的字符编码方式，并且将 fileencoding 设置为最终探测到的字符编码方式。

	最好将 Unicode 编码方式放到这个列表的最前面，将拉丁语系编码方式 latin1 放到最后面。 
- termencoding: Vim 所工作的终端 terminal 的字符编码方式。

	如果 vim 所在的 terminal 与 vim 编码相同，则无需设置。如其不然，你可以用 vim 的 termencoding 选项将自动转换成 terminal 的编码.这个选项在 Windows 下对我们常用的 GUI 模式的 gVim 无效，而对 Console 模式的 Vim 而言就是 Windows 控制台的代码页，并且通常我们不需要改变它。 

#### Vim 的多字符编码方式支持的工作方式

1. Vim 启动，根据 `.vimrc` 中设置的 encoding 的值来设置 buffer、菜单文本、消息文的字符编码方式。 
2. 读取需要编辑的文件，根据 fileencodings 中列出的字符编码方式逐一探测该文件编码方式。并设置 fileencoding 为探测到的，看起来是正确的字符编码方式。 
3. 对比 fileencoding 和 encoding 的值，若不同则调用 iconv 将文件内容转换为 encoding 所描述的字符编码方式，并且把转换后的内容放到为此文件开辟的 buffer 里，此时我们就可以开始编辑这个文件了。

	注意，完成这一步动作需要调用外部的 iconv.dll(windows)，你需要保证这个文件存在于 $VIMRUNTIME 或者其他列在 PATH 环境变量中的目录里。 
4. 编辑完成后保存文件时，再次对比 fileencoding 和 encoding 的值。若不同，再次调用 iconv 将即将保存的 buffer 中的文本转换为 fileencoding 所描述的字符编码方式，并保存到指定的文件中。

