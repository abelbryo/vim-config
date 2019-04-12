""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set the runtime path to include Vundle and initialize
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set rtp+=~/.vim/bundle/Vundle.vim

" call vundle#begin()

call plug#begin('~/.vim/plugged')


" Alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" Let Vundle manage Vundle, required
" ----------------------------------
Plug 'VundleVim/Vundle.vim'

" ---------------------------------------------------------
Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-surround'

Plug 'tpope/vim-commentary'

Plug 'tpope/vim-jdaddy'

Plug 'scrooloose/nerdtree'

Plug 'derekwyatt/vim-scala'

Plug 'natebosch/vim-lsc'

Plug 'Townk/vim-autoclose'

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

Plug 'maksimr/vim-jsbeautify'

Plug 'mileszs/ack.vim'

Plug 'rust-lang/rust.vim'

" Plug 'fholgado/minibufexpl.vim'

Plug 'jlanzarotta/bufexplorer'

" Plug 'ensime/ensime-vim', { 'do': ':UpdateRemotePlugins' }

Plug 'altercation/vim-colors-solarized'

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'easymotion/vim-easymotion'

Plug 'vim-scripts/taglist.vim'

function! BuildYCM(info)
  if a:info.status == 'installed' || a:info.force
    !./install.sh
  endif
endfunction
Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }

Plug 'eagletmt/ghcmod-vim'

Plug 'eagletmt/neco-ghc'

Plug 'vim-scripts/dbext.vim'

Plug 'christoomey/vim-tmux-navigator'

Plug 'leafgarland/typescript-vim'

Plug 'quramy/tsuquyomi'

if has('nvim')
    " Plug 'eed3si9n/LanguageClient-neovim', {'do' : ':UpdateRemotePlugins'}

    Plug 'autozimu/LanguageClient-neovim', {
        \ 'branch': 'next',
        \ 'do': 'bash install.sh',
        \ }
endif

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'Valloric/MatchTagAlways'
" Plug 'maxmellon/vim-jsx-pretty'

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
