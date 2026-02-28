Title: vim plugin 原理
Date: 2013-03-18 15:33
Category: vim
Tags: vim, dev-tools
Summary: vim 个性化设置与功能扩展均通过 script 来实现，这种 script 又叫 plugin。


vim 个性化设置与功能扩展均通过 script 来实现，这种 script 又叫 plugin。
plugin 是 vim 的核心与精髓。

最常用的配置文件 vimrc，也是一种 plugin。
换句话说，所有的 plugin 都在配置 vim 的行为。

plugin 类型及其相互关系
---------------------------

常见的 plugin 类型： 

- vimrc
- global
- filetype
- syntax
- compiler

vimrc 是核心 plugin (类似 `main` 函数)，所有的配置都可以在这一个文件中完成。
所有其他配置都直接或间接由该文件调用以生效。

与其他编程语言一样，为了提高源文件的可读性，增加代码的可重用性等，
衍生出了 global/filetype/syntax/compile 等 4 中主要的 plugin。
通过 `runtime`, `source` 等命令加载其他 plugin

vim 搜索路径
------------

vim 通过路径区分 plugin 类型。
由 `runtimepath` 控制搜索顺序，一旦找到立即停止。

默认搜索顺序：

1. `$HOME/.vim`: linux home 目录下的用户个性化设置
2. `$VIMRUNTIME: 系统自带的 plugin

建议将个性化配置全部放在 `$HOME/.vim` 中，
与 vim 自带的配置文件隔离，方便备份。
vim 中执行 `:echo $variable` 查看变量取值.

```vim 查看默认 plugin 搜索路径
:set runtimepath?
runtimepath=~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/
vim73,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after
```

plugin 安装
-----------

拷贝到对应的 plugin 目录下即可。

更新帮助文档，在 vim 中运行 `:helptags ~/vimfiles/doc`

global plugin
-------------

global plugin 位于 `plugin` 目录下，对全局生效，所以默认自动加载。

filetype plugin
---------------

filetype plugin 只对特定类型的文件生效。

根据文件类型动态决定行为，通过事件监听(autocmd)实现。
基本原理如下：

``` vim sample of autocmd/filetype plugin
" required
filetype plugin on
" define behavior when filetype change to `tt`
" here, the behavior is set to execute `echo "hello"`
autocmd FileType tt echo "hello"
" execute cmd below, output "hello" at the bottom of vim window
:set filetype=tt
```

如果没有用 autocmd 显式声明 xxx 文件对应的行为，
则加载 ftplugin 目录下的 `xxx.vim`

``` vim sample of default filetype action.
:set filetype=c
"expt: load c.vim and change highlight in c syntax
"required: c.vim in ftplugin, it is in $VIMRUNTIME/ftplugin by default
```

注意：使用 ftplugin 时，需要开启 `filetype` 和 `filetype plugin`

``` vim watch status of filetype
:filetype plugin on
:filetype
filetype detection:ON  plugin:ON  indent:ON
```
一个更深入 filetype plugin 的例子

``` vim using filetype plugin with buffer
autocmd BufNewFile,BufRead *.xml source ~/.vim/ftplugin/xml.vim
```

同样是事件监听机制，区别在于:

- 监听的事件: 创建或打开 .xml文件(BufNewFile,BufRead)
- 执行的行为: 加载 `ftplugin/xml.vim`

syntax plugin
-------------

原理与 ftplugin 类似，监听 syntax 事件，加载 syntax 目录下的插件。
触发 filetype 事件的同时，也会触发对应的 syntax 事件。

``` vim sample of syntax
syntax on
:set syntax=c
```

compile plugin
--------------

同样是事件监听，插件位于 compiler 目录。

``` vim sample of compiler plugin
" add below to vimrc
autocmd BufNewFile,BufRead *.py compiler python`
" open a file ending with .py and run
:make
" expt: errors printed
```

更多的一些细节
--------------

#### 与 vi 的兼容性。

vim 在 vi 的基础上进行了很多的功能扩展。
若要使用 vim 的特性，vim 必须运行于与 vi 不兼容的模式。

一般，把 `set noncompaible`放在配置文件开始处即可。  
ubuntu 12.04 默认的 vimrc 先加载 ubuntu.vim， 其中设置了该选项。

#### vim feature-list

vim 自身有很多 feature, plugin 都依赖于相应的 feature.

为了使 vimrc 通用，使用 plugin 前先用`has()` 检测feature 是否存在。
如下：

```vim check if feature exists first
if has("syntax")
	syntax on
endif
```

`:version` 查看 feature-list
{% include_code feature list lang:vim feature_list_vim.txt%}
