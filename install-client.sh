#!/bin/bash

cd etc-apache2

sudo add-apt-repository ppa:ondrej/php

sudo apt update

sudo apt install ssh rar vim nmap mc

sudo apt install apache2

sudo mv /etc/apache2/apache2.conf /etc/apache2/apache2.conf-original

sudo cp apache2.conf /etc/apache2/apache2.conf

sudo mv /etc/apache2/ports.conf /etc/apache2/ports.conf-original
sudo cp ports.conf /etc/apache2/ports.conf

sudo mv /etc/apache2/envvars /etc/apache2/envvars-original
sudo cp envvars /etc/apache2/envvars

sudo cp sites-available/000-default.conf /etc/apache2/sites-available/000-default.conf
sudo cp conf-available/serve-cgi-bin.conf /etc/apache2/conf-available/serve-cgi-bin.conf

sudo a2dismod mpm_event

sudo a2enmod rewrite

sudo a2enmod cgi

sudo service apache2 restart


################     Python     ########################

sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update
#sudo apt-get install python3.7
sudo apt-get install python3-pip

python3 -m pip install pyserial

#sudo update-alternatives --install /usr/bin/python python /usr/bin/python2.7 1
# sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.7 2
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.8 1

# update-alternatives --remove python /usr/bin/python2.7

# sudo update-alternatives --list python
# sudo update-alternatives --config python

########################  В А Ж Н О ######################

sudo adduser prsystem dialout

sudo init 6
