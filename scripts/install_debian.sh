#!/usr/bin/env bash

echo "install git"

apt-get update
apt-get install git -y

if [ $? -ne 0 ]; then
    echo "Error on installing git"
    exit 1
fi

echo "install nvm"
sudo -u vagrant -H sh -c /home/vagrant/scripts/install_nvm.sh

if [ $? -ne 0 ]; then
    echo "Error on installing nvm"
    exit 1
fi

exit 0