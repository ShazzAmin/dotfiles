#!/bin/sh

DIR="$( cd "$( dirname "$0" )" > /dev/null && pwd )"

ln -s $DIR/.gitconfig $HOME/.gitconfig
