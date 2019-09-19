#!/bin/sh

# Get this script's parent directory
DIR="$( cd "$( dirname "$0" )" > /dev/null && pwd )"

# Ensure vim is available
vim --version >/dev/null 2>&1
if [ $? -ne 0 ]; then
	>&2 echo "vim is not available!"
	>&2 echo "Aborting."
	exit -1
fi

# Symlink dotfiles
echo "Symlinking vim dotfiles..."
ln -sf $DIR/.vimrc $HOME/.vimrc
