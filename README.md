# LuisLiceaTorres.com Source Code
![Arch Linux](https://img.shields.io/badge/arch%20linux-1690cc?style=for-the-badge&logo=archlinux&logoColor=white)
![VSCode](https://img.shields.io/badge/vscode-0082d0?style=for-the-badge&logo=visualstudiocode&logoColor=white)
![Ruby](https://img.shields.io/badge/ruby-e81522?style=for-the-badge&logo=ruby&logoColor=white)

This is a personal website for writing about things I am interested about.

## Setup
```bash
# Install Ruby and its package management framework.
sudo pacman -S ruby

# Make Ruby gems executable globally.
export PATH="$PATH:$HOME/.local/share/gem/ruby/3.0.0/bin"

# Install Bundler and Jekyll.
gem install bundler jekyll

# Serve the website.
bundle exec jekyll serve
```
