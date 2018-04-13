#!/bin/bash
debian_version=`cat /etc/debian_version`
ansible_installed=`which ansible | wc -l`

if [ $ansible_installed -eq 0 ]; then

  # Install dirmngr if Debian major version is 9
  if [[ $debian_version =~ ^9.*$ ]]; then
    sudo apt install -y dirmngr
  fi

  # Add ansible 2.5 repository and install ansible
  sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
  echo "deb http://ppa.launchpad.net/ansible/ansible-2.5/ubuntu xenial main" >> /etc/apt/sources.list.d/ansible.list
  sudo apt update -y
  sudo apt install -y ansible

else
  echo "Ansible is already installed."
fi

echo "==> Ansible version <=="
ansible --version
echo "==> Ansible version <=="
