#!/usr/bin/env bash

echo "install git"

apt-get update
apt-get install git -y

echo "install nvm"
sudo -u vagrant -H sh -c /home/vagrant/scripts/install_nvm.sh

exit 0