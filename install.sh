#!/bin/sh

orig_dir=`pwd`
dotfiles_dir=$(cd $(dirname $0) && pwd)
cd ${dotfiles_dir}
git submodule init
git submodule update
if [ ! -e ~/.vimrc ]; then
  ln -s ${dotfiles_dir}/_vimrc ~/.vimrc
fi	

if [ ! -e ~/.vim ]; then
  ln -s ${dotfiles_dir}/vimfiles ~/.vim
fi

if [ ! -e ~/.ctags ]; then
  ln -s ${dotfiles_dir}/_ctags ~/.ctags
fi

if [ ! -e ~/.zshrc ]; then
  ln -s ${dotfiles_dir}/_zshrc ~/.zshrc
fi

if [ ! -e ~/.screenrc ]; then
  ln -s ${dotfiles_dir}/_screenrc ~/.screenrc
fi

if [ ! -e ~/.tmux.conf ];then
  ln -s ${dotfiles_dir}/_tmux.conf ~/.tmux.conf	
fi

if [ ! -e ~/.tmux/plugins/tpm ];then
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  ~/.tmux/plugins/tpm/bin/install_plugins
fi

cd ${orig_dir}
vim +BundleInstall +qall
