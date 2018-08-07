#!/bin/sh

DIR="$( cd "$( dirname "$0" )" > /dev/null && pwd )"

ln -si $DIR/.tmux.conf $HOME/.tmux.conf
