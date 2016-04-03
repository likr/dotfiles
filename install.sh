#!/bin/sh
path=`dirname $0`
ln -F -s "$path/_vimrc" ~/.vimrc
ln -F -s "$path/_gvimrc" ~/.gvimrc
ln -F -n -s "$path/_vim" ~/.vim
ln -F -s "$path/_hgrc" ~/.hgrc
ln -F -s "$path/_gitconfig" ~/.gitconfig
ln -F -s "$path/_gitignore" ~/.gitignore
git clone https://github.com/Shougo/neobundle.vim.git "$path/_vim/bundle/neobundle.vim"
