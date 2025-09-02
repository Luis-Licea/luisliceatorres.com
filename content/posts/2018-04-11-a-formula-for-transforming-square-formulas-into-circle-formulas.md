---
title: A Formula for Transforming Square Formulas Into Circle Formulas
date: 2018-04-11
showTableOfContents: true
description: "Deriving Circle Formulas from Square Formulas: Relating Spheres, Cubes, and their Cross-sections"
author: Luis David Licea Torres
categories: Math
tags: Formula
---

Let us assume that we do not know anything about circles besides the following equation:
{{< katex >}}

<div id="equation">

\\[
\begin{align}
    S = C \cdot\dfrac{\pi}{2D} \mid  s=2r
\end{align}
\tag{1}
\\]


</div>

Where
\\(\textit{S}\\) stands for the formula of a sphere or circle,
\\(\textit{C}\\) stands for the formula of a cube or square,
\\(\textit{D}\\) stands for the number of dimensions in the geometric shape,
\\(\textit{s}\\) stands for the side length of the square, and
\\(\textit{r}\\) stands for the radius of the circle or sphere.

If the circle is inscribed in the square,
then the length of the square's side will be \\(s = 2r\\) as shown in
[Figure 1].

<style>
figcaption {
  text-align: center;
}
</style>

<div id="side-length-figure">
  <svg style="margin: auto; fill: white;" width="220" height="240" xmlns="http://www.w3.org/2000/svg">
    <text x="100" y="14" font-style="italic" fill="red">s = 2r</text>
    <rect width="200" height="200" x="10" y="20" style="fill: transparent; stroke-width:3; stroke: black;" />
    <circle cx="110" cy="120" r="100" style="fill: transparent; stroke-width: 3; stroke: black;" />
    <line x1="10" y1="20" x2="210" y2="20" style="stroke: red; stroke-width: 3;" />
    <line x1="110" y1="120" x2="210" y2="120" style="stroke: lime; stroke-width: 3;" />
    <text x="155" y="114" font-style="italic"   fill="lime">s</text>
  </svg>
  <figcaption id="image-caption">Figure 1: Illustration of a circle inscribed in a square.</figcaption>
</div>


The logic for designing the [equation 1] is simple: as long as the dimensions of
a square or a cube are given, the dimensions of its inscribed circle or sphere
can be calculated. Analyzing 2-dimensionally, squares have a larger area than
their inscribed circles because circles are missing four corners; however, the
missing area of those four corners is accounted for in [equation 1].

## Applying the Formula

[Equation 1] can be used to find the 
[volume],
[surface area],
[area],
[circumference],
[side length],
[arc length], and
[sector area],
of spheres and circles.

### Volume

To see how the equation works, consider the formula for the volume of a cube and
the number of dimensions a cube has:

\\[
C_{volume} = s^{3}
\tag{2}
\\]

\\[
D = 3
\tag{3}
\\]

In order to find the corresponding volume of a sphere inscribed in such a cube,
we must plug \\(D\\), the number of dimensions, into [equation 1] as shown
below:

\\[
\begin{aligned}
    S_{volume} &= C_{volume} \cdot\dfrac{\pi}{2D} \mid  s=2r
        \newline
    & = s^{3} \cdot\dfrac{\pi}{2\cdot 3} \mid s=2r
        \newline
    & = (2r)^{3} \cdot\dfrac{\pi}{6}
        \newline
    & = \dfrac{8\pi r^{3}}{6} 
        \newline
    & = \dfrac{4\pi r^{3}}{3}
        \newline
\end{aligned}
\tag{4}
\\]

### Surface Area

Consider the formula for the surface area of a cube and the number of dimensions
a cube has:

\\[
C_{surfaceArea} = 6s^{2}
\tag{5}
\\]
\\[
D =  3
\tag{6}
\\]

Then the corresponding surface area of a sphere inscribed in such cube can be
found using [equation 1], as shown below:

\\[
\begin{align*}
    S_{surfaceArea} &= C_{surfaceArea} \cdot\dfrac{\pi}{2D} \mid  s=2r
        \newline
    &= 6s^{2} \cdot\dfrac{\pi}{2\cdot 3} \mid s=2r
       \newline
    &= 6(2r)^{2} \cdot\dfrac{\pi}{6}
       \newline
    &= 4\pi r^{2}
\end{align*}
\tag{7}
\\]

### Area

Consider the formula for the area of a square (the cross-section of a cube) and the number of dimensions a square has:

\\[
C_{area} = s^{2}
\tag{8}
\\]

\\[
D = 2
\tag{9}
\\]

Then the corresponding area of a circle (the cross-section of a sphere)
inscribed in such a square can be found using [equation 1], as shown below:

