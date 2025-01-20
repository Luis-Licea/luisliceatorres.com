#!/usr/bin/env perl
use strict;
use warnings;

=head1 DESCRIPTION

Do arithmetic operations.

=head1 FUNCTIONS

=over

=item count($total)

Perform sum operations.

$total C<int> is the number of operations to perform.

Returns C<int>, the series sum.

=back

=cut
sub doSum {
    my $total = shift;
    my $sum = 0;
    for my $i (1..$total) {
        $sum = $sum + $i;
    }
    return $sum;
}

print doSum shift;
