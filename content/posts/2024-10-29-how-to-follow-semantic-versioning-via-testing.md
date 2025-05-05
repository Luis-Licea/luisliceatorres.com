---
title: How to follow semantic versioning via testing
date: 2024-10-29
categories: Programming
tags: Semantic Versioning
---

An easy way to follow semantic versioning is to create unit tests for your API.

When you make changes to the source code:

- If the unit test pass then you can increase the minor or the bug-fix release.
- If you added unit tests in a backwards-compatible way then you can increase
  the minor release.
- If the unit test fails then you need to fix the failing tests and increase the
  major release.
