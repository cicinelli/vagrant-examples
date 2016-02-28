#!/bin/bash

# Install Yum dependencies
# sudo yum -y update
# sudo yum -y upgrade
sudo yum -y install ca-certificates nss
sudo yum install -y gcc gcc-c++ python-devel git
sudo easy_install pip

# Install winrm for windows support
wget https://bootstrap.pypa.io/ez_setup.py -O - | python
pip install "pywinrm>=0.1.1"

# Install the latest Ansible stable release via pip
sudo pip install ansible

# Since we are using vagrant locally, we need to install sshpass to bypass using keys
# *** This is for LOCAL development only. Actual controllers should only use keys
# *** and the vagrant account should be removed
sudo rpm -iUvh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm
sudo yum -y install sshpass

# setup a global ansible config
sudo mkdir /var/ansible
sudo cp /vagrant/ansible.cfg /var/ansible/
(echo -e "\n# Set Ansible global config\nexport ANSIBLE_CONFIG=/var/ansible/ansible.cfg") >> /home/vagrant/.bashrc; 
export ANSIBLE_CONFIG=/var/ansible/ansible.cfg

# Set login message for the Vagrant user
(echo -e "echo -e \"
                     _ _     _
     /\             (_) |   | |
    /  \   _ __  ___ _| |__ | | ___
   / /\ \ |  _ \/ __| |  _ \| |/ _ \ 
  / ____ \| | | \__ \ | |_) | |  __/
 /_/    \_\_| |_|___/_|_.__/|_|\___|
/------------------------------------------------------------
\"") >> /home/vagrant/.bashrc;
(echo -e "ansible --version") >> /home/vagrant/.bashrc;
(echo -e "echo -e \"
\------------------------------------------------------------

Have fun!!!!

\"") >> /home/vagrant/.bashrc;

# Display the installed version
ansible --version