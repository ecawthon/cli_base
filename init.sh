#!/bin/bash
sudo apt-get install zsh tmux neovim ctags ranger
git submodule update --init --recursive
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ln -s $DIR/tmux.conf $HOME/.tmux.conf
ln -s $DIR/vim $HOME/.vim
mkdir -p $HOME/.config/nvim
ln -s $DIR/vim/init.vim $HOME/.config/nvim/init.vim
cd $HOME/.vim
git submodule update --init
vim +PluginInstall +qall
ZDOTDIR=$DIR/.zprezto /bin/zsh $DIR/zinit.sh
