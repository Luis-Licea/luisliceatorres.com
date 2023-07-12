---
title: Benchmarking Python multiprocessing and multithreading
tags: [Programming, Benchmarkig]
languages: [en]
---

I benchmarked the Fibonacci sequence using multiprocessing and multithreading. I
found that multiprocessing was faster than multithreading by approximately a
factor of _p_, where _p_ is the number of processes or threads. In other words,
five processes working on one task each will finish approximately five times
faster than five threads working on one task each, where the given tasks require
the same number of calculations to complete. Creating processes was relatively
slow compared to creating threads, but the time it took to create the processes
was negligible when executing long-running programs.

The table shows the speed of 5 processes and 5 threads each independently
calculating the 25-th term of the Fibonacci sequence.

```bash
python3 fibonacci.py 25 5
```

| Method          | Time       |
| --------------- | ---------- |
| multithreading  | 0sec 027ms |
| multiprocessing | 0sec 033ms |

The table shows the speed of 5 processes and 5 threads each independently
calculating the 30-th term of the Fibonacci sequence.

```bash
python3 fibonacci.py 30 5
```

| Method          | Time        |
| --------------- | ----------- |
| multiprocessing | 13sec 143ms |
| multithreading  | 66sec 397ms |

The results show that multiprocessing is faster than multithreading for
long-running programs by a factor of _p_, where _p_ is the number of processes
or threads. This means that multiprocessing should be used in situations where
processes can work independently, like processing data and writing it to
different files.

## Implementations

<details>
<summary>Python</summary>
{% highlight python %}
{% include_relative assets/fibonacci.py %}
{% endhighlight %}
</details>
