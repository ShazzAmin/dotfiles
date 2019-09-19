#!/bin/sh

# Get this script's parent directory
DIR="$( cd "$( dirname "$0" )" > /dev/null && pwd )"

# Ensure git is available
git --version >/dev/null 2>&1
if [ $? -ne 0 ]; then
	>&2 echo "git is not available!"
	>&2 echo "Aborting."
	exit -1
fi

# Symlink dotfiles
echo "Symlinking git dotfiles..."
ln -sf $DIR/.gitconfig $HOME/.gitconfig
