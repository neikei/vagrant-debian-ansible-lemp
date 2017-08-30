#!/bin/bash
debian_version=`cat /etc/debian_version`
ansible_installed=`which ansible | wc -l`

if [ $ansible_installed -eq 0 ] && [[ $debian_version =~ ^8.*$ ]]; then
  echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" >> /etc/apt/sources.list
  sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
  sudo apt-get update -y
  sudo apt-get install -y ansible
elif [ $ansible_installed -eq 0 ] && [[ $debian_version =~ ^9.*$ ]]; then
  sudo apt-get update -y
  sudo apt-get install -y ansible
else
  echo "Ansible is already installed."
fi

echo "==> Ansible version <=="
ansible --version
echo "==> Ansible version <=="