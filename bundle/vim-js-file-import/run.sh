#!/usr/bin/env bash

if [ ! -d "vader.vim" ]; then
  git clone https://github.com/junegunn/vader.vim
fi

vim -Nu <(cat << EOF
filetype off
set rtp+=vader.vim
set rtp+=.
filetype plugin indent on
syntax enable
let g:mapleader = ','
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set breakindent
set smartindent
EOF
) -c 'Vader! spec/*' && echo 'All tests passed!' || echo 'Tests failed.'
