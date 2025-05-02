#!/usr/bin/env bash

# NOTE: This file can be deleted. It is not needed by Jekyll, Ruby, or anything
# else. However, calling functions is easier than typing them on the terminal!
#
# Source me to access convenient commands.
# $ source bashrc

# Store project directory.
root_path=$(git rev-parse --show-toplevel)

# Serve Jekyll website.
jserve() {
    # Go to where the Gemfile is stored.
    cd "$root_path" || exit
    # Execute jekyll thru bundle to make sure the Gemfile is read.
    bundle exec jekyll serve "$@"
}

# Serve Jekyll website with --livereload to automatically refresh browser.
jlive(){
    jserve --livereload "$@"
}

# Serve Jekyll website with --watch to refresh website without refreshing
# browser.
jwatch(){
    jserve --watch "$@"
}

# Open served website in web browser.
jview() {
    # Specify url and port number.
    xdg-open localhost:4000 "$@"
}

"$@"
