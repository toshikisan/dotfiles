#!/bin/bash

hosts=$HOME/dotfiles/ansible/inventory/hosts
playbook=$HOME/dotfiles/ansible/osx.yml

ansible-playbook -i $hosts $playbook --ask-vault-pass
