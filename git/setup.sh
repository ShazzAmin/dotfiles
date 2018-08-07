#!/bin/sh

DIR="$( cd "$( dirname "$0" )" > /dev/null && pwd )"

ln -si $DIR/.gitconfig $HOME/.gitconfig
