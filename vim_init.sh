#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ln -s $DIR/vim $HOME/.vim
mkdir -p $HOME/.config/nvim
ln -s $DIR/vim/init.vim $HOME/.config/nvim/init.vim
cd $HOME/.vim
git submodule update --init
vim +PluginInstall +qall
