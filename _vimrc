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

set rtp+=~/.vim/VundleVim.vim.git
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'The-NERD-tree'
Plugin 'tpope/vim-rails'
Plugin 'endwise.vim'
Plugin 'Shougo/neocomplcache'
Plugin 'vim-ruby/vim-ruby'
set ambiwidth=double

"neocomplcache有効
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_force_overwrite_completefunc = 1
let g:neocomplcache_temporary_dir = "$HOME/.vim/tmp/neocomplcache"

" 検索時のハイライト設定 Esc連打でハイライトを消す
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

source $VIMRUNTIME/macros/matchit.vim

" vim-cofee-script
set nocompatible
filetype off

" set rtp+=~/.vim/bundle/vundle/
" call vundle#rc()

Plugin 'kchmck/vim-coffee-script'
Plugin 'gnperdue/vim-asciidoc'
call vundle#end()

syntax enable
filetype plugin indent on
autocmd FileType python setl autoindent
autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python setl tabstop=8 expandtab shiftwidth=4 softtabstop=4
