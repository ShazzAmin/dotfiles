#!/bin/sh

DIR="$( cd "$( dirname "$0" )" > /dev/null && pwd )"

$DIR/bash/setup.sh
$DIR/git/setup.sh
$DIR/tmux/setup.sh
$DIR/vim/setup.sh
