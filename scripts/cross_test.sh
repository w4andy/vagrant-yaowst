#!/usr/bin/env bash

source ~/.nvm/nvm.sh

echo "run cross test"

nvm use 0.10
node_modules/.bin/_mocha ./test

nvm use 0.12
node_modules/.bin/_mocha ./test

nvm use iojs
node_modules/.bin/_mocha ./test

nvm use 4.2
node_modules/.bin/_mocha ./test

nvm use 5.0
node_modules/.bin/_mocha ./test

exit 0