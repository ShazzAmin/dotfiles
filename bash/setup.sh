#!/bin/sh

DIR="$( cd "$( dirname "$0" )" > /dev/null && pwd )"

ln -s $DIR/.bash_profile $HOME/.bash_profile
ln -s $DIR/.bashrc $HOME/.bashrc
ln -s $DIR/.bashrc.secret $HOME/.bashrc.secret
