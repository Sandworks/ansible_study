#!/usr/bin/env bash

# prints colored text
success () {
    COLOR="92m"; # green
    STARTCOLOR="\e[$COLOR";
    ENDCOLOR="\e[0m";
    printf "$STARTCOLOR%b$ENDCOLOR" "done\n";
}

echo "Install Ansible 3.0"
printf "Install Ansible 3.0"
pip install ansible==3.0
success

echo "Install Paramiko 3.0"
printf "Install Paramiko 3.0"
pip install paramiko==3.0
success 

echo "Install ansible-pylibssh"
printf "ansible-pylibssh"
pip install ansible-pylibssh
success


echo "Install Python Netaddr"
printf "Install Python Netaddr"
pip install netaddr
success

echo "Configure GIT"
printf "Configure GIT"
cd ~
git config --global user.name "sandworks"
git config --global user.email "ciscoguru72@yahoo.com.au"
success

echo "Install NXOS Collection"
printf "Install NXOS Collection"
ansible-galaxy collection install cisco.nxos
success

echo "Install IOS Collection"
printf "Install IOS Collection"
ansible-galaxy collection install cisco.ios
success

echo "Verify ansible_study is present"
printf "Verify ansible_study is present"
cd /home/ansible_study/bhp-lab
tree
success
