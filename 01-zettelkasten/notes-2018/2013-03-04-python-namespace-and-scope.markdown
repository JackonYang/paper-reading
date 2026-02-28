---
layout: post
title: "python namespace and scope"
date: 2013-03-04 11:05
comments: true
categories: coding
---

the fact of variable scope in python is that:
while a script is running, there are some namespaces.
when we call a name,
we search it from the existing namespaces under certain rules.
once found, stop searching.

<!--more-->

name
----

everything in python is an object.
a name is the name of objects, not just variables or constants.
Numbers, strings, functions, classes are all objects.
we can apply name to any of them.

e.g. apply name to a function:

{% img /images/name_to_func.png 'name applied to a function' %}

namesapce
---------

A namespace is a mapping from names to objects
In a sense, the set of attributes of an object also form a namespace.

each module has its own namespace.
Whenever we run a simple Python script,
the interpreter treats it as module called `__main__`,
which gets its own namespace.
The builtin functions also live in a module called `__builtin__`
and have their own namespace.

The local namespace for a function is created when the function is called,
and deleted when the function returns or raises an exception that 
is not handled within the function.

avoid using `from ... import ...` to avoid name clashes.

scope
-----

A scope is a textual region of a Python program where
a namespace is directly accessible, created by `def`, `class`, `lambda`.
call `locals()` and `globals()` to see variables list.
at least three nested scopes whose namespaces are directly accessible.

- the innermost scope, which is searched first, contains the local names
- the scopes of any enclosing functions, which are searched starting with the nearest enclosing scope, contains `non-local`, but also `non-global` names
- the next-to-last scope contains the current module’s global names
- the outermost scope(searched last) is the namespace containing built-in names.

reference
---------

1. [http://docs.python.org/3.2/tutorial/classes.html](http://docs.python.org/3.2/tutorial/classes.htm)
2. [http://bytebaker.com/2008/07/30/python-namespaces/](http://bytebaker.com/2008/07/30/python-namespaces/)
