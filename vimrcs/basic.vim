"""""""""""""""""""""""""""""""""
" General and basic settings
" 08-08-12 @ 22:53
" Based on vimrc by Amix
" By Abel Terefe
"""""""""""""""""""""""""""""""""
syntax on
filetype plugin on
filetype indent on

set history=700
set autoread
let mapleader=","
let g:mapleader=","

" Fast saving
nmap <leader>w :w!<cr>

" :W sudo saves files with root permission
" command W w !sudo tee % > /dev/null

""""""""""""""""""""
" User interface
""""""""""""""""""""
" Set 7 lines to the cursor when moving vertically
set so=7

" Wild menu
set wildmenu
" Ignore compiled files
set wildignore=*.o,*~,*.pyc,*.class

if has("win16")  || has("win32")
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
else
    set wildignore+=.git\*,.hg\*,.svn\*
endif

" Always show current position
set ruler
set number

set clipboard=unnamed

" Hight of the command bar
set cmdheight=2

" Buffer becomes hidden when it is abandoned
set hid

" Backspace
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Searching - ignore case
set ignorecase
set smartcase
set hlsearch

" Don't redraw while executing macros
set lazyredraw

" For regex
set magic

" mouse control
set mouse=a
set ttymouse=xterm2

" Show matching brackets
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" Turn off error bells
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Add a bit extra margin to the left
set foldcolumn=1

"""""""""""""""""""""""
" Colors and fonts
"""""""""""""""""""""""
syntax enable
try
    colorscheme monokai
    set background=dark
catch
endtry

if has("gui_running")
    "set guifont=Letter\ Gothic\ for\ Powerline:h12
    set guifont=PragmataPro\ for\ Powerline:h12
    colorscheme monokai
    set background=light
endif

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set guioptions-=L
    set guioptions-=r
    set t_Co-=256
    set guitablabel=%M\ %t
    autocmd! GUIEnter * set vb t_vb=
endif

set encoding=utf8
set ffs=unix,dos,mac

"""""""""""""""""""""""""
" Files backups and undo
"""""""""""""""""""""""""
set nobackup
set nowb
set noswapfile

""""""""""""""""""""""""""""""
" Text tab and indent related
""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab
set smarttab
" 1tab==4spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai " Auto indent
set si " smart indent
set wrap " Wrap lines

""""""""""""""""""""""""""
" Visual mode related
""""""""""""""""""""""""""
vnoremap <silent> * :call VisualSelection('f', '')<CR>
vnoremap <silent> # :call VisualSelection('b', '')<CR>

"""""""""""""""""""""""""""""""""
" Moving around long lines
"""""""""""""""""""""""""""""""""
map j gj
map k gk

map <space> /
map <c-space> ?

""""""""""""""""""""""""""
" Moving between windows
""""""""""""""""""""""""""
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
inoremap <C-c> <Esc><Esc>

""""""""""""""""""""""
" Close current buffer
""""""""""""""""""""""
map <leader>bd :Bclose<CR>
" Close all buffers
map <leader>ba :1,1000 bd!<CR>

" Useful mappings for managing tabs
map <leader>tn :tabnew<CR>
map <leader>to :tabonly<CR>
map <leader>tc :tabclose<CR>
map <leader>tm :tabmove<CR>
map <leader>t<leader> :tabnext<CR>

" Automatically remove trailing white spaces
autocmd BufWritePre * :%s/\s\+$//e

" Searching
""""""""""""""
set incsearch  " interactive search as characters are entered
set hlsearch   " hilight matches
hi search guibg=yellow guifg=red ctermfg=10 ctermbg=254
set ignorecase " Ignore case when searching
set smartcase  " When searching try to be smart about cases
map <space> /
map <c-space> ?
nnoremap <CR> :noh<CR><CR> " clear search highlight

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal! g`\"" |
            \ endif


" Cursor line and cursor column
"""""""""""""""""""""""""""""""
" autocmd InsertEnter * highlight Cursor       ctermfg=White ctermbg=Yellow cterm=bold guifg=white guibg=Yellow gui=bold
" autocmd InsertLeave * highlight Cursor       ctermfg=Black ctermbg=Yellow cterm=bold guifg=Black guibg=Yellow gui=bold
" autocmd InsertEnter * highlight CursorColumn ctermfg=White ctermbg=Yellow cterm=bold guifg=white guibg=yellow gui=bold
" autocmd InsertLeave * highlight CursorColumn ctermfg=Black ctermbg=Yellow cterm=bold guifg=Black guibg=yellow gui=bold
set nocursorline
set nocursorcolumn

" Cursor color
if &term =~ "xterm\\|rxvt"
    " use an orange cursor in insert mode
    let &t_SI = "\<Esc>]12;orange\x7"
    " use a red cursor otherwise
    let &t_EI = "\<Esc>]12;cyan\x7"
    silent !echo -ne "\033]12;steelblue\007"
    " reset cursor when vim exits
    autocmd VimLeave * silent !echo -ne "\033]112\007"
    " use \003]12;gray\007 for gnome-terminal
endif

"Scalariform
"""""""""""""
" au BufEnter *.scala setl formatprg=java\ -jar\ /home/abel/.scripts/scalariform/cli-assembly-0.2.0-SNAPSHOT.jar\ -f\ -q\
"                                                                              \ +compactControlReadability\
"                                                                              \ +alignParameters\
"                                                                              \ +alignArguments\
"                                                                              \ +alignSingleLineCaseStatements\
"                                                                              \ +doubleIndentClassDeclaration\
"                                                                              \ +rewriteArrowSymbols\
"                                                                              \ +preserveSpaceBeforeArguments\ --stdin\ --stdout


au BufEnter *.scala setl formatprg=scalariform\ -f\ -q\
                                                      \ -compactControlReadability\
                                                      \ +alignParameters\
                                                      \ +alignArguments\
                                                      \ +alignSingleLineCaseStatements\
                                                      \ +doubleIndentClassDeclaration\
                                                      \ -rewriteArrowSymbols\
                                                      \ +preserveSpaceBeforeArguments\ --stdin\ --stdout




" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" http://stackoverflow.com/questions/7163947/paste-multiple-times
xnoremap p pgvy

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" http://vim.wikia.com/wiki/Search_for_visually_selected_text
vnoremap // y/<C-R>"<CR>




