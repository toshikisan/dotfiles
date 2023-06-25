#!/usr/bin/env bash
set -eu


# Install homebrew: https://brew.sh/
if ! command -v brew >/dev/null 2>&1; then
  echo "Install homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  echo
else
  echo "Installed homebrew already."
fi


# Install Git via brew
if ! command -v git >/dev/null 2>&1; then
  echo "Install git..."
  brew install git
  echo
else
  echo "Installed git already."
fi


# git clone dotfiles
DOTPATH=$HOME/dotfiles
GIT_REPO=https://github.com/toshikisan/dotfiles.git

if [ ! -d "$DOTPATH" ]; then
  git clone "$GIT_REPO" "$DOTPATH"
else
  echo "$DOTPATH already downloaded. Updating..."
  cd "$DOTPATH"
  git stash
  git checkout master
  git pull origin master
  echo
fi
