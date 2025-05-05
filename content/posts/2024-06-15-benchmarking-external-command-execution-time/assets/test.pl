#!/usr/bin/env perl
system qw(nix eval --expr 1+1) for 1 .. 100;
