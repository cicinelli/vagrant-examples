#!/bin/bash

# Install dependencies
# sudo yum -y update
# sudo yum -y upgrade
sudo yum -y install ca-certificates nss
sudo yum install -y epel-release
sudo yum install -y gcc gcc-c++ python-devel git
sudo easy_install pip
wget https://bootstrap.pypa.io/ez_setup.py -O - | sudo python
sudo pip install paramiko PyYAML Jinja2 httplib2 six

# Pull the latest version of Ansible from Github and submodules
git clone git://github.com/ansible/ansible.git --recursive
cd ./ansible
git submodule update --init --recursive

# Install winrm for windows support
pip install "pywinrm>=0.1.1"

# Install sshpass to allow using Vagrant username and pass
# *** DO NOT USE THIS IN PRODUCTION!!!!!!
sudo yum -y install sshpass

# Set up the global Ansible config file to set role paths and disbale hostkey checking
sudo mkdir /var/ansible
sudo cp /vagrant/ansible.cfg /var/ansible/
(echo -e "\n# Set Ansible global config\nexport ANSIBLE_CONFIG=/var/ansible/ansible.cfg") >> /home/vagrant/.bashrc; 

# Set login message for the Vagrant user
(echo -e "echo -e \"
                     _ _     _            _                _
     /\             (_) |   | |          | |              | |
    /  \   _ __  ___ _| |__ | | ___    __| | _____   _____| |
   / /\ \ |  _ \/ __| |  _ \| |/ _ \  / _  |/ _ \ \ / / _ \ |
  / ____ \| | | \__ \ | |_) | |  __/ | (_| |  __/\ V /  __/ |
 /_/    \_\_| |_|___/_|_.__/|_|\___|  \__,_|\___| \_/ \___|_|
 ------------------------------------------------------------

 Before you can start we need to set-up your environment ...
/------------------------------------------------------------
\"") >> /home/vagrant/.bashrc;
(echo -e "source /home/vagrant/ansible/hacking/env-setup") >> /home/vagrant/.bashrc;
(echo -e "ansible --version") >> /home/vagrant/.bashrc;
(echo -e "echo -e \"
\------------------------------------------------------------

 All set ... have fun!!!!

\"") >> /home/vagrant/.bashrc;

# Display the installed version in Vagrant display
export ANSIBLE_CONFIG=/var/ansible/ansible.cfg
source /home/vagrant/ansible/hacking/env-setup
ansible --version