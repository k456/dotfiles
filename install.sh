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


# tmux のバージョンを取得
tmux_version=$(tmux -V | cut -d ' ' -f 2)

if [ ! -e ~/.tmux.conf ];then
  # tmux バージョンに応じてリンク先を変える
  if [[ $(echo "$tmux_version < 2.1" | bc) -eq 1 ]]; then
    # tmux 1.8 用の設定ファイルをリンク
    ln -s ${dotfiles_dir}/_tmux.conf.18 ~/.tmux.conf
    #echo "Linked tmux.conf for version 1.8"
  else
    # tmux 2.1 以降用の設定ファイルをリンク
    ln -s ${dotfiles_dir}/_tmux.conf.new ~/.tmux.conf
    #echo "Linked tmux.conf for version 2.1 or later"
  fi
fi

if [ ! -e ~/.gitconfig ];then
  ln -s ${dotfiles_dir}/_gitconfig ~/.gitconfig
fi

#if [ ! -e ~/.tmux/plugins/tpm ];then
#  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
#  ~/.tmux/plugins/tpm/bin/install_plugins
#fi

cd ${orig_dir}
vim +BundleInstall +qall
