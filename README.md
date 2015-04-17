# VIM dotfiles

My personal collection of VIM settings.

**Install (fast)**

    curl -L https://raw.githubusercontent.com/martin-hoger/.vim/master/bin/install.sh | sh

**Install (step by step)**

    cd ~
    git clone https://github.com/martin-hoger/.vim
    ln -s .vim/vimrc .vimrc
    
    cd ~/.vim
    git submodule init && git submodule update
