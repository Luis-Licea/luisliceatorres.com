Unless I am doing a bodyweight exercise, I like to increase the weight until I
can do at most 7 repetitions.

<table>
  <thead>
    <tr> <th>Exercise</th> <th>Max Weight (lb)</th> </tr>
  </thead>
  <tbody id="tbody">
    <!-- <tr> <td>Chest press</td> <td>120</td> </tr> -->
    <!-- ... -->
  </tbody>
</table>

<div id="exercise-plot"></div>

<table>
  <thead>
    <!-- <tr> <th>Exercise</th> <th>Max Repetitions</th> <th>Max Weight (lb)</th> </tr> -->
    <tr> <th>Exercise</th> <th>Max Repetitions</th> </tr>
  </thead>
  <tbody id="tbody2">
    <!-- <tr> <td>abdominal leg raises</td> <td>25reps</td> </tr> -->
    <!-- ... -->
  </tbody>
</table>

<div id="exercise-plot2"></div>

<script type="module">

import * as Plot from "https://cdn.jsdelivr.net/npm/@observablehq/plot@0.6/+esm";

const exercises = {
    "Abdominal": {
        "2024-12-14": [
            [8, 105],
            [3, 105],
        ],
        "2024-12-21": [
            [4, 120],
            [4, 120],
        ],
    },
    "AbCoaster": {
        "2024-12-21": [
            [8, 30],
            [8, 20],
            [8, 10],
        ],
        "2025-01-18": [
            [8, 35],
            [8, 35],
        ],
    },
    "Bicep Curl": {
        "2024-12-14": [
            [3, 90],
            [8, 75],
        ],
        "2024-12-21": [
            [4, 90],
            [2, 90],
            [3, 75],
        ],
        "2025-01-11": [
            [10, 90],
            [3, 105],
        ]
    },
    "Calf Extension": {
        "2024-12-14": [
            [10, 205],
            [12, 190],
        ],
        "2024-12-21": [
            [8, 220],
            [10, 205],
        ],
        "2025-01-11": [
            [10, 220],
            [6, 235],
        ]
    },
    "Chest Press": {
        "2024-12-14": [
            [3, 120],
            [3, 120],
            [4, 105],
        ],
        "2024-12-21": [
            [1, 120],
            [3, 105],
            [4, 105],
            [1, 105],
            [4, 90],
        ],
        "2024-12-26": [
            [6, 120],
            [4, 105]
        ],
        "2024-12-26": [
            [3, 120],
            [2, 120],
            [2, 120],
            [1, 120],
            [5, 105],
        ],
        "2025-01-11": [
            [6, 120],
            [3, 120],
            [3, 120],
        ]
    },
    "Hip Abduction": {
        "2024-12-26": [
            [10, 160],
            [10, 190],
        ],
        "2025-01-18": [
            [8, 205],
            [12, 190],
            [8, 190],
        ],
    },
    "Lat Pull Down": {
        "2024-12-14": [
            [3, 135],
            [3, 120],
            [5, 105],
        ],
        "2024-12-21": [
            [8, 135],
            [4, 150],
            [4, 135],
        ],
        "2024-12-26": [
            [5, 165],
            [3, 165],
        ],
        "2024-12-28": [
            [5, 165],
            [3, 165],
            [3, 150],
        ],
        "2025-01-11": [
            [6, 165],
            [3, 165],
            [1, 165],
            [2, 150],
        ],
    },
    "Leg Curl": {
        "2024-12-14": [
            [10, 160],
        ],
        "2024-12-28": [
            [7, 75],
            [7, 75],
        ],
        "2025-01-18": [
            [9, 90],
            [2, 105],
        ],
    },
    "Leg Extension": {
        "2024-12-14": [
            [10, 135],
            [6, 135],
        ],
        "2024-12-21": [
            [2, 150],
            [8, 135],
        ],
        "2025-01-18": [
            [10, 150],
            [8, 165],
        ],
    },
    "Seated Row": {
        "2024-12-21": [
            [7, 135],
        ],
        "2024-12-28": [
            [10, 120],
            [6, 90],
        ],
    },
    "Shoulder Press": {
        "2024-12-14": [
            [3, 90],
            [3, 90],
            [4, 75],
        ],
        "2024-12-21": [
            [8, 90],
            [2, 105],
            [2, 105],
            [2, 105],
        ],
        "2024-12-28": [
            [6, 75],
            [6, 30],
        ],
    },
    "Tricep Extension": {
        "2024-12-14": [
            [10, 60],
            [3, 90],
            [3, 90],
        ],
        "2024-12-21": [
            [10, 90],
            [2, 90],
            [8, 75],
        ],
        "2025-01-11": [
            [8, 90],
            [4, 105],
            [2, 105],
        ],
    },
};

// Body weight exercises.
const exercises2 = {
    "Abdominal Leg Raise": {
        "2024-12-14": [
            [25, 128],
            [15, 128],
            [10, 128],
        ],
    },
    "Pull Up": {
        "2024-12-14": [
            [5, 128],
            [5, 128],
            [3, 128],
            [4, 128],
            [2, 128],
        ],
        "2024-12-28": [
            [7, 129],
            [4, 129],
            [1, 129],
        ],
        "2025-01-18": [
            [8, 131],
            [3, 131],
            [3, 131],
            [2, 131],
        ],
    },
}

const exercises3 = {
    "Jogging": {
        // "date": [miles, minutes + seconds/60],
        "2024-12-26": [3.00, 42 + 13/60]
    }
}

// const data = [
//     {
//         exercise: "Exercise Name",
//         date: new Date(), // Include the ending date to make the chart look better.
//         lb: 20, // The weight in pounds.
//     }
// ]
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
    y: {grid: true, domain: [0, 300]},
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

const result = Object.groupBy(data, ({ exercise }) => exercise);
for (const [exerciseName, entries] of Object.entries(result)) {
    const tr = document.createElement("tr");
    const tdName = document.createElement("td");
    const tdWeight = document.createElement("td");

    tdName.innerText = exerciseName;
    tdWeight.innerText = Math.max(...entries.map(entry => entry.lb));

    tr.append(tdName);
    tr.append(tdWeight);

    document.querySelector("#tbody").append(tr);
}

const result2 = Object.groupBy(data2, ({ exercise }) => exercise);
for (const [exerciseName, entries] of Object.entries(result2)) {
    const tr = document.createElement("tr");
    const tdName = document.createElement("td");
    const tdRepetitions = document.createElement("td");

    tdName.innerText = exerciseName;
    tdRepetitions.innerText = Math.max(...entries.map(entry => entry.repetitions));

    tr.append(tdName);
    tr.append(tdRepetitions);

    document.querySelector("#tbody2").append(tr);
}
</script>
