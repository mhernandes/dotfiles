#!/usr/bin/env bash
COMMAND=$1
DOTFILES="$HOME/.onhernandes/dotfiles"

if [[ $COMMAND == "clear-desktop" ]]; then
  while true; do
      read -p "You really wanna clear all your desktop? " yn
      case $yn in
          [Yy]* ) rm -rf $HOME/Desktop/* && echo "Desktop cleared"; break;;
          [Nn]* ) exit;;
          * ) echo "Please answer yes or no.";;
      esac
  done
  exit
fi

if [[ $COMMAND == "symlink" ]]; then
  FILES=( \
    ("$DOTFILES/git/gitconfig", "$HOME/.gitconfig") \
    ("$DOTFILES/git/gitconfig", "/etc/.gitconfig") \
    ("$DOTFILES/git/gitignore_global", "$HOME/.gitignore_global") \
    ("$DOTFILES/git/gitignore_global", "/etc/.gitignore_global") \
    ("$DOTFILES/vimrc", "$HOME/.vimrc") \
    ("$DOTFILES/vimrc", "$HOME/.config/nvim/init.vim") \
    ("$DOTFILES/tmux.conf", "$HOME/.tmux.conf") \
  )

  for f in ${$FILES[*]}; do
    if [[ ! -f $f[1] ]]; then
      ln -s $f[0] $f[1]
    fi
  done
fi

echo "Available commands: clear-desktop | symlink"

