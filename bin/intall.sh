#!/usr/bin/env bash

TARGET_DIR=~/.vim
GIT_SOURCE="https://github.com/martin-hoger/.vim"

if [ -d "$TARGET_DIR" ]; then
  echo "\033[0;33mYou already have $TARGET_DIR present.\033[0m You'll need to remove it if you want to install"
  exit
fi

echo "\033[0;34mCloning from git...\033[0m"
hash git >/dev/null 2>&1 && env git clone "$GIT_SOURCE" "$TARGET_DIR" || {
  echo "git not installed"
  exit
}

cd ~
ln -s $TARGET_DIR/vimrc .vimrc

cd $TARGET_DIR
git submodule init && git submodule update && echo "Updated"
