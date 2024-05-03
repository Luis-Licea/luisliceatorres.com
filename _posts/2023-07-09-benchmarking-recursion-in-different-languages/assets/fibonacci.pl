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

=head1 Methods

=head2 main

Calculate a Fibonacci sequence number from user input.

=head2 fibonacci

Calculate a Fibonacci sequence number.

Arguments:

=over

=item C<$term>: C<int>

The sequence number to produce. Don't use large numbers as
the time complexity is exponential.

=back

Return:

=over

=item C<int>

The sequence number.

=back
