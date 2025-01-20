/// Calculate a Fibonacci sequence number from user input.
void main(List<String> args) {
    final term = int.parse(args[0]);
    print(fibonacci(term));
}

/// Calculate the Fibonacci sequence number for the [n]-th term.
///
/// Don't use large numbers as the time complexity is exponential.
int fibonacci(int n) {
  // Base case: the first two numbers in the sequence are 0 and 1.
  if (n <= 1) {
    return n;
  }

  // Recursive step: The nth number in the sequence is the sum of the (n - 1)th
  // and (n - 2)th numbers.
  return fibonacci(n - 1) + fibonacci(n - 2);
}
