Title: Nginx Log 的 Referrer 里藏了成人网站 URL
Date: 2016-11-19 23:24
Category: devops
Tags: 有趣
Summary: 黑客的攻击手段，日新月异。慎重点击每一个 link，包括 nginx log 里的。


## Nginx Log 里的特殊 URL

下午登录服务器看 Nginx access log，帮同事（性别：女）看问题。

在一个 access.log 文件的最后几行，看到了下面 log。

![nginx-access.log](http://images.jackon.me/2017-12-28-nginx-referrer-hacker-url.png)


做过爬虫的，瞬间很警觉。

1. 没有访问 static 文件，只有 html 访问。
2. 短时间内连续出现，模式高度相似。

这必然是爬虫，不是真实的用户访问。


## URL 全部指向成人网站

爬虫一般是不会设置 referrer 的，
尤其是不会使用这么诡异的域名做 referrer。

好奇心驱使我，点开看看是什么爬虫。
然后，打开了一个黄色网站。
满屏幕的 xxoo 图。

幸好左手还在键盘上，瞬间 Ctrl + w 关掉窗口。

手速还不错。


## 爬虫的目的是什么？


**精准的定向广告**

夜深人静的时候，DevOps 一个人守着服务器。

正在干柴的时候，突然发现 nginx log 有烈火。

不能更精准的定向广告。


**钓鱼网站**

DevOps 掌握着公司各种服务器／数据库的 super password。
调到了，就是大鱼。


做一个爬虫，爬 10000 个网站的首页，成本很低。

即使 0.1% 的钓鱼成功率，也可以黑掉 10 个公司的服务器了。


## 注意安全

慎重点击每一个 link，包括 nginx log。
尤其是女生在旁边的时候。


如果对上述福利网站感兴趣，建议在临时的虚拟机里打开。

毕竟钓鱼的目标是运维／devops 们，linux 可能更容易中毒。
