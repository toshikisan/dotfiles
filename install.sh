#!/bin/bash

function apt () {
  if !(type "git" > /dev/null 2>&1); then
    sudo apt install -y git
  fi

  if !(type "ansible-playbook" > /dev/null 2>&1); then
    sudo apt install -y ansible
  fi
}

function deploy () {
  hosts='./ansible/inventory/hosts'
  playbook='./ansible/playbook.yml'
  ansible-playbook -i $hosts $playbook --ask-vault-pass
}

apt
deploy
