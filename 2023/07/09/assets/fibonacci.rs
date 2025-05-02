//! Calculate a Fibonacci sequence number from user input.
use std::env::args;

/// Calculate a Fibonacci sequence number.
///
/// * `term`: The sequence number to produce. Don't use large numbers as the
/// time complexity is exponential.
fn fibonacci(term: i32) -> i32 {
    // Base case.
    if term <= 1 {
        return term;
    }
    // Recursive step.
    fibonacci(term - 1) + fibonacci(term - 2)
}

/// Calculate a Fibonacci sequence number from user input.
fn main() {
    let arguments: Vec<String> = args().collect();
    if let Some(argument) = arguments.get(1) {
        let term: i32 = argument.parse().unwrap_or(0);
        let result = fibonacci(term);
        println!("{}", result);
    }
}
