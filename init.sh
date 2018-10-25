#!/bin/bash
ln -s $PWD/.* $HOME/ && ls -la ~
cd ~
./.zprezto/init.sh
cd ~/.vim
git submodule init
git submodule update
vim +PluginInstall +qall
