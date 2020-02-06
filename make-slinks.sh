#!/usr/bin/env sh
src=$1/gud-tmux
dest=$HOME

ln -s $src $dest/.tmux
ln -s $src/tmux.conf $dest/.tmux.conf
