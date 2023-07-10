#!/usr/bin/bash

# Calculate a Fibonacci sequence number from user input.

# Exit on errors and undefined variables.
set -eu

################################################################################
# Calculate a Fibonacci sequence number.
# Arguments:
#     $1: int The sequence number to produce. Don't use large numbers as
#         the time complexity is exponential.
# Outputs:
#     int The sequence number.
################################################################################
fibonacci() {
    declare -ir term=$1
    # Base case.
    if (( term <= 1 )); then
        echo $term
        return
    fi
    # Recursive step.
    echo $(( $(fibonacci $((term - 1)) ) + $(fibonacci $((term - 2)) ) ))
}

fibonacci $1
