#!/bin/sh

DIR="$( cd "$( dirname "$0" )" > /dev/null && pwd )"

ln -sf $DIR/.tmux.conf $HOME/.tmux.conf
