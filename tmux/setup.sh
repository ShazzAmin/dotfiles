#!/bin/sh

# Get this script's parent directory
DIR="$( cd "$( dirname "$0" )" > /dev/null && pwd )"

# Ensure tmux is available
tmux -V >/dev/null 2>&1
if [ $? -ne 0 ]; then
	>&2 echo "tmux is not available!"
	>&2 echo "Aborting."
	exit -1
fi

# Symlink dotfiles
echo "Symlinking tmux dotfiles..."
ln -sf $DIR/.tmux.conf $HOME/.tmux.conf
rm -f $HOME/.tmux/plugins/tpm
mkdir -p $HOME/.tmux/plugins
ln -sf $DIR/.tmux/plugins/tpm $HOME/.tmux/plugins/tpm

# Load dotfiles
echo "Loading tmux dotfiles..."
tmux source-file ~/.tmux.conf
tmux run-shell ~/.tmux/plugins/tpm/bindings/clean_plugins >/dev/null 2>&1
tmux run-shell ~/.tmux/plugins/tpm/bindings/install_plugins >/dev/null 2>&1
