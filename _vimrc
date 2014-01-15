" vi との互換性OFF
set nocompatible
" ファイル形式の検出を無効にする
filetype off
filetype plugin on

set encoding=utf-8
set fileencodings=utf-8,sjis,iso-2022-jp,euc-jp

" ファイル形式検出、プラグイン、インデントを ON
filetype plugin indent on 

set title "編集中のファイル名を表示
syntax on

set number
set cursorline

set rtp+=~/.vim/vundle.git/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'The-NERD-tree'
Bundle 'tpope/vim-rails'
Bundle 'endwise.vim'
Bundle 'Shougo/neocomplcache'
Bundle 'vim-ruby/vim-ruby'
set ambiwidth=double

"neocomplcache有効
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_force_overwrite_completefunc = 1

" 検索時のハイライト設定 Esc連打でハイライトを消す
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

source $VIMRUNTIME/macros/matchit.vim
