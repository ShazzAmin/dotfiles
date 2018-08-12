#!/bin/sh

# Get this script's parent directory
DIR="$( cd "$( dirname "$0" )" > /dev/null && pwd )"

# Symlink dotfiles
echo "Symlinking git dotfiles..."
ln -sf $DIR/.gitconfig $HOME/.gitconfig
