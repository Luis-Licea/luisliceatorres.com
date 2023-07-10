/**
 * Calculate a Fibonacci sequence number from user input.
 */
class Fibonacci {
    /**
     * Calculate a Fibonacci sequence number.
     *
     * @param term The sequence number to produce. Don't use large numbers as
     * the time complexity is exponential.
     *
     * @return The sequence number.
     */
    public static int fibonacci(int term) {
        // Base case.
        if (term <= 1) {
            return term;
        }
        // Recursive step.
        return fibonacci(term - 1) + fibonacci(term - 2);
    }

    /**
     * Calculate a Fibonacci sequence number from user input.
     *
     * @param args The command-line arguments.
     */
    public static void main(String[] args) {
        if (args.length > 0) {
            int term = Integer.parseInt(args[0]);
            int result = fibonacci(term);
            System.out.println(result);
        }
    }
}
