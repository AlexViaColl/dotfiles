#!/usr/bin/env bash

if [ $# -ne 1 ]; then
    echo 'Usage: install.sh $HOME'
    exit 1
fi

DST=$1
SRC=$(realpath $(dirname "${BASH_SOURCE[0]}")) # Absolute path to dotfiles folder

mkdir -p "$DST"/.vim
ln -sf "$SRC"/vim/vimrc "$DST"/.vim/vimrc

mkdir -p "$DST"/.config/i3
ln -sf "$SRC/i3/config" "$DST"/.config/i3/config

mkdir -p "$DST"/.config/alacritty
ln -sf "$SRC/alacritty/alacritty.yml" "$DST"/.config/alacritty/alacritty.yml

mkdir -p "$DST"/.config/tmux
ln -sf "$SRC"/tmux/tmux.conf "$DST"/.config/tmux/tmux.conf
