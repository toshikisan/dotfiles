#!/bin/bash

if !(type "git" > /dev/null 2>&1); then
  sudo apt install -y git
fi

if !(type "ansible-playbook" > /dev/null 2>&1); then
  sudo apt install -y ansible
fi


# git clone dotfiles
DOTPATH=$HOME/dotfiles
GIT_REPO=https://github.com/ctoshiki/dotfiles.git

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

HOSTS=$HOME/dotfiles/ansible/inventory/hosts
PLAYBOOK=$HOME/dotfiles/ansible/debian.yml
ansible-playbook -i $HOSTS $PLAYBOOK --ask-vault-pass
