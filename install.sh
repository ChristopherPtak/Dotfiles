#!/bin/sh

set -e

install_file ()
{
  src_file="$1"
  dest_file="$2"

  if ! cmp -s "$src_file" "$dest_file"
  then
    echo "Copying $src_file -> $dest_file"
    cp "$src_file" "$dest_file"
  fi
}

make_directory ()
{
  directory="$1"

  if [ ! -d "$directory" ]
  then
    echo "Creating directory $directory"
    mkdir -p "$directory"
  fi
}

# Install vim configuration
install_file ".vimrc" "$HOME/.vimrc"

# Install zsh configuration
make_directory "$HOME/.zshrc.d"
install_file ".zshrc"                 "$HOME/.zshrc"
install_file ".zshrc.d/00_prompt"     "$HOME/.zshrc.d/00_prompt"
install_file ".zshrc.d/01_history"    "$HOME/.zshrc.d/01_history"
install_file ".zshrc.d/02_completion" "$HOME/.zshrc.d/02_completion"
install_file ".zshrc.d/03_colors"     "$HOME/.zshrc.d/03_colors"

# Update shell
if [ "$SHELL" != "/bin/zsh" ]
then
    echo 'Setting shell to /bin/zsh'
    chsh -s /bin/zsh
fi


