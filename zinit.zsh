#!/bin/zsh
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$PWD}"/^README.md(.N); do
  ln -s "$rcfile" "$HOME/.${rcfile:t}"
done
chsh -s /bin/zsh
