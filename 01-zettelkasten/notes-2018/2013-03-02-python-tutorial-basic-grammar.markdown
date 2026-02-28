---
layout: post
title: "python 基础语法"
date: 2013-03-02 21:50
comments: true
categories: [coding,python,vivian]
---

一门语言的基础语法，主要涉及

- 基本变量类型
- 常用数据结构
- 循环语句
- 判断语句
- 函数

<!--more-->

基本数据类型
------------------

#### 弱数据类型

在 c 语言中，如果要使用一个变量，
必须先声明一个变量并指明变量的类型（int/char/float)。  
python 中不需要，使用变量时，直接赋值即可。
不需要提前声明，更不需要指定变量类型。赋值的时候，系统会自动判断变量类型。

弱数据类型，仅仅是用户在很多情况下不需要关注数据类型，可以节省编程的时间。
程序内部根据 c 语言一样，有着明确的数据类型的概念。

#### strings  

python 2.7 的 str 默认是 ASCII 编码。
`u'中文'` 用 ASCII 编码存储中文。

多行字符串：行尾用 "\ " 可以将字符串写成多行，每行的末尾不会包含回车符 '\n'

数据结构
--------

python 三大数据结构：

- list: 类似 c 语言的动态数组。
- set: 集合。与 list 类似，元素无序且不能重复。
- dict: 字典。key 不能重复。list 可以看作是键值为 1 且连续的特殊 dict。

流程控制--for/if
----------------

python 中没有 `switch` 语句，用`if-elif-else` 或 `dictionary` 替代。

python 中可以用 `for...in...` 方便的遍历一个数组/集合/字典等的元素。

{% include_code for_in loop lang:python sum10.py %}

while 和 for 循环后可以用 else，正常退出循环时，执行该 else 语句。

案例代码如下:

{% include_code control flows lang:python control_flows.py %}

Function
--------

1. you can use variables defined outside the function, but not encouraged,
    for it is unclear to readers.
3. default argument must be immutable
5. keyword-only parameters: declared after a starred parameter.

{% include_code functions lang:python functions.py %}

Module and Package
------------------

1. **avoid** using`from ... import ...` to avoid name clashes.
2. module search path: `sys.path`
3. a module's `__name__` is `__main__` implies that 
    the module is being run standalone.
4. `dir(module_name)` list the identifiers of the module.
5. packages are just folders of modules with a special `__init__.py` file.

Object Oriented and Classes
---------------------------

{% include_code class and inheritance lang:python obj_oriented.py %}

Input and Output
----------------

1. `input(info_text)`, `print(text)`
2. file. `open`,`read`, `write`, `close`
3. pickle.
	`pickle.dump(obj_name, f)`
	`obj_name=pickle.load(f)`

Exceptions and with-statement
-----------------------------

{% include_code Exception and Raising Exceptions lang:python except.py %}

{% include_code with statement lang:python with_example.py %}
