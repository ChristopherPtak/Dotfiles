#!/bin/zsh

if [ -d "$HOME/.zshrc.d" ]
then

  tput sc

  for rcfile in $(ls "$HOME/.zshrc.d" | sort)
  do

    echo "Loading $rcfile"
    source "$HOME/.zshrc.d/$rcfile"

    tput rc
    tput el

  done

fi

