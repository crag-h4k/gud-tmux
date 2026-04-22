#!/usr/bin/env sh
# Deprecated: use `make install` in this repo instead.
# This script is kept for one release so existing runbooks still work.

# src is the path of the tmux directory `gud-tmux`
src=$1
dest=$HOME

ln -s $src $dest/.tmux
ln -s $src/tmux.conf $dest/.tmux.conf
