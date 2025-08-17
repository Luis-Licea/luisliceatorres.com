---
title: Gym Progress
date: 2024-12-22
categories: Health
tags: Weight Training
---

Unless I am doing a bodyweight exercise, I like to increase the weight until I
can do at most 7 repetitions.

{{% include "assets/output/exerciseWithWeights.html" %}}

<div id="exercise-plot"></div>

{{% include "assets/output/exerciseWithBodyweight.html" %}}

<div id="exercise-plot2"></div>

<script type="module">

import * as Plot from "https://cdn.jsdelivr.net/npm/@observablehq/plot@0.6/+esm";
import exercises from "./assets/exerciseWithWeights.json" with { type: "json" };
import exercises2 from "./assets/exerciseWithBodyweight.json" with { type: "json" };

const data = [];
for (const [exerciseName, exerciseDates] of Object.entries(exercises)) {
        for (const [exerciseDate, repetitionsAndWeight] of Object.entries(exerciseDates)) {
            data.push({
                exercise: exerciseName,
                date: new Date(exerciseDate),
                lb: Math.max(...repetitionsAndWeight.map(([repetition, weight]) => weight)),
            });
        }
}

const data2 = [];
for (const [exerciseName, exerciseDates] of Object.entries(exercises2)) {
        for (const [exerciseDate, repetitionsAndWeight] of Object.entries(exerciseDates)) {
            data2.push({
                exercise: exerciseName,
                date: new Date(exerciseDate),
                repetitions: Math.max(...repetitionsAndWeight.map(([repetition, weight]) => repetition)),
            });
        }
}

const plot = Plot.plot({
    color: { scheme: "Warm", legend: true },
    x: {grid: true, line: true, insetRight: 80},
    y: {grid: true, domain: [0, 350]},
    marks: [
        Plot.line(data, {x: "date", y: "lb", stroke: "exercise", marker: true, tip: true}),
        Plot.text(data, Plot.selectLast({x: "date", y: "lb", text: "exercise", z: "exercise", textAnchor: "start", dx: 18, fontWeight: "bold"})),
        // Plot.tip(data, Plot.pointerX({ x: "date", y: "lb", })),
    ],
});

const plot2 = Plot.plot({
    color: { scheme: "Warm", legend: true },
    x: {grid: true, line: true, insetRight: 80},
    y: {grid: true, domain: [0, 30]},
    marks: [
        Plot.line(data2, {x: "date", y: "repetitions", stroke: "exercise", marker: true, tip: true}),
        Plot.text(data2, Plot.selectLast({x: "date", y: "repetitions", text: "exercise", z: "exercise", textAnchor: "start", dx: 18, fontWeight: "bold"})),
    ],
});

document.querySelector("#exercise-plot").append(plot);
document.querySelector("#exercise-plot2").append(plot2);
</script>
