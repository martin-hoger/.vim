# VIM dotfiles

**Install: fast**

`curl -L https://raw.githubusercontent.com/martin-hoger/.vim/master/bin/intall.sh | sh`


**Install: step by step**

    cd ~
    git clone https://github.com/martin-hoger/.vim
    ln -s $TARGET_DIR/vimrc .vimrc
    
    cd ~/.vim
    git submodule init && git submodule update
