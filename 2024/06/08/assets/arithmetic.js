#!/usr/bin/env node
/**
 * @module Do arithmetic operations.
 */

/**
 * Perform sum operations.
 *
 * @param {number} operations The number of operations to perform.
 * @returns {number} The series sum.
 */
function doSum(operations) {
    let sum = 0;
    for (let i = 0; i <= operations; i++) {
        sum = sum + i;
    }
    return sum;
}

const term = parseInt(process.argv[2]);
console.log(doSum(term));
