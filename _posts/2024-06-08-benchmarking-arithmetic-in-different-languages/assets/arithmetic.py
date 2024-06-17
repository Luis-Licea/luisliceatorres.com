#!/usr/bin/env python3
"""Do arithmetic operations."""
from sys import argv


def do_sum(operations: int) -> int:
    """Perform sum operations.

    Args:
        operations (int): The number of operations to perform.

    Returns:
        int: The series sum.
    """
    counter = 0
    for i in range(operations + 1):
        counter = counter + i
    return counter


def main():
    """Calculate a Fibonacci sequence number from user input."""
    term = int(argv[1])
    print(do_sum(term))


if __name__ == "__main__":
    main()
