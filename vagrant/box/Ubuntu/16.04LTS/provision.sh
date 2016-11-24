#!/usr/bin/env bash

# Install Ansible
if ! [ `which ansible` ]; then
   apt-get update -y
   apt-get install -y ansible
fi

# Execute Playbook
ansible-playbook -i /vagrant/ansible/hosts /vagrant/ansible/playbook.yml
