#!/bin/zsh
setopt EXTENDED_GLOB
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ZDOTDIR=$DIR/zdotfiles
for rcfile in "${ZDOTDIR:-$PWD}"/^README.md(.N); do
    (ln -s "$rcfile" "$HOME/.${rcfile:t}" || true)
done
ln -s $DIR/zprezto $HOME/.zprezto
sudo cp $ZDOTDIR/prompt_adam3_setup /usr/share/zsh/functions/Prompts
sudo chsh -s /bin/zsh
sudo usermod --shell /bin/zsh $USER
