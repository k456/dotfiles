#!/bin/sh

orig_dir=`pwd`
dotfiles_dir=$(cd $(dirname $0) && pwd)
cd ${dotfiles_dir}
git submodule init
git submodule update
ln -s ${dotfiles_dir}/_vimrc ~/.vimrc
ln -s ${dotfiles_dir}/vimfiles ~/.vim
ln -s ${dotfiles_dir}/_ctags ~/.ctags
ln -s ${dotfiles_dir}/_zshrc ~/.zshrc
cd ${orig_dir}
vim +BundleInstall +qall
