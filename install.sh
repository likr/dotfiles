#!/bin/sh
path=`dirname $0`

echo linking dotfiles
ln -F -s "$path/_vimrc" ~/.vimrc
ln -F -s "$path/_gvimrc" ~/.gvimrc
ln -F -n -s "$path/_vim" ~/.vim
ln -F -s "$path/_hgrc" ~/.hgrc
ln -F -s "$path/_gitconfig" ~/.gitconfig
ln -F -s "$path/_gitignore" ~/.gitignore
ln -F -s "$path/cookiecutterrc" ~/.cookiecutterrc
ln -F -n -s "$path/nvim" ~/.config/nvim

echo installing dein.vim
curl -s -o "$path/installer.sh" https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh
sh "$path/installer.sh" ~/.vim/bundles > /dev/null
rm "$path/installer.sh"

echo done
