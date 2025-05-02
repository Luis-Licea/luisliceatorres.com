/**
 * @file
 * @brief Calculate the a Fibonacci sequence number from user input.
 */
#include <stdio.h>
#include <stdlib.h>

/**
 * @brief Calculate a Fibonacci sequence number.
 *
 * @param term The sequence number to produce. Don't use large
 * numbers as the time complexity is exponential.
 * @return The sequence number.
 */
int fibonacci(int term) {
    // Base case.
    if (term <= 1) {
        return term;
    }
    // Recursive step.
    return fibonacci(term - 1) + fibonacci(term - 2);
}

/**
 * @brief Calculate a Fibonacci sequence number from user input.
 *
 * @param argc The argument count.
 * @param argv The argument vector.
 * @return The error code.
 */
int main(int argc, char **argv) {
    if (argc > 1) {
        int term = atoi(argv[1]);
        int result = fibonacci(term);
        printf("%d\n", result);
    }
    return 0;
}
