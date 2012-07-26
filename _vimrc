" vi との互換性OFF
set nocompatible
" ファイル形式の検出を無効にする
filetype off
filetype plugin on

" ファイル形式検出、プラグイン、インデントを ON
filetype plugin indent on 

set title "編集中のファイル名を表示
syntax on

set number
set cursorline

set rtp+=~/.vim/vundle.git/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-rails'
Bundle 'endwise.vim'
