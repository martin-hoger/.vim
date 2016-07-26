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

#Update submodules
cd $TARGET_DIR
git submodule init && git submodule update

# Install patched-fonts
# https://github.com/ryanoasis/nerd-fonts#font-installation
echo "Installing patched fonts..."
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20for%20Powerline%20Nerd%20Font%20Complete.otf
