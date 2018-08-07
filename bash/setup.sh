#!/bin/sh

DIR="$( cd "$( dirname "$0" )" > /dev/null && pwd )"

ln -si $DIR/.bash_profile $HOME/.bash_profile
ln -si $DIR/.bashrc $HOME/.bashrc
ln -si $DIR/.bashrc.secret $HOME/.bashrc.secret
