---
layout: post
title: "ubuntu 开发环境"
date: 2013-11-03 12:00
comments: true
categories: [ubuntu,etc]
---

主要包括: git/github, vim, mysql, markdown, octopress, rar/gtalk 等日常工具

<!--more-->

apt-get 源更新
--------------

<pre> <code>
$ sudo apt-get update
$ sudo apt-get upgrade
</code> </pre> 

apt-get 的 2 个重要参数，封装为脚本时比较有帮助。

- `-y` Assume Yes to all queries and do not prompt
- `-qq` No output except for errors

git & github
------------

#### 安装 git 并配置 github 帐号信息
<pre> <code>
$ sudo apt-get install git-all xclip
$ git config --global user.name "Jackon Yang" 
$ git config --global user.email "jiekunyang@gmail.com"
</code> </pre> 

#### 添加 ssh 密钥

详细说明: [https://help.github.com/articles/generating-ssh-keys](https://help.github.com/articles/generating-ssh-keys)

<pre> <code>
$ mkdir -p ~/.ssh && cd ~/.ssh
$ ssh-keygen -t rsa -C "jiekunyang@gmail.com"
$ xclip -sel clip < ~/.ssh/id_rsa.pub  # id_rsa.pub 中的密钥保存到剪切板中
$ ssh -T git@github.com  # test connection

# output
# Hi JackonYang! You've successfully authenticated, but GitHub does not provide shell access.
</code> </pre> 

mysql
-----

#### mysql server and GUI
<pre> <code>
$ sudo apt-get install mysql-server mysql-workbench  # mysql toolbox
$ sudo service mysql restart
</code> </pre> 

#### 字符编码配置：

`etc/mysql/my.cnf` 中添加:

<pre> <code>
[client]
default-character-set = utf8

[mysqld]
character-set-server = utf8
collation-server = utf8_general_ci
</code> </pre> 

#### 完全删除 mysql 及其配置

有一些是多余的，建议还是按照顺序执行一遍

<pre> <code>
$ sudo apt-get autoremove --purge mysql-server-5.0
$ sudo apt-get remove mysql-server
$ sudo apt-get autoremove mysql-server
$ sudo apt-get remove mysql-common  # VIP
$ dpkg -l |grep ^rc|awk '{print $2}' |sudo xargs dpkg -P  # 清理残留数据
</code> </pre> 

vim and markdown
----------------

<pre> <code>
$ sudo apt-get install vim-gtk exuberant-ctags  # vim and ctags
$ sudo apt-get install zathura vifm  # pdf and explorer with vim shortcut
$ sudo apt-get install pandoc retext
</code> </pre> 

daily app
---------

<pre> <code>
$ sudo apt-get install xchm unzip shutter
$ sudo apt-get install calibre  # e-book management
$ sudo apt-get install convmv p7zip-full
# gtalk
$ sudo add-apt-repository ppa:pidgin-developers/ppa
$ sudo apt-get update
$ sudo apt-get install -y --force-yes pidgin
</code> </pre> 

unrar
-----

[download rar](http://www.rarsoft.com/download.htm)
并执行如下安装命令:

<pre> <code>
$ sudo make install
$ sudo ln -s /usr/local/bin/rar /usr/bin
</code> </pre> 

blog with octopress
-------------------

{% include_code blog with octopress lang:bash install_octopress.sh %}

dropped
-------

曾经需要，正常情况下，现在不再需要

#### pdf for chinese

upgrade 后已不需要

<pre> <code>
$ sudo apt-get install poppler-data poppler-utils
</code> </pre> 

用如下内容替换 `/etc/fonts/conf.d/49-sansserif.conf`

{% include_code font conf lang:xml font_conf.conf %}

#### 解压中文目录乱码

<pre> <code>
$ LANG=C 7z X zipFileName
$ convmv -f gbk -t utf8 -r --notest *  # convert directory
</code> </pre> 
