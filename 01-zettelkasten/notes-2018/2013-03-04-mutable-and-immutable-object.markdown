---
layout: post
title: "python mutable and immutable object"
date: 2013-03-04 12:41
comments: true
categories: coding
---

there are two types in python: mutable and immutable.
tuple, number, string are all immutable.
dictionary and list are mutable.

passing parameters
------------------

coders can not decide whether to pass by value or pass by reference.
for mutable object, passing by value.
for immutable object, pass by reference.

<!--more-->

call`id objName` to watch memory address

{% include_code nested_list lang:python list_nesting.py %}

{% include_code default value of function parameter lang:python default_func_val.py %}

Default parameter values are evaluated
when the function definition is executed.
This means that the expression is evaluated once, when the function is defined,
and that the same “pre-computed” value is used for each call.
This is especially important to understand when a default parameter is mutable,
such as a list or a dictionary:
if the function modifies the object(e.g. by appending an item to a list),
the default value is in effect modified.
This is generally not what was intended.
A way around this is to use None as the default,
and explicitly test for it in the body of the function.

generate new id when list created
----------------------

{% include_code generate new ID when list created lang:python newlist.py %}

global var in local: immutable is read-only，mutable is writable
--------------------------------------------

declear as `global var_name` in functions to make global variables writable

nonlocal is the same as glocal except that nonlocal is used for upper level without global scope. 
