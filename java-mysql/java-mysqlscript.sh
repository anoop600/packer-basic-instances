#!/bin/bash
sudo apt update -y
sudo apt install openjdk-8-jdk -y

echo "JAVA is Installed"

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password minduser'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password minduser'
sudo apt-get -y install mysql-server
