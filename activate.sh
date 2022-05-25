#!/usr/bin/env bash

# NOTE: This file can be deleted. It is not needed by Jekyll, Ruby, or anything
# else. However, calling functions is easier than typing them on the terminal!
# Source me to access convenient commands.
# $ source activate.sh

# Store project directory.
root_path=$(pwd)

# Serve Jekyll website.
jserve() {
    # Go to where the Gemfile is stored.
    cd "$root_path" || exit
    # Execute jekyll thru bundle to make sure the Gemfile is read.
    bundle exec jekyll serve "$@"
}

# Serve Jekyll website with livereload.
jlive(){
    # Serve with live reload.
    jserve --livereload
}

# Open served website in web browser.
jview() {
    # Specify url and port number.
    xdg-open localhost:4000
}
