#!/usr/bin/python3
"""Calculate a Fibonacci sequence number from user input."""
from sys import argv

def fibonacci(term: int) -> int:
    """Calculate a Fibonacci sequence number.

    Args:
        term (int): The sequence number to produce. Don't use large numbers as
        the time complexity is exponential.

    Returns:
        int: The sequence number.
    """
    # Base case.
    if term <= 1:
        return term
    # Recursive step.
    return fibonacci(term - 1) + fibonacci(term - 2)

def main():
    """Calculate a Fibonacci sequence number from user input."""
    if len(argv) >= 2:
        term = int(argv[1])
        result = fibonacci(term)
        print(result)

if __name__ == "__main__":
    main()
