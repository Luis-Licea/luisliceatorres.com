#!/usr/bin/env python3
from subprocess import call
for _ in range(100):
    call(["nix", "eval", "--expr", "1+1"])
