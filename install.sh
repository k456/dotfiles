#!/bin/sh

orig_dir=`pwd`
dotfiles_dir=`dirname $0`
cd ${dotfiles_dir}
git submodule init
git submodule update
cd ${orig_dir}
ln -s ${dotfiles_dir}/_vimrc ~/.vimrc
ln -s ${dotfiles_dir}/vimfiles ~/.vim
ln -s ${dotfiles_dir}/_ctags ~/.ctags
vim +BundleInstall +qall
