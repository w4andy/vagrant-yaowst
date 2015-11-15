#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BOXES="$(grep 'config.vm.define' $DIR/../Vagrantfile|cut -d '"' -f 2)"

echo "run rsync"
vagrant rsync

echo "start muti box testing"
for box in $BOXES; do
    echo "run tests in box $box";
    vagrant ssh $box -c "~/scripts/run_test.sh"
done
echo "all boxes tested"

exit 0