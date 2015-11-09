#!/usr/bin/env bash

echo "install Node Version Manager"
git clone https://github.com/creationix/nvm.git ~/.nvm && cd ~/.nvm && git checkout `git describe --abbrev=0 --tags`
echo "source ~/.nvm/nvm.sh" >> ~/.bashrc

# include source
source ~/.nvm/nvm.sh

echo "install node versions"
nvm install 0.10
nvm install 0.12
nvm install iojs
nvm install 4.2
nvm install 5.0

exit 0