---
title: Benchmarking recursion in different languages
tags: [Programming, Benchmarkig]
languages: [en]
---

I used the Fibonacci sequence to test the speed of recursive calls in different
languages. Take the results with a grain of salt because my computer is not a
controlled environment. I found that Python was slower than I expected, while
JavaScript was faster than I expected. As for Bash, I found it pointless to
continue measuring after the 5-hour mark.

| Language   | Compiler/Interpreter | Flags          | Time        |
| ---------- | -------------------- | -------------- | ----------- |
| C          | gcc                  | -O3 -Ofast     | 0sec 266ms  |
| C++        | g++                  | -O3 -Ofast     | 0sec 267ms  |
| Rust       | rustc                | -C opt-level=3 | 0sec 433ms  |
| Java       | javac/java           | None           | 0sec 715ms  |
| JavaScript | node                 | None           | 1sec 185ms  |
| Lua        | lua                  | None           | 9sec 152ms  |
| Python     | python3              | None           | 15sec 831ms |
| Bash       | bash                 | None           | 5hr+        |

## Implementations

<details>
<summary>C</summary>
{% highlight c %}
{% include_relative assets/fibonacci.c %}
{% endhighlight %}
</details>

<details>
<summary>C++</summary>
{% highlight c++ %}
{% include_relative assets/fibonacci.cpp %}
{% endhighlight %}
</details>

<details>
<summary>Rust</summary>
{% highlight rust %}
{% include_relative assets/fibonacci.rs %}
{% endhighlight %}
</details>

<details>
<summary>Java</summary>
{% highlight java %}
{% include_relative assets/fibonacci.java %}
{% endhighlight %}
</details>

<details>
<summary>JavaScript</summary>
{% highlight javascript %}
{% include_relative assets/fibonacci.js %}
{% endhighlight %}
</details>

<details>
<summary>Lua</summary>
{% highlight lua %}
{% include_relative assets/fibonacci.lua %}
{% endhighlight %}
</details>

<details>
<summary>Python</summary>
{% highlight python %}
{% include_relative assets/fibonacci.py %}
{% endhighlight %}
</details>

<details>
<summary>Bash</summary>
{% highlight bash %}
{% include_relative assets/fibonacci.bash %}
{% endhighlight %}
</details>
