---
title: C Macros Be Like
date: 2025-12-30T14:46:28-06:00
draft: true
description: C Macro Hell
categories: Programming
tags: [C, Sarcasm]
---

C syntax is super ugly and hard to understand, so you should use macros to make the code
more readable and maintainable. "Code like you speak and think" is my motto.

```c
#include <err.h>
#define rn ;
#define cap 0
#define no !
#define chief int main(int argc,  char **argv)
#define bouta (
#define deadass --
#define n ,
#define bruh " "
#define mf )
#define do_be {
#define aint !=
#define innit if
#define yeet return
#define yikes errx
#define frfr }

chief do_be
    innit bouta deadass argc aint no cap mf do_be
        yikes bouta no cap n "sheeit" bruh "thats crazy" mf rn
        yeet no cap rn
    frfr
    yeet cap rn
frfr
```

Here is the program output.

```
$ gcc ./test.c && ./a.out
a.out: sheeit thats crazy
```

Macros are a wonderful, powerful, and underused tool that every program should
use.
