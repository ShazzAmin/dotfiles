#!/bin/sh

# Get this script's parent directory
DIR="$( cd "$( dirname "$0" )" > /dev/null && pwd )"

# Run setup scripts
echo "Running setup scripts..."
$DIR/bash/setup.sh &&
$DIR/git/setup.sh &&
$DIR/tmux/setup.sh &&
$DIR/vim/setup.sh &&
echo "Done."
