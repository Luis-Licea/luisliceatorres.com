---
title: Benchmarking recursion in different languages
date: 2023-07-09
tags: [Programming, Benchmarkig]
languages: [en]
---

I used the Fibonacci sequence to test the speed of recursive calls in different
languages. Take the results with a grain of salt because my computer is not a
controlled environment. I found that Python was slower than I expected, while
JavaScript was faster than I expected. Bash was more than 100,000 times slower
than C because the Bash benchmark did not finish after the 5-hour mark. My
hypothesis is that Bash is very slow because math is done in sub-shells,
requiring bash to spawn a process for every arithmetic operation.

Execution times for calculating the 39th term of the Fibonacci sequence:

| Language   | Compiler/Interpreter | Flags                | Time (sec) |
| ---------- | -------------------- | -------------------- | ---------: |
| C          | gcc 12.3.0           | -O3 -Ofast           |      0.124 |
| C++        | g++ 12.3.0           | -O3 -Ofast           |      0.125 |
| Rust       | rustc 1.73.0         | -C opt-level=3       |      0.247 |
| Java       | javac/java 17.0.7    | None                 |      0.460 |
| Dart       | dart 3.3.4           | compile aot-snapshot |      0.466 |
| JavaScript | node 21.2.0          | None                 |      0.802 |
| Lua        | lua 5.2.4            | None                 |      8.192 |
| Python     | python3 3.11.6       | None                 |     10.828 |
| Perl       | perl 5.38.2          | None                 |     38.966 |
| Vimscript  | nvim 0.10.0          | None                 |    346.000 |
| Nushell    | nu 0.93.0            | None                 |    710.000 |
| Bash       | bash                 | None                 |  18000.000 |

## Implementations

<details>
<summary>C</summary>

```c {{% include "assets/fibonacci.c" %}}
```

</details>

<details>
<summary>C++</summary>

```c++ {{% include "assets/fibonacci.cpp" %}}
```

</details>

<details>
<summary>Rust</summary>

```rust {{% include "assets/fibonacci.rs" %}}
```

</details>

<details>
<summary>Java</summary>

```java {{% include "assets/Fibonacci.java" %}}
```

</details>

<details>
<summary>Dart</summary>

```dart {{% include "assets/fibonacci.dart" %}}
```

</details>

<details>
<summary>JavaScript</summary>

```js {{% include "assets/fibonacci.js" %}}
```

</details>

<details>
<summary>Lua</summary>
{{< highlight lua >}}
{{% include "assets/fibonacci.lua" %}}
{{< /highlight >}}
</details>

<details>
<summary>Python</summary>

```python {{% include "assets/fibonacci.py" %}}
```

</details>

<details>
<summary>Perl</summary>

```perl {{% include "assets/fibonacci.pl" %}}
```

</details>

<details>
<summary>Vimscript</summary>

```vimscript {{% include "assets/fibonacci.vim" %}}
```

</details>

<details>
<summary>Nushell</summary>

```nu {{% include "assets/fibonacci.nu" %}}
```

</details>

<details>
<summary>Bash</summary>

```bash {{% include "assets/fibonacci.bash" %}}
```

</details>
