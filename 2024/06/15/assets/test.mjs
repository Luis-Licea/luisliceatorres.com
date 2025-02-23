#!/usr/bin/env node
import {execSync} from "node:child_process";
for (let i = 0; i < 100; i++) {
    process.stdout.write(execSync("nix eval --expr 1+1", {encoding: "utf-8"}));
}
