#!/usr/bin/env -S deno run --allow-write

import { findMax, objectToExerciseSet, sessionsToTable } from "./generateExerciseTables.mjs";
import exerciseWithWeights from "./exerciseWithWeights.json" assert { type: "json" };
import exerciseWithBodyWeight from "./exerciseWithBodyweight.json" assert { type: "json" };
import { writeFile } from "node:fs/promises";

const sessions = objectToExerciseSet(exerciseWithWeights);
const maxValues = findMax(sessions, "lb");
const table = sessionsToTable(
    maxValues,
    ["Exercise", "Max Weight (lb)", "Repetitions"],
    ["exercise", "lb", "repetitions"]
);
await writeFile(`${import.meta.dirname}/output/exerciseWithWeights.html`, table);


const sessions2 = objectToExerciseSet(exerciseWithBodyWeight);
const maxValues2 = findMax(sessions2, "repetitions");
const table2 = sessionsToTable(
    maxValues2,
    ["Exercise", "Max Repetition", "Body Weight (lb)"],
    ["exercise", "repetitions", "lb"]
);
await writeFile(`${import.meta.dirname}/output/exerciseWithBodyweight.html`, table2);
