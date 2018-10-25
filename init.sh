#!/bin/bash
sudo apt-get install zsh tmux neovim ctags
git submodule init
git submodule update
ln -s $PWD/.* $HOME/ && ls -la ~
ln -s ~/.vim/vimrc ~/.vim/init.vim
cd ~/.vim
git submodule init
git submodule update
vim +PluginInstall +qall
setopt EXTENDED_GLOB
/bin/zsh zinit.sh