\\[
\begin{align*}
    S_{area} &= C_{area} \cdot\dfrac{\pi}{2D} \mid  s=2r
    \newline
    &= s^{2} \cdot\dfrac{\pi}{2\cdot 2} \mid s=2r
    \newline
    &= (2r)^{2} \cdot\dfrac{\pi}{4}
    \newline
    &= \dfrac{4\pi r^{2}}{4}
    \newline
    &= \pi r^{2}
\end{align*}
\tag{10}
\\]

### Circumference

Consider the formula for the perimeter of a square and the number of dimensions a square has:

\\[
C_{perimeter} = 4s
\tag{11}
\\]

\\[
D = 2
\tag{12}
\\]

Then the corresponding perimeter (circumference) of a circle inscribed in such a
square can be found using equation [equation 1], as shown below:

\\[
\begin{align*}
    S_{circumference} &= C_{perimeter} \cdot\dfrac{\pi}{2D} \mid  s=2r
    \newline
    &= 4s \cdot\dfrac{\pi}{2\cdot 2} \mid s=2r
    \newline
    &= 4(2r) \cdot\dfrac{\pi}{4}
    \newline
    &= 2 \pi r
\end{align*}
\tag{13}
\\]

[Figure 2] clarifies the formula's meaning:

<div id="circumference-figure">
  <svg style="margin: auto; fill: white;" width="220" height="240" xmlns="http://www.w3.org/2000/svg">
    <text x="100" y="14" font-style="italic" fill="red">4s</text>
    <rect width="200" height="200" x="10" y="20" style="fill: transparent; stroke-width:3; stroke: red;" />
    <circle cx="110" cy="120" r="100" style="fill: transparent; stroke-width: 3; stroke: lime;" />
    <text x="100" y="114" font-style="italic" fill="lime">2πr</text>
  </svg>
  <figcaption id="image-caption">Figure 2: Illustration showing that a square's perimeter corresponds to its inscribed circle's circumference.</figcaption>
</div>

### Side Length

Consider the formula for the side length of a square and the number of dimensions a square has:

\\[
C_{sideLength} = s
\tag{14}
\\]

\\[
D =  2
\tag{15}
\\]

Then the corresponding side length (arc length) of a circle inscribed in such
square can be found using equation [equation 1], as shown below:

\\[
\begin{align*}
   S_{arcLength} &= C_{sideLength} \cdot\dfrac{\pi}{2D} \mid  s=2r
    \newline
   &= s \cdot\dfrac{\pi}{2\cdot2} \mid s=2r
    \newline
   &= (2r) \cdot\dfrac{\pi}{4}
    \newline
   &= \dfrac{1}{2} \pi r
\end{align*}
\tag{16}
\\]

This formula's meaning is clarified in [figure 3]:

<div id="arc-length-figure">
  <svg style="margin: auto; fill: white;" width="220" height="240" xmlns="http://www.w3.org/2000/svg">
    <text x="10" y="14" font-style="italic" fill="red">s</text>
    <rect width="200" height="200" x="10" y="20" style="fill: transparent; stroke-width:3; stroke: black;" />
    <circle cx="110" cy="120" r="100" style="fill: transparent; stroke-width: 3; stroke: black;" />
    <!-- <line x1="10" y1="20" x2="210" y2="20" style="stroke: red; stroke-width: 3;" /> -->
    <line x1="10" y1="20" x2="105" y2="20" style="stroke: red; stroke-width: 3;" />
    <line x1="10" y1="20" x2="10" y2="120" style="stroke: red; stroke-width: 3;" />
    <!-- <text x="104" y="114" font-style="italic"   fill="lime">r</text> -->
    <foreignObject x="104" y="100" width="100" height="100">
    <math style="font-size: 1.2rem;">
        <mrow>
            <mfrac>
                <mn>1</mn>
                <mn>2</mn>
            </mfrac>
            <mi>π</mi>
            <mi>r</mi>
         </mrow>
    </math>
    </foreignObject>
    <!-- M x y -->
    <!-- A rx ry x-axis-rotation large-arc-flag sweep-flag x y -->
    <path d="M 10 120 A 100 100, 0, 0, 1, 105 20" fill="transparent" stroke="lime" stroke-width="3" /> </svg>
  <figcaption id="image-caption">Figure 3: Illustration showing the relation between the side length of a square and the arc length of a circle inscribed in a square.</figcaption>
</div>

Admittedly, this function is not very useful without taking into account how
much of the circle is inscribed into the square. Luckily, the [side length] can
be expressed as a function of of \\(\theta\\) to find any [arc length].

### Functions of \\(\theta\\)

It is possible to express [equation 1] as functions of \\(\theta\\), which is
required for finding the [arc length] or the [sector area] of a circle:

