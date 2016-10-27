#!/usr/bin/env bash

# Install Ansible
if ! [ `which ansible` ]; then
  yum update -y
  yum install -y epel-release
  yum install -y ansible --enablerepo=epel-testing
fi

# Execute Playbook
ansible-playbook -i /vagrant/ansible/hosts /vagrant/ansible/playbook.yml

# TBD:Install LaKeel BI Server

# TBD:Upgrade LaKeel BI Server
