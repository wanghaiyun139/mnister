#!/usr/bin/env bash
echo "----------------------------"
echo "Updating and Upgrading"
echo "----------------------------"
sudo apt-get -y -q update
#sudo apt-get upgrade
echo "----------------------------"
echo "Install and Configure Vim"
echo "----------------------------"
sudo apt-get install vim
sudo cp /vagrant_data/.vimrc /home/ubuntu
sudo cp /vagrant_data/.vimrc /root/
echo "----------------------------"
echo "Install pip"
echo "----------------------------"
sudo apt-get -y -q install python3-pip
echo "----------------------------"
echo "Install pyenv"
echo "----------------------------"
sudo apt-get -y -q install python3-venv
echo "----------------------------"
echo "Create and Activate Virtual Environment"
echo "----------------------------"
pyvenv django
source django/bin/activate
echo "----------------------------"
echo "Install and Configure RabbitMQ"
echo "----------------------------"
sudo apt-get -y -q install rabbitmq-server
echo "----------------------------"
echo "Install Additional Dependencies"
echo "----------------------------"
pip install -r /vagrant_data/requirements.txt
sudo updatedb
# TODO Remove This
echo "----------------------------"
echo "Install Nginx"
echo "----------------------------"
sudo apt-get -y -q install nginx