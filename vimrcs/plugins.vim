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

function! BuildTern(info)
  if a:info.status == 'installed' || a:info.force
    !npm install
  endif
endfunction
Plug 'marijnh/tern_for_vim', { 'do': function('BuildTern') }

Plug 'mattn/emmet-vim'

Plug 'godlygeek/tabular'

Plug 'mileszs/ack.vim'

Plug 'rust-lang/rust.vim'

Plug 'jlanzarotta/bufexplorer'

Plug 'altercation/vim-colors-solarized'

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

Plug 'leafgarland/typescript-vim'

Plug 'quramy/tsuquyomi'

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'Valloric/MatchTagAlways'
Plug 'maxmellon/vim-jsx-pretty'

" ES2015 code snippets
Plug 'epilande/vim-es2015-snippets'

" React code snippets (Optional)
Plug 'epilande/vim-react-snippets'

" Ultisnips
Plug 'SirVer/ultisnips'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'

Plug 'vim-latex/vim-latex'

Plug 'jackc/sqlfmt'
Plug 'andialbrecht/sqlparse'
Plug 'b4b4r07/vim-sqlfmt'

" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }

Plug 'wincent/terminus'

call plug#end()
