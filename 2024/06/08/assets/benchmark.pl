#!/usr/bin/env nix-shell
#! nix-shell -i perl -p hyperfine bat-extras.prettybat
use strict;
use warnings;
use File::Basename;

system q(hyperfine \
'./arithmetic.rs 100000' \
'./arithmetic.pl 100000' \
'./arithmetic.py 100000' \
'./arithmetic.js 100000' \
'./arithmetic.sh 100000' \
--export-markdown output.md);

open my $file, ">", "result.md";
my $result = `prettybat output.md`;
print $file $result;
unlink("output.md");

