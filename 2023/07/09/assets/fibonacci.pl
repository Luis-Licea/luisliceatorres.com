#!/usr/bin/env perl
use strict;
use warnings;
use feature 'say';

sub fibonacci {
    my $term = shift;
    # Base case.
    if ($term <= 1) {
        return $term;
    }
    # Recursive step.
    return fibonacci($term - 1) + fibonacci($term - 2);
}

sub main {
    if (scalar @ARGV >= 1) {
        my $value = fibonacci(int($ARGV[0]));
        say($value);
    }
}

unless (caller) {
    main();
}

__END__

=head1 DESCRIPTION

Calculate a Fibonacci sequence number from user input.

=cut

=head1 FUNCTIONS

=over

=item fibonacci($term)

Calculate a Fibonacci sequence number.

$term C<int> is the sequence number to produce. Don't use large numbers as the
time complexity is exponential.

Returns C<int>, the sequence number.

=item main

Calculate a Fibonacci sequence number from user input.

=back

=cut
