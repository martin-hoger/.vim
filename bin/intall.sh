#!/usr/bin/env bash

TARGET_DIR=~/.vim
GIT_SOURCE="https://github.com/martin-hoger/.vim"

if [ -d "$TARGET_DIR" ]; then
  echo "You already have $TARGET_DIR present. You'll need to remove it if you want to install"
  exit
fi

echo "Cloning from git..."
hash git >/dev/null 2>&1 && env git clone "$GIT_SOURCE" "$TARGET_DIR" || {
  echo "git not installed"
  exit
}

cd ~
ln -s $TARGET_DIR/vimrc .vimrc

cd $TARGET_DIR
git submodule init && git submodule update && echo "Updated"
