---
title: Benchmarking external command execution time
date: 2024-06-15
categories: Programming
tags: Benchmarkig
languages: [en]
---

Bash is a command interpreter used in system scripts for calling external
commands, so I wanted to compare the speed of Bash to the speed of other
interpreted languages by doing a simple test.

For the test, the scripts call the same external command one hundred times and
then the times are compared to see which interpreter executed the commands in
the shortest time.

The results show that Bash, in average, executed the commands in the shortest
amount of time. It also shows that the slowest language, Python, was 34% slower
than Bash. This is surprising considering that [Bash is exceptionally slow at
recursion](
{% post_url 2023-07-09-benchmarking-recursion-in-different-languages/2023-07-09-benchmarking-recursion-in-different-languages %})
and [Bash is slow at arithmetic](
{% post_url 2024-06-08-benchmarking-arithmetic-in-different-languages/2024-06-08-benchmarking-arithmetic-in-different-languages %}).

Python and JavaScript, despite being slower at this specific task, provide:

- Support for object-oriented code
- Package managers
- Rich standard libraries
- Development tools like linters

This means that you can write scripts that call external commands in your
preferred language instead of in Bash if you find a performance loss of 34%
acceptable. For example, I prefer to write Git hooks in JavaScript when working
in JavaScript projects instead of writing the hooks in Bash.

Execution times for calling an external command one hundred times:

| Command       | Interpreter   |      Mean [s] | Min [s] | Max [s] |    Relative |
| :------------ | :------------ | ------------: | ------: | ------: | ----------: |
| `./test.bash` | bash 5.2.26   | 3.230 ± 0.285 |   2.712 |   3.670 |        1.00 |
| `./test.pl`   | perl 5.38.2   | 4.079 ± 0.265 |   3.652 |   4.529 | 1.26 ± 0.14 |
| `./test.mjs`  | node 22.2.0   | 4.252 ± 0.106 |   4.109 |   4.427 | 1.32 ± 0.12 |
| `./test.py`   | python 3.11.9 | 4.341 ± 0.190 |   4.058 |   4.630 | 1.34 ± 0.13 |

## Implementations

<details>
<summary>Bash</summary>

```bash {{% include "assets/test.bash" %}}
```

</details>

<details>
<summary>Perl</summary>

```pl {{% include "assets/test.pl" %}}
```

</details>

<details>
<summary>JavaScript</summary>

```js {{% include "assets/test.mjs" %}}
```

</details>

<details>
<summary>Python</summary>

```py {{% include "assets/test.py" %}}
```

</details>
