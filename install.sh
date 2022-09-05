#!/bin/sh

set -e

echo 'Installing Zsh configuration'
cp ".zshrc"                 "$HOME/.zshrc"
cp ".zshrc.d/00_prompt"     "$HOME/.zshrc.d"
cp ".zshrc.d/01_history"    "$HOME/.zshrc.d"
cp ".zshrc.d/02_completion" "$HOME/.zshrc.d"
cp ".zshrc.d/03_colors"     "$HOME/.zshrc.d"


if [ "$SHELL" != "/bin/zsh" ]
then
    echo 'Setting shell to /bin/zsh'
    chsh -s /bin/zsh
fi

echo 'Installing Vim configuration'
cp ".vimrc" "$HOME/.vimrc"

