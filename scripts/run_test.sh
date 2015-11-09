#!/usr/bin/env bash

echo "switch to yaowst"
cd ~/yaowst

echo "switch node version"
source ~/.nvm/nvm.sh
nvm use 5.0

echo "run cleanup"
npm cleanup

echo "install packets"
npm install

echo "run tests"
~/scripts/cross_test.sh

exit 0