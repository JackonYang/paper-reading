---
layout: post
title: "detect and convert file encoding"
date: 2012-08-26 01:38
comments: true
categories: [encoding, etc]
---

detect and convert file encoding with enca
-----------

by default, ubuntu provide `iconv` to detect and convert file encodings.
there are some shortcomings of it:

<!--more-->

- origion encoding should be given when converting, which can be detected by `file`.
- it will not return when error occurs, which is a little complicated when scripting.

`enca` is suggested, install:

``` bash intall enca
$ sudo apt-get install enca
```

usage:
``` bash enca usage
$ enca filename
7bit ASCII character
$ enca -x target_encoding filename
```

convert encoding of filename with convmv
----------------------------------------

``` bash convert encoding of filenames in /home
# install
$ sudo apt-get install convmv
# convert filename encoding
$ convmv -f gbk -t utf8 -r –notest /home
# -notest: do it now, no test
```
