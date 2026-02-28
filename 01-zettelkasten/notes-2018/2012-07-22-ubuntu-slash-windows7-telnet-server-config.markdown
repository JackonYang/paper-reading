---
layout: post
title: "ubuntu/windows7 telnet server config"
date: 2012-07-22 19:54
comments: true
categories: [etc]
---

telnet 本身不安全，但因为工作的原因对telnet还比较熟悉。
姑且先用telnet解决虚拟机中的windows系统与linux宿主之间共享文件的文件。

<!--more-->

Ubuntu telnet configuration
--------------------

#### install telnet

``` bash install telnet
$ sudo apt-get install telnetd-ssl telnetd xinted
```
telnet 与 xinetd 的关系：
xinetd 是新一代的网络守护进程服务程序，
telnet 进程由 xinetd 守护。
Ubuntu 12.04 默认不安装 xinetd。

#### 修改xinetd和telnet配置文件

``` bash config xinetd and telnet
$ sudo vim /etc/xinetd.conf
defaults
{
        instances = 60
        log_type = SYSLOG authpriv
        log_on_success = HOST PID
        log_on_failure = HOST
        cps = 25 3
}

# add/edit. this file does not exist in Ubuntu 12.04 by default
$ sudo vim /etc/xinetd.d/telnet
# default: on
# description: The telnet server serves telnet sessions; it uses \
# unencrypted username/password pairs for authentication.
service telnet 
{
	disable = no 
	bind =219.228.57.4 
	only_from=219.228.1.0/24 
	#上面这两行说明仅提供内部网段！ 
	Instance =UNLIMITED 
	Nice =0
	flags = REUSE
	socket_type = stream
	wait = no
	user = root
	server = /usr/sbin/in.telnetd
	log_on_failure += USERID
}
# restart xinetd
$ sudo /etc/init.d/xinetd restart
```

#### root用户登录。

出于安全考虑，默认禁止root用户登录。
去掉限制：
`$ sudo vim /etc/pam.d/login`
注释掉:
`# auth [success=ok new_authtok_reqd=ok ignore=ignore user_unknown=bad default=die] pam_securetty.so`

#### 本机登录 telnet 测试

{% img /images/ubuntu_telnet_login.png %}

windows telnet configuration
----------------------------

{% img /images/windows_telnet_installation.png %}

{% img /images/windows_telnet_login.png %}

