#!/usr/bin/env bash

apt-get update -y
apt-get install -y software-properties-common
apt-add-repository ppa:ansible/ansible
apt-get update
apt-get install -y ansible apt-transport-https curl
ansible-galaxy install lucascbeyeler.baseline
ansible-galaxy install lucascbeyeler.zimbra
PYTHONUNBUFFERED=1 ansible-playbook ansible/playbook.yml -c local
