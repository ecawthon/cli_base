#!/bin/bash -e
sudo apt-get update
sudo apt-get install zsh tmux neovim ctags ranger
git submodule update --init --recursive
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ln -s $DIR/tmux.conf $HOME/.tmux.conf
ln -s $DIR/ranger $HOME/.config/ranger
./vim_init.sh
ZDOTDIR=$DIR/zdotfiles /bin/zsh $DIR/zinit.sh
