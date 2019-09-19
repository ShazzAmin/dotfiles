#!/bin/sh

# Get this script's parent directory
DIR="$( cd "$( dirname "$0" )" > /dev/null && pwd )"

# Symlink dotfiles
echo "Symlinking tmux dotfiles..."
ln -sf $DIR/.tmux.conf $HOME/.tmux.conf
tmux source-file ~/.tmux.conf
rm -f $HOME/.tmux/plugins/tpm
mkdir -p $HOME/.tmux/plugins
ln -sf $DIR/.tmux/plugins/tpm $HOME/.tmux/plugins/tpm
tmux run-shell ~/.tmux/plugins/tpm/bindings/clean_plugins
tmux run-shell ~/.tmux/plugins/tpm/bindings/install_plugins
