#!/usr/bin/env bash

# NOTE: This file can be deleted. It is not needed by Hugo.
# However, calling functions is easier than typing them on the terminal!
#
# Source me to access convenient commands.
# $ source bashrc

# Serve the website.
serve() {
    # shellcheck disable=2155
    local root_path=$(git rev-parse --show-toplevel)
    cd "$root_path" || exit
    hugo serve --buildDrafts "$@"
}
