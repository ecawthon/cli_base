#!/bin/bash
ln -s $HOME/cli_base/.* $HOME/ && ls -la ~
cd ~
./.zprezto/init.sh
cd ~/.vim
git submodule --init
vim +PluginInstall +qall
