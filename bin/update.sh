#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

git pull origin master
git submodule init && git submodule update

#Update submodules
if [[ "$1" == "all" ]]; then
    git submodule foreach git pull origin master
    git commit -a -m "Submodules updated"
    git push
fi

