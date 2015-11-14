#!/usr/bin/env bash

source ~/.nvm/nvm.sh

echo "run cross test on $HOSTNAME"

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for v in $(cat $DIR/node_versions.txt); do
    echo "#### run test with node version $v on $HOSTNAME ####"
    nvm use "$v"
    if [ $? -eq 0 ]; then
        node_modules/.bin/_mocha ./test
    else
        echo "Can't switch to node version $v"
    fi
    echo "#### done test with node version $v on $HOSTNAME ####"
done

exit 0