#!/usr/bin/env cached-nix-shell
/*
#!nix-shell -i rust-script -p rustc -p rust-script -p cargo
*/

//! Do arithmetic operations.
use std::env::args;

/// Perform sum operations.
///
/// * `operations`: The number of operations to perform.
///
/// Returns the series sum.
fn do_sum(operations: i32) -> i32 {
    let mut counter = 0;
    for i in 0..operations + 1 {
        counter = counter + i;
    }

    return counter;
}

/// Do the number of arithmetic operations specified by the user input.
fn main() {
    let arguments: Vec<String> = args().collect();
    if let Some(argument) = arguments.get(1) {
        let operations: i32 = argument.parse().unwrap_or(0);
        let result = do_sum(operations);
        println!("{}", result);
    }
}
