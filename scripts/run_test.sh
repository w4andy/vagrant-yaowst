#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd ~/yaowst

NODE_VERSION=$(tail -n1 $DIR/node_versions.txt)

echo "switch to node version $NODE_VERSION"
source ~/.nvm/nvm.sh
nvm use "$NODE_VERSION"

if [ $? -ne 0 ]; then
    echo "Can't switch to node version $NODE_VERSION"
    exit 1
fi

echo "run cleanup"
npm run clean

if [ $? -ne 0 ]; then
    echo "Error on run cleanup"
    exit 1
fi


echo "install node modules"
npm install

if [ $? -ne 0 ]; then
    echo "Error on install node modules"
    exit 1
fi

echo "run tests"
~/scripts/cross_test.sh

if [ $? -ne 0 ]; then
    echo "Error on run tests"
    exit 1
fi

exit 0