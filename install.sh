#!/bin/sh

dotfiles_dir=`dirname $0`
git submodule init
git submodule update
ln -s ${dotfiles_dir}/_vimrc ~/.vimrc
ln -s ${dotfiles_dir}/vimfiles ~/.vim
ln -s ${dotfiles_dir}/_ctags ~/.ctags
