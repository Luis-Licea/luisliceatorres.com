---
title: Shortest C program with a segmentation fault
date: 2023-03-03
description:
  What is the smallest C program you can write that will give you segmentation
  fault?
categories: Programming
tags: C
---

What is the shortest C program with a segmentation fault that you can write?

Create a file named `main.c` and compile it using `gcc -nostdlib main.c`.

```c
int _start() {}
```

Execute the output binary to get a segmentation fault.

```
[1]    15054 segmentation fault  ./a.out
```
