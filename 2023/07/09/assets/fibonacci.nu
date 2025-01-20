#!/usr/bin/env nu

# Calculate a Fibonacci sequence number from user input.
def main [ term: int ] {
    print (fibonacci $term);
}

# Calculate a Fibonacci sequence number.
# Returns: int The sequence number.
def fibonacci [
    term: int # The sequence number to produce. Don't use large numbers as the
              # time complexity is exponential.
] {
    if $term <= 1 {
        # Base case.
        return $term;
    }
    # Recursive step.
    (fibonacci ($term - 1)) + (fibonacci ($term - 2))
}
