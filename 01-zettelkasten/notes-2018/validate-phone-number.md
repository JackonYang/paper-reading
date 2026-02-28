Title: 国际手机号码的有效性校验
Date: 2016-11-05 21:36
Category: solution
Tags: mobile, database
Summary: 虽有 ITU-T 的 E.164 标准，然而，恰如浏览器之于 web 前端标准。总会有万万想不到。


手机号码，越来越多的用于网站注册／绑定联系方式。

存储／验证手机号码的格式，
本应该是一个很简单的事情。

根据 [ITU-T(国际电联电信标准化部门)](http://www.itu.int/zh/ITU-T/Pages/default.aspx)
的 E.164 标准做就好了。

然而，恰如浏览器之于 web 前端标准。
总会有万万想不到。

## 万万想不到们

手机号码的验证太复杂，
Google 竟然专门开了 1 个 github 仓库。

这个仓库里，竟然还有一个专门的 [FALSEHOODS](https://github.com/googlei18n/libphonenumber/blob/master/FALSEHOODS.md)
列举了 **25** 条万万想不到。

比如

误区：Phone numbers are always written in ASCII

纠正：In Egypt, it is common for phone numbers to be written in native digits.

根据 Google 到的信息来看，
作为文明古国，埃及的 native digits 貌似是象形文字。

用象形文字写出来的手机号码，画面太美。

1000000 写成 native digits，是 ![Egypt-1000000](https://en.wikipedia.org/w/extensions/wikihiero/img/hiero_C11.png?7c116)

深入研究埃及象形文字，点 [Egyptian numerals](http://www-history.mcs.st-and.ac.uk/HistTopics/Egyptian_numerals.html)

![Egypt-1000000](https://en.wikipedia.org/w/extensions/wikihiero/img/hiero_C11.png?7c116)
![Egypt-1000000](https://en.wikipedia.org/w/extensions/wikihiero/img/hiero_C11.png?7c116)
![Egypt-1000000](https://en.wikipedia.org/w/extensions/wikihiero/img/hiero_C11.png?7c116)
![Egypt-1000000](https://en.wikipedia.org/w/extensions/wikihiero/img/hiero_C11.png?7c116)


## 看似简单的几个问题，似乎并不容易

- 数据库设计时，应该考虑的最长手机号码是多少位
- 最短的手机号码，多少位
- 如何设计用户体验友好的手机号码输入界面
- 如何验证手机号码的有效性

## 最长手机号码是多少位

根据 ITU-T 制定的 E.164 标准，最长 15 位。
其中 1-3 位是国家码。

根据 [Google i18n](https://github.com/googlei18n/libphonenumber/blob/master/FALSEHOODS.md)，德国已经分配了超过这个长度的手机号码。

stackoverflow 上的讨论

[What's the longest possible worldwide phone number I should consider in SQL varchar(length) for phone](http://stackoverflow.com/questions/723587/whats-the-longest-possible-worldwide-phone-number-i-should-consider-in-sql-varc)

一般推荐的安全长度是 20。

数据库设计时，推荐 `varchar` 的长度为 50。

过度优化是万恶之源。

## 最短的手机号码多少位

stackoverflow 上的讨论

[What is the minimum length of a valid international phone number?](https://stackoverflow.com/questions/14894899/what-is-the-minimum-length-of-a-valid-international-phone-number)

不同的国家，不一样。

瑞士的，似乎最短，有 8 位的。

## 如何验证手机号码的有效性

#### 连国家码一起，用一个正则？

如果包括国家码，
同一个手机号码，可能有以下几种写法：

- 008610-85912411
- (008610)85912411
- (0086) 10-85912411
- +8610-85912411
- +86-10-85912411

如果产品需求是用一个正则表达式来验证，
恐怕会被程序员砍死。

#### 不同的国家，规则相同？

用户输入一个 10 位的手机号码，
这个号码，是否合法？

有一些国家，手机号码是 10 位的。

如果用户来自中国，
90% 的可能，是用户少输入了 1 位数字。

但我们并没有第一时间发现，并提示用户直接修改掉。

用户体验是很差的。

要么不校验，
要么针对国家定制匹配规则。


## 如何设计用户体验友好的手机号码输入界面

分析校验规则的时候，
已经讨论的很清楚了。

一定是 2 个输入框。

- 国家码。推荐使用下拉框
- 手机号码。根据选中的国家码，做有效性校验。

如果技术上有条件，加发送短信验证码的按钮。

github 的例子如下：

![github-phone-input](http://og6c46q8o.bkt.clouddn.com/github-phone-input.png)

## 总结

- 数据库设计时，推荐 `varchar` 的长度为 50。
- 用户输入界面，国家码和手机号码分开。
- 国家码的输入界面，推荐下拉框。
- 编写手机号码的有效性验证规则时，按国家写。可参考 [Google 开源的 libphonenumber](https://github.com/googlei18n/libphonenumber/)。
