#!/bin/bash
ln -s ./.* ~/ && ls -la ~
cd ~
./.zprezto/init.sh
cd ~/.vim
git submodule --init
vim +PluginInstall +qall
