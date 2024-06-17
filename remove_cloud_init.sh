#!/bin/bash

#Disable all services (uncheck everything except "None")
sudo dpkg-reconfigure cloud-init

sudo apt-get purge cloud-init

sudo rm -rf /etc/cloud/ && sudo rm -rf /var/lib/cloud/
