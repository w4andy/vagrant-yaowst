#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BOXES="$(grep 'config.vm.define' $DIR/../Vagrantfile|cut -d '"' -f 2)"

echo "start muti box testing"
for i in $BOXES; do
    echo "run test in box $i";
    vagrant ssh -c "~/scripts/run_test.sh"
done
echo "all boxes tested"

exit 0