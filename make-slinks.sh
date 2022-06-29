#!/usr/bin/env sh

# src is the path of the tmux directory `gud-tmux` 
src=$1
dest=$HOME

ln -s $src $dest/.tmux
ln -s $src/tmux.conf $dest/.tmux.conf
