#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

echo "Dotfiles"
git pull origin master && echo "Updated"

echo "Submodules"
git submodule init && git submodule update && echo "Updated"

