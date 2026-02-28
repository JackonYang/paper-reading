---
layout: post
title: "design of local pkm system"
date: 2012-09-04 02:25
comments: true
categories: [project,data-mining]
---

我相信，个人知识管理(pkm)终将会成为一个时代的宠儿，尤其是随着大数据时代的到来。

速度决定成败，加速是亘古不变的话题。
机械工业时代加速的是交通工具，信息时代加速的是知识流通。

<!--more-->

从pc机时代到互联网时代，从 web1.0 到 web2.0，
每一次变革，都是知识流通速度的突变。
所以，以微软为代表的 pc 机时代取代了以 IBM 为代表的企业级应用时代，
随后又进入了以 google 为代表的互联网搜索时代，知识大爆炸。
社交圈可以提供更有针对性的有效信息，所以，facebook 赢了。
智能终端的灵活性远远超过 PC 机，所以大家削尖了脑袋挤进手机市场。

有效的知识管理，可以将人的大脑从琐碎的记忆中解放出来。
提升效率，加速个人知识流动。
同时，高质量的个人知识仓库，可以帮助建立较高的个人品牌价值。

系统设计
--------

基于 web server 的本地化个人知识管理系统。
即：在个人电脑上搭建一个服务器，集成一系列知识管理应用。
最大的挑战和风险在于：数据安全。
暂时，通过频繁的的备份来规避风险。

只要电脑开机，任何地点任何时间，都能用手机或者其他电脑接入自己电脑。
查询、更新项目进展，获取重要文档资料。

#### 应用：

1. 项目管理与时间管理——redmine

	跟踪项目进展和时间进度，记录个人时间花费情况。
	
	现在，我们往往需要同时做几件大的事情。
	及时制定计划并录入 redmine，后续只要跟着 redmine 依次执行即可。
	化多线程为单线程，单线程，我们总是可以把事情做的更棒更快。

2. 笔记系统——基于 wordpress 的 blog。

	有效的总结可以避免车轮式的前进，个人进步与提升的基础。
	
	选择独立的blog:

	- 数据安全，天朝最不能相信的就是互联网，说封就封，说墙就墙。重要的东西必须本地存储。
	- 当前，没有一个稳定的blog，既支持tex语法，又支持代码高亮显示。
	- 干净整洁无广告，可扩展性高，可定制。
		与本地的文件系统、项目管理系统等可以集成。

3. 文档代码等电子文件——svn
4. 人际关系管理——代码开发中。。。
5. 图片服务器——piwigo

#### 底层服务：

- server——apache2
- database——mysql
- server script——php，python
- os——windows/ubuntu7

环境搭建
--------

以 ubuntu 12.04 为例。

#### 磁盘分区与安装规划

划分2个单独的磁盘分区:

1. apache2 的 `document_root`。 即网站文档的根目录。
2. 存储备份文件，保证数据安全。

#### 磁盘挂载与文件权限

www开机自动挂载，文件所有者为 apache2 用户 www-data。
权限策略 umask = 022.
uid是 www-data 的id，安装apache2后自动创建。

``` bash auto mount www
$ sudo vim /etc/fstab
# insert Entry for /dev/sda6 : www
/dev/sda6 /media/www ntfs uid=33,gid=1001,umask=002,dmask=022,utf8
# get uuid of the partition
$ sudo blkid
# get uid
$ id www-data
# bash watch group id and group members 
$ cat /etc/group|grep subversion
subversion:x:1001:www-data,jackonyang
# mount
mount -a
```

备份区，备份时挂载，备份后卸载。禁止自动挂载。
防止误操作。

#### apache2

``` bash install apache2 and config
$ sudo apt-get install apache2
# edit serverName:
$ sudo vim /etc/apache2/httpd.conf
# insert
ServerName localhost
# edit document_root
$ sudo vim /etc/apache2/sites-enabled/000-default
# by default in ubuntu: /var/www
DocumentRoot /media/server_root/www
<Directory /media/server_root/www/>
```

#### svn 与 http 访问方式

预置条件：apache2已安装。

``` bash install svn and access by http
$ sudo apt-get install subversion
$ sudo apt-get install libapache2-svn
# create user group and add user
$ sudo addgroup subversion
$ sudo usermod -G subversion -a www-data
$ sudo usermod -G subversion -a jackonyang
# 修改http访问svn模块配置参数：
$ sudo a2enmod dav_svn
$ sudo vim /etc/apache2/mods-enabled/dav_svn.conf
<Location /svn>
	DAV svn
	SVNPath /media/svn/src_svn
	AuthType Basic
	AuthName "JackonYang Subversion Repository"
	AuthUserFile /etc/apache2/dav_svn.passwd
</Location>
# create svn repo and user 
$ sudo mkdir /media/svn/src_svn
$ sudo svnadmin create /media/svn/src_svn
$ sudo chown -R www-data /media/svn/src_svn
$ sudo htpasswd -cm /etc/apache2/dav_svn.passwd jackonyang
# restart apache2
$ sudo service apache2 restart
```

#### mysql 安装配置

``` bash install mysql and config
$ sudo apt-get install mysql-server
# charset
$ sudo vim /etc/mysql/my.cnf
# add or edit
[client]
default-character-set = utf8
[mysqld]
character-set-server = utf8
collation-server = utf8_general_ci
$ sudo service mysql restart
# login and check
$ mysql -uroot -p
mysql> show variables like 'character_set_%';
mysql> show variables like 'collation_%';
# security grant 
mysql> use mysql;
mysql> delete from user where user = '';
Query OK, 2 rows affected (0.00 sec)
```

#### redmine
预置条件：apache2，mysql已安装
``` bash install redmine and config
$ sudo apt-get install libapache2-mod-passenger redmine redmine-mysql
# input mysql root password and default passwd for redmine to login mysql
# config apache2
$ sudo vim /etc/apache2/conf.d/redmine.conf
RailsEnv production
RailsBaseURI /redmine
$ sudo ln -s /usr/share/redmine/public /media/server_root/www/redmine
$ sudo service apache2 restart
```

访问 redmine
浏览器访问: `localhost/redmine`
默认用户密码：admin/admin

#### wordpress

依赖于 php，phpmyadmin，mysql

安装 php5，phpmyadmin

``` bash install php5 and phpmyadmin
$ sudo apt-get install php5
$ sudo apt-get install phpmyadmin
$ sudo ln -s /usr/share/phpmyadmin/ /media/server_root/www/
# restart apache2, or report error: 缺少 mysqli 扩展。请检查 PHP 配置。
$ sudo service apache2 restart
```

测试:

``` bash testphp
$ sudo vim /media/server_root/www/testphp.php
<?php phpinfo(); ?>
```

wordpress安装包复制到 apache2 document_root 目录下解压
进入目录，根据sample文件创建wp-config.php
`cp wp-config-sample.php wp-config.php` 然后修改wp-config.php中的数据库链接信息。
浏览器打开，完成安装即可。
