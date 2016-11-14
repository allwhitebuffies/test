#!/bin/bash
echo "Setting up pre-requisites for Ansible..."
sudo apt-get install software-properties-common
sudo apt-get install python-software-properties
echo "********************************"
echo "Installing Ansible..."
sudo add-apt-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible
echo "********************************"
echo "Installing w3m for text-based browsing..."
sudo apt-get install w3m w3m-img
echo "********************************"
cd ~
echo "********************************"
echo "Cloning Git repository..."
sudo git clone https://github.com/annabaker/ansible-nginx.git
cd ~/ansible-nginx
cd ansible-nginx
echo "********************************"
echo "Automating nginx installation..."
sudo ansible-playbook nginx.yaml
