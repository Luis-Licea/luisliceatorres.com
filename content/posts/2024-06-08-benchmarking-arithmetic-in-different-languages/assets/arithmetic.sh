#!/usr/bin/env bash
# Do arithmetic operations.

#######################################
# Perform sum operations.
# Arguments:
#   $1: The number of operations to perform
# Returns:
#   int: The series sum.
#######################################
count() {
    local sum=0
    for ((i = 0; i <= $1; i++)); do
        ((sum = sum + i))
    done
    echo $sum
}

count "$1"
