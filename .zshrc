#!/bin/zsh

if [ -d "$HOME/.zshrc.d" ]
then

  tput sc

  for rcfile in $(ls "$HOME/.zshrc.d" | sort)
  do

    tput el1
    tput rc

    echo "Loading $rcfile"

    source "$HOME/.zshrc.d/$rcfile"

  done

  tput el1
  tput rc

fi

