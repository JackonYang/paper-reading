---
layout: post
title: "vim plugin 管理--使用 vundle"
date: 2013-08-27 03:10
comments: true
categories: vim
---

使用 vundle 管理 vim 插件，只需维护 vimrc 文件即可。

vundle 的优势主要在于可以自动安装/卸载，清晰的插件列表。

<!--more-->

#### 需求分析

vim 的每一个插件相互独立，类似 git submodule 的概念。  
所以，把所有的插件放在一个 project 中进行管理，是非常不合适的。

vim 通过目录区分插件的类型，改变插件目录会导致功能失效。  
submodule 也是按目录管理插件，但与 vim 对目录结构的要求不同。  
所以，无法直接使用 submodule 管理 vim 插件。

vim 插件很多，随时都有可能更新插件，我们对插件的需求也在不断改变。  
所以，不可能把 vim 的插件配置好以后不再改动。

vundle 很好的解决了这些问题：
每个插件一个独立目录，方便管理又能直接在 vim 中生效，
配置文件中维护一个插件列表，自动安装/卸载。

#### vundle 安装


1. `$ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle`
2. 配置 `vimrc`，最简模板如下：

    {% include_code sample vimrc lang:vim vimrc %}
3. 启动 `vim`，执行 `:BundleInstall` 

#### vundle 用法

详细的用法，安装完成后用 `:h vundle` 查看帮助文档。
其他资料的准确度不高。

常用命令：

- :BundleList          - list configured bundles
- :BundleInstall(!)    - [install](update) bundles
- :BundleSearch(!) foo - [search](or refresh cache first) for foo
- :BundleClean(!)      - [clean] unused scripts

[Vundle]:http://github.com/gmarik/vundle
[install]:https://github.com/gmarik/vundle/blob/master/doc/vundle.txt#L110-124
[update]:https://github.com/gmarik/vundle/blob/master/doc/vundle.txt#L128-134
[search]:https://github.com/gmarik/vundle/blob/master/doc/vundle.txt#L136-158
[clean]:https://github.com/gmarik/vundle/blob/master/doc/vundle.txt#L168-180
