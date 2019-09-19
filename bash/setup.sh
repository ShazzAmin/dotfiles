#!/bin/sh

# Get this script's parent directory
DIR="$( cd "$( dirname "$0" )" > /dev/null && pwd )"

# Ensure bash is available
bash --version >/dev/null 2>&1
if [ $? -ne 0 ]; then
	>&2 echo "bash is not available!"
	>&2 echo "Aborting."
	exit -1
fi

# Symlink dotfiles
echo "Symlinking bash dotfiles..."
ln -sf $DIR/.bash_profile $HOME/.bash_profile
ln -sf $DIR/.bashrc $HOME/.bashrc

# Load dotfiles
echo "Loading bash dotfiles..."
source $HOME/.bashrc
