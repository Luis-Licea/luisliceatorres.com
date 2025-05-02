#!/usr/bin/env node

/**
 * @module Calculate a Fibonacci sequence number from user input.
 */

/**
 * Calculate a Fibonacci sequence number.
 *
 * @param {number} term The sequence number to produce. Don't use large numbers
 * as the time complexity is exponential.
 * @returns {number} The sequence number.
 */
function fibonacci(term) {
    // Base case.
    if (term <= 1) {
        return term;
    }
    // Recursive step.
    return fibonacci(term - 1) + fibonacci(term - 2);
}

if (process.argv.length > 2) {
    const term = parseInt(process.argv[2]);
    const result = fibonacci(term);
    console.log(result);
}
