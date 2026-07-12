export class ExerciseSet {
    constructor(exercise, date, lb, repetitions) {
        this.exercise = exercise;
        this.date = new Date(date);
        this.lb = lb;
        this.repetitions = repetitions;
    };
}

export class ExerciseRun {
    constructor(exercise, date, mi, hours, minutes, seconds) {
        this.exercise = exercise;
        this.date = new Date(date);
        this.mi = mi;
        const time = new Date(0, 0, 0, hours, minutes, seconds);
        this.time = [time.getHours(), time.getMinutes(), time.getSeconds()].map(number => number.toString().padEnd(2, '0')).join(':');
        this.mph = mi / (hours + (minutes / 60) + (seconds / 3600));
    };
}

/**
 * Convert the plain object into a list of exercise sessions.
 *
 * @param {{[exerciseName: string]: {[date: string]: [number, number][]}}} exercises
 * @returns {ExerciseSet[]}
 */
export function objectToExerciseSet(exercises) {
    const exerciseSessions = [];
    for (const [exerciseName, exerciseDates] of Object.entries(exercises)) {
        for (const [exerciseDate, repetitionsAndWeight] of Object.entries(exerciseDates)) {
            for (const [repetitions, weight] of repetitionsAndWeight) {
                exerciseSessions.push(new ExerciseSet(exerciseName, exerciseDate, weight, repetitions));
            }
        }
    }
    return exerciseSessions;

}

/**
 * Convert the plain object into a list of exercise sessions.
 *
 * @param {{[exerciseName: string]: {[date: string]: {mi: number, hours: number, minutes: number, seconds: number}}}} exercises
 * @returns {ExerciseRun[]}
 */
export function objectToExerciseRun(exercises) {
    const exerciseSessions = [];
    for (const [exerciseName, exerciseDates] of Object.entries(exercises)) {
        for (const [exerciseDate, { mi, hours, minutes, seconds }] of Object.entries(exerciseDates)) {
            exerciseSessions.push(new ExerciseRun(exerciseName, exerciseDate, mi, hours, minutes, seconds));
        }
    }
    return exerciseSessions;

}

/**
 * Return the sessions with the max weights.
 *
 * @param {ExerciseSet[]} sessions
 * @param {keyof ExerciseSet} property
 */
export function findMax(sessions, property) {
    /** @type {{[exerciseName: string]: ExerciseSet[]}} */
    const exerciseGroups = Object.groupBy(sessions, ({ exercise }) => exercise);
    const max = [];
    for (const groupSessions of Object.values(exerciseGroups)) {
        groupSessions.sort((set, set2) => set[property] - set2[property])
        max.push(groupSessions.at(-1));
    }
    return max;
}

/**
 * Escape the string.
 *
 * @param {string|number} str
 */
export function escapeHtml(str) {
    if (typeof str === "number") {
        return str.toString();
    }
    const map = {
        '&': '&amp;',
        '<': '&lt;',
        '>': '&gt;',
        '"': '&quot;',
        "'": '&#39;',
    }
    return str.replace(/[&<>"']/g, m => map[m])
}

/**
 * Return the sessions with the max weights.
 *
 * @param {ExerciseSet[]} sessions
 * @param {string[]} headers
 * @param {Array<keyof ExerciseSet>} properties
 */
export function sessionsToTable(sessions, headers, properties) {
    const headerHtml = `|${headers.join('|')}|`;
    const headerDivider = `${'| -- '.repeat(headers.length)}|`
    const rowCells = sessions.map(session => properties.map(property => session[property]));
    const rows = rowCells.map(rowCells => `|${rowCells.join('|')}|`).join('\n');
    return `
${headerHtml}
${headerDivider}
${rows}
`.trim();
}
