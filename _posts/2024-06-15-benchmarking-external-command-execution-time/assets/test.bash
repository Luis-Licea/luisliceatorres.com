#!/usr/bin/env bash
for _ in {1..100}; do
    nix eval --expr 1+1;
done
