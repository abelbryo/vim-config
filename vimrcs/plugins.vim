""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set the runtime path to include Vundle and initialize
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-surround'

Plug 'tpope/vim-commentary'

Plug 'tpope/vim-jdaddy'

Plug 'scrooloose/nerdtree'

Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'derekwyatt/vim-scala'

Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}

Plug 'jiangmiao/auto-pairs'

Plug 'tmhedberg/matchit'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'airblade/vim-gitgutter'

Plug 'mattn/emmet-vim'

Plug 'godlygeek/tabular'

Plug 'mileszs/ack.vim'

Plug 'rust-lang/rust.vim'

Plug 'jlanzarotta/bufexplorer'

Plug 'altercation/vim-colors-solarized'

Plug 'morhetz/gruvbox'

Plug 'kaicataldo/material.vim'

Plug 'sickill/vim-monokai'

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'easymotion/vim-easymotion'

Plug 'vim-scripts/taglist.vim'

Plug 'ervandew/supertab'

Plug 'eagletmt/ghcmod-vim'

Plug 'eagletmt/neco-ghc'

Plug 'vim-scripts/dbext.vim'

Plug 'christoomey/vim-tmux-navigator'

Plug 'Valloric/MatchTagAlways'

Plug 'leafgarland/typescript-vim'

Plug 'peitalin/vim-jsx-typescript'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'

Plug 'vim-latex/vim-latex'

" Plug 'jackc/sqlfmt'
" Plug 'andialbrecht/sqlparse'
" Plug 'b4b4r07/vim-sqlfmt'

Plug 'wincent/terminus'

Plug 'nathanaelkane/vim-indent-guides'

call plug#end()