\\[
\begin{align*}
    S &= C \cdot\dfrac{\pi}{2D} \mid  s=2r
        \newline
    S(\theta) &= C \cdot\dfrac{\pi}{2D} \cdot \dfrac{\theta}{2\pi} \mid  s=2r
        \newline
    S(\theta) &= C \cdot\dfrac{\theta}{4D} \mid s=2r
\end{align*}
\tag{17}
\\]

#### Arc Length

The formula for the arc length of a circle can be obtained from the perimeter formula of a square:

\\[
C_{perimeter} = 4s
\tag{18}
\\]

\\[
D =  2
\tag{19}
\\]

After the conversion formula is applied as normal, the final result needs to be
multiplied by \\(\dfrac{\theta}{2\pi}\\) to take into account how much of the
circle is inscribed into the square, as shown below:

\\[
\begin{align*}
    S_{arcLength} &= C_{perimeter} \cdot\dfrac{\pi}{2D} \cdot \dfrac{\theta}{2\pi} \mid  s=2r
    \newline
    &= 4s \cdot\dfrac{\pi}{2\cdot 2} \cdot \dfrac{\theta}{2\pi} \mid s=2r
    \newline
    &= (2r) \cdot\dfrac{\theta}{2}
    \newline
    &= \theta r
\end{align*}
\tag{20}
\\]

#### Sector Area

The formula for the sector area of a circle can be obtained from the area formula of a square:

\\[
C_{area} = s^{2}
\tag{21}
\\]

\\[
D = 2
\tag{22}
\\]

The conversion formula is applied as normal, but the final result is multiplied
by \\(\dfrac{\theta}{2\pi}\\) to take into account how much of the circle is
inscribed into the square, as shown below:

\\[
\begin{align*}
    S_{sectorArea} &= C_{area} \cdot\dfrac{\pi}{2D} \cdot \dfrac{\theta}{2\pi} \mid  s=2r
    \newline
    &= s^{2} \cdot\dfrac{\pi}{2\cdot 2} \cdot \dfrac{\theta}{2\pi} \mid s=2r
    \newline
    &= (2r)^2 \cdot\dfrac{\theta}{8}
    \newline
    &= 4r^2 \cdot\dfrac{\theta}{8}
    \newline
    &= \dfrac{1}{2} \theta r^2
\end{align*}
\tag{23}
\\]

## Formulas

### 3D Shapes

\\[
\begin{align*}
    S_{volume} &= C_{volume} \cdot\dfrac{\pi}{2D} \mid  s=2r
        \newline
    &= s^{3} \cdot\dfrac{\pi}{2\cdot 3} \mid s=2r
        \newline
    &= (2r)^{3} \cdot\dfrac{\pi}{6}
        \newline
    &= \dfrac{8\pi r^{3}}{6}
        \newline
    &= \dfrac{4\pi r^{3}}{3}
        \newline
\end{align*}
\\]

\\[
\begin{align*}
    S_{surfaceArea} &= C_{surfaceArea} \cdot\dfrac{\pi}{2D} \mid  s=2r
        \newline
    &= 6s^{2} \cdot\dfrac{\pi}{2\cdot 3} \mid s=2r
        \newline
    &= 6(2r)^{2} \cdot\dfrac{\pi}{6}
        \newline
    &= 4\pi r^{2}
\end{align*}
\\]

### 2D Shapes

\\[
    \begin{align*}
        S_{area} &= C_{area} \cdot\dfrac{\pi}{2D} \mid  s=2r
        \newline
        &= s^{2} \cdot\dfrac{\pi}{2\cdot 2} \mid s=2r
        \newline
        &= (2r)^{2} \cdot\dfrac{\pi}{4}
        \newline
        &= \dfrac{4\pi r^{2}}{4}
        \newline
        &= \pi r^{2}
        \newline
        S(\theta)_{sectorArea} &= \pi r^{2} \cdot \dfrac{\theta}{2\pi}
        \newline
        &= \dfrac{1}{2} \theta r^{2}
    \end{align*}
\\]

\\[
    \begin{align*}
        S_{circumference} &= C_{perimeter} \cdot\dfrac{\pi}{2D} \mid  s=2r
        \newline
        &= 4s \cdot\dfrac{\pi}{2\cdot 2} \mid s=2r
        \newline
        &= 4(2r) \cdot\dfrac{\pi}{4}
        \newline
        &= 2 \pi r
        \newline
        S(\theta)_{arcLength} &= 2 \pi r \cdot \dfrac{\theta}{2\pi} 
        \newline
        &= \theta r
    \end{align*}
\\]

[equation 1]: #equation
[figure 1]: #side-length-figure
[figure 2]: #circumference-figure
[figure 3]: #arc-length-figure

[volume]: #volume
[surface area]: #surface-area
[area]: #area
[circumference]: #circumference
[side length]: #side-length
[arc length]: #arc-length
[sector area]: #sector-area
