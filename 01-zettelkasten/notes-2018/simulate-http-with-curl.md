Title: curl 模拟常见 HTTP 消息
Date: 2016-03-20 14:16
Category: http
Tags: curl, http
Summary: 当前比较热门的领域, 不管是 web 开发, 还是爬虫、大数据, 处理 HTTP 消息都是一堵绕不开的技术墙.


## 使用场景

当前比较热门的领域,
不管是 web 开发, 还是爬虫、大数据,
处理 HTTP 消息都是一堵绕不开的技术墙.

我们需要一个好用的 HTTP 消息模拟器.

推荐 cURL，
Linux ／ Mac 系统自带，无需安装。
可以模拟各种 HTTP 消息。

我们以 GET 和 需要 Cookie 的 POST 消息为例,
演示下 cURL 在实际工作中的应用.
更详细的用法, 请查阅官网文档: [https://curl.haxx.se/docs/](https://curl.haxx.se/docs/)

## GET 方法访问(下载)一个网页

以我的个人网站 [jackon.me](http://jackon.me) 为例

```bash
$ curl jackon.me  # GET 方式下载
$ curl jackon.me > jakcon.html  # save response to local file
$ curl jackon.me -o jackon2.html
```

## 带 Cookie 的 POST 消息

为了方便大家复现视频里的所有操作，
我用 Django 写了一个 Server 端，网址：[dev.jackon.me](http://dev.jackon.me)

#### CSRF 攻击(跨站请求伪造)

CSRF 攻击, 是 web 安全中最常见的威胁.
详细的介绍, 可参考 IBM 的文档库 [CSRF 攻击的应对之道](https://www.ibm.com/developerworks/cn/web/1102_niugang_csrf/)

Server 端, 在处理 POST 消息时, 大多都会做一定的 CSRF 保护.
一般是校验 refer, 或者在 url / Cookie / 自定义 header 里加一个 token.

django 采用的是 Cookie 和 POST data(form 表单)里都加 csrf 的 token. 字段名分别是：csrfmiddlewaretoken 和 csrftoken
token 的值一样即可。

是否理解了 CSRF 不重要,
重要的是, 能够通过下面的抓包，拿到码流的样例。

#### 抓包

通俗的说，抓包就是截获网络请求的数据包，提取其中的内容。

写爬虫时，经常提到的模拟登录，就是：

1. 抓包找到登录过程的全部 HTTP 消息。
2. 模拟这些消息成功登录网站，拿到 SessionID

Server 一般就是根据 Cookie 里的 SessionID 来判断用户是否已经登录。

**新手, 推荐用 Firefox 抓包**

![Firefox 抓包](https://raw.githubusercontent.com/JackonYang/IOut.me/master/images/tcpdump-firefox.png)


POST 的 body (form Params)

```json
csrfmiddlewaretoken=QkstwzRLsVTC5aKzCadzyqU702reTzSX
username=jackon
password=123
```

POST 的 Cookie

```json
csrftoken=QkstwzRLsVTC5aKzCadzyqU702reTzSX
```
 
#### cURL 模拟 POST 消息

主要参数：

- `-b` cookie
- `-d` post data
- `-i` 显示 response 的 header

```bash
# 登录成功，不显示 response header
$ curl -b 'csrftoken=jFJ6bhbkWCRpFkwMP4PLOcfCe4rOAetg' -d 'username=jackon&password=123&csrfmiddlewaretoken=jFJ6bhbkWCRpFkwMP4PLOcfCe4rOAetg' "http://dev.jackon.me/accounts/login/"
# 使用 －i 看 response header
$ curl -i -b 'csrftoken=jFJ6bhbkWCRpFkwMP4PLOcfCe4rOAetg' -d 'username=jackon&password=123&csrfmiddlewaretoken=jFJ6bhbkWCRpFkwMP4PLOcfCe4rOAetg' "http://dev.jackon.me/accounts/login/"
# 使用错误的密码 1234
$ curl -i -b 'csrftoken=jFJ6bhbkWCRpFkwMP4PLOcfCe4rOAetg' -d 'username=jackon&password=1234&csrfmiddlewaretoken=jFJ6bhbkWCRpFkwMP4PLOcfCe4rOAetg' "http://dev.jackon.me/accounts/login/" > rsp_error.html
```

注意:

1. `-i` 参数很重要

    开发实践上, POST 成功后, 通常返回 302 消息. 即, respone 里不包含 html.
    如果不加 -i 参数, POST 成功后看不到任何的响应.
    
2. url, 建议养成加双引号(")或单引号(")的习惯

## 脚本化

#### Question:

http 调测工具那么多, 为什么偏偏选择了"落后的"命令行工具

#### Answer: 因为可以脚本化

创建一个 shell 脚本, 名为 `login_test.sh`
写入以下内容:

```bash
#!/bin/bash

host="http://dev.jackon.me"
csrf="7WEbq8GxlDwJQCbBtYtBoq16RpyZYH8f"

url="/accounts/login/"

# success with correct username
form_data="username=jackon&password=123"
curl -i "$host$url" \
     -b "csrftoken=$csrf" \
     -d "csrfmiddlewaretoken=$csrf&$form_data" \
     > rsp-script-ok.html

# failed with error username
form_data="username=jackon&password=1234"
curl -i "$host$url" \
     -b "csrftoken=$csrf" \
     -d "csrfmiddlewaretoken=$csrf&$form_data" \
     > rsp-script-fail.html
```
  

给脚本可执行权限，并执行

```bash
$ chmod +x login_test.sh
$ ./login_test.sh
```

浏览器打开 `rsp_ok.html`, `rsp_error.html` 查看执行结果.

一个脚本，一行命令批量处理一系列操作。

每一个项目的每一个 Server 端 API，都应该有一个 shell 脚本。
接口能不能用，该怎么用，调用者看 shell 脚本即可。
API 开发、测试时，用 shell 脚本测试，不再受前端开发的影响。
