#!/usr/bin/python3
"""Benchmark ProcessPoolExecutor and ThreadPoolExecutor performance."""
from concurrent.futures import ThreadPoolExecutor
from concurrent.futures.process import ProcessPoolExecutor
from functools import wraps
from sys import argv
from time import perf_counter
from typing import Callable


def fibonacci(term: int) -> int:
    """Calculate the n-th term of the Fibonacci sequence.

    Args:
        term (int): The sequence number to produce. Don't use large
        numbers as the time complexity is exponential.

    Returns:
        int: The sequence number.
    """
    match term:
        case term if term <= 0:
            return 0
        case 1:
            return 1
        case _:
            return fibonacci(term - 1) + fibonacci(term -2)

def intense_task(value: int):
    """Simulates a CPU-intensive operation.

    Args:
        value (int): Some value that will increase CPU work exponentially.
    """
    fibonacci(value)


def timeit(func: Callable[[int, int], None]) -> Callable:
    """Time how long a function takes to execute.

    Args:
        func (callable): The function to time.

    Returns:
        The wrapped function result.
    """
    @wraps(func)
    def timeit_wrapper(*args, **kwargs):
        start_time = perf_counter()
        result = func(*args, **kwargs)
        end_time = perf_counter()
        total_time = end_time - start_time
        print(f'Function {func.__name__}{args} {kwargs} Took {total_time:.4f} seconds')
        return result
    return timeit_wrapper

@timeit
def multiprocessing(max_workers: int, iterations: int):
    """Perform a time-intensive task using multiprocessing.

    Args:
        max_workers (int): The max number of process workers.
        iterations (int): The number of times to repeat the operation.
    """
    with ProcessPoolExecutor(max_workers=max_workers) as executor:
        executor.map(intense_task, range(iterations))

@timeit
def multithreading(max_workers: int, iterations: int):
    """Perform a time-intensive task using multithreading.

    Args:
        max_workers (int): The max number of thread workers.
        iterations (int): The number of times to repeat the operation.
    """
    with ThreadPoolExecutor(max_workers=max_workers) as executor:
        executor.map(intense_task, range(iterations))

def main():
    """Benchmark multithreading and multiprocessing on the same function."""
    try:
        iterations, max_workers = int(argv[1]), int(argv[2])
        multiprocessing(max_workers, iterations)
        multithreading(max_workers, iterations)
    except IndexError:
        print(f"Usage: {argv[0]} <iterations> <max_wokers>")
        print(f"Example: {argv[0]} 30 5")

if __name__ == "__main__":
    main()
