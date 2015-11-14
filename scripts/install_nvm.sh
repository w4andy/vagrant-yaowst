#!/usr/bin/env bash

echo "install Node Version Manager"
git clone https://github.com/creationix/nvm.git ~/.nvm && cd ~/.nvm && git checkout `git describe --abbrev=0 --tags`
if [ $? -ne 0 ]; then
    echo "Error on installing Node Version Manager"
    exit 1
fi

echo "source ~/.nvm/nvm.sh" >> ~/.bashrc

# include source
source ~/.nvm/nvm.sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "install node versions"
for v in $(cat $DIR/node_versions.txt); do
    echo "install $v"
    nvm install "$v"
done

exit 0