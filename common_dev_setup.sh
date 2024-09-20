#!/bin/bash
# Git configuration
echo "Initializing Git configuration."
read -p "Please enter your GitHub username: " git_username
read -p "Please enter your email: " git_email
git config --global user.name "$git_username"
git config --global user.email "$git_email"

# Git aliases
git config --global alias.rebdev "pull --rebase origin develop --autostash"
git config --global alias.reb "pull --rebase --autostash"

# TODO: SSH key setup

# Install Rust and Go
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# https://go.dev/doc/install
