#!/bin/sh

DIR="$( cd "$( dirname "$0" )" > /dev/null && pwd )"

ln -sf $DIR/.vimrc $HOME/.vimrc
