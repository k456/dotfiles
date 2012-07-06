#!/bin/sh

orig_dir=`pwd`
cd `dirname $0`
git submodule init
git submodule update
ln -s _vimrc ~/.vimrc
ln -s vimfiles ~/.vim
cd $orig_dir
