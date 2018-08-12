#!/bin/sh

# Get this script's parent directory
DIR="$( cd "$( dirname "$0" )" > /dev/null && pwd )"

# Symlink dotfiles
echo "Symlinking bash dotfiles..."
ln -sf $DIR/.bash_profile $HOME/.bash_profile
ln -sf $DIR/.bashrc $HOME/.bashrc
ln -sf $DIR/.bashrc.secret $HOME/.bashrc.secret
