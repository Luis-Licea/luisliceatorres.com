#!/usr/bin/env nix-shell
#! nix-shell -i perl -p hyperfine bat-extras.prettybat
use strict;
use warnings;
use feature 'say';
use experimental 'for_list'; # Allows `for my ($key, $value) (%hash)`.
use File::Basename;

system qw(hyperfine ./test.pl ./test.py ./test.bash ./test.mjs --export-markdown output.md);

open my $file, ">", "result.md";
my $result = `prettybat output.md`;
print $file $result;
