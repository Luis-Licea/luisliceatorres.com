---
title: Benchmarking arithmetic in different languages
date: 2024-06-08
categories: Programming
tags: Benchmarkig
languages: [en]
---

This simple benchmark compares the speed at which different languages are able
to sum values:
<math display="block" style="font-size: x-large; margin: 0.5em;">
    <munderover>
        <mo>∑</mo>
        <mrow>
            <mi>i</mi>
            <mo>=</mo>
            <mn>0</mn>
        </mrow>
        <mn>10000</mn>
    </munderover>
    <mi>i</mi>
</math>

Unsurprisingly, the Rust implementation was the fastest. This is likely due to
Rust being a compiled language while the other languages are interpreted. This
shows that Bash is not designed to perform arithmetic operations since it is
slow at addition and [exceptionally slow at recursion]({{< ref "/posts/2023-07-09-benchmarking-recursion-in-different-languages" >}}).
Instead, Bash should be used for calling external commands since it is [the
fastest command interpreter]({{< ref "/posts/2024-06-15-benchmarking-external-command-execution-time" >}}).

Execution times for calculating the series sum of 100,000:

| Language      |    Mean [ms] | Min [ms] | Max [ms] |     Relative |
| :------------ | -----------: | -------: | -------: | -----------: |
| rustc 1.79.0  |  24.4 ± 11.2 |      7.7 |     39.4 |         1.00 |
| perl 5.38.2   |  28.1 ± 11.5 |      9.3 |     43.5 |  1.15 ± 0.71 |
| python 3.11.9 |  35.1 ± 12.6 |     16.5 |     48.1 |  1.44 ± 0.84 |
| node 22.2.0   |  46.7 ± 10.5 |     33.1 |     63.2 |  1.91 ± 0.98 |
| bash 5.2.26   | 307.2 ± 13.6 |    289.6 |    325.4 | 12.59 ± 5.81 |

## Implementations

<details>
<summary>Rust</summary>

```rs {{% include "assets/arithmetic.rs" %}}
```

</details>

<details>
<summary>Perl</summary>

```pl {{% include "assets/arithmetic.pl" %}}
```

</details>

<details>
<summary>Python</summary>

```py {{% include "assets/arithmetic.py" %}}
```

</details>

<details>
<summary>JavaScript</summary>

```js {{% include "assets/arithmetic.js" %}}
```

</details>

<details>
<summary>Bash</summary>

```sh {{% include "assets/arithmetic.sh" %}}
```

</details>
