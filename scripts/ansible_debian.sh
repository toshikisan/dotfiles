#!/bin/bash

HOSTS=$HOME/dotfiles/ansible/inventory/hosts
PLAYBOOK=$HOME/dotfiles/ansible/debian.yml
ansible-playbook -i $HOSTS $PLAYBOOK --ask-vault-pass
