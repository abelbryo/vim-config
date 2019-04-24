
" -----------------------------
" Customizing installed plugins
" -----------------------------

" """"""""
" CtrlP
" """""""""
" let g:ctrlp_user_command    = 'ag %s -l --nocolor -g ""'
"
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_show_hidden = 1
let g:ctrlp_map = '<c-p>'

if exists("g:ctrlp_user_command")
  unlet g:ctrlp_user_command
endif

set wildignore+=*/tmp/*,*/node_modules/*,*/target/*,*.so,*.swp,*.zip,*.class,*/.idea/*,*/.bloop/*,*/.metals/*     " MacOSX/Linux

let g:ctrlp_custom_ignore = {
  \ 'dir':  'target|dist|node_modules|vendor|\.git$\|\.hg$\|\.svn$\|\.yardoc$|.idea$',
  \ 'file': '\.exe$\|\.so$\|\.dat$'
  \ }


" """""""""""""""""""""""""""""""""""
" JSBeautify
" Apply formatting by selecting code
" """"""""""""""""""""""""""""""""""""
autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
autocmd FileType json vnoremap <buffer> <c-f> :call RangeJsonBeautify()<cr>
autocmd FileType jsx vnoremap <buffer> <c-f> :call RangeJsxBeautify()<cr>
autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>


autocmd Filetype html       setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby       setlocal ts=2 sw=2 expandtab
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType typescript setlocal shiftwidth=2 tabstop=2
autocmd FileType jsx        setlocal shiftwidth=2 tabstop=2
autocmd FileType python     setlocal shiftwidth=4 softtabstop=4 expandtab

" Highlight tags with 'MatchTagAlways' plugin
let g:mta_filetypes = {
    \ 'xml': 1,
    \ 'html': 1,
    \ 'xhtml': 1,
    \ 'javascript.jsx': 1,
    \}

" Allow Vim-JSX to highlight *.js files
let g:jsx_ext_required = 0

" Trigger snippets
let g:UltiSnipsExpandTrigger="<C-l>"

"""""""""""""""""""""
" Vim-Jsx-Pretty
""""""""""""""""""""""
"let g:vim_jsx_pretty_enable_jsx_highlight = 1 " default 1
"let g:vim_jsx_pretty_colorful_config      = 1 " default 0



""""""
" Ack
""""""
if executable('ag')
    let g:ackprg='ag --vimgrep'
endif

""""""""""""""""""""
" MiniBufferExplorer
""""""""""""""""""""
nmap L :bn<CR>
nmap H :bp<CR>

" MiniBufExpl Colors
" hi MBENormal               guifg=#808080 guibg=fg
" hi MBEChanged              guifg=#CD5907 guibg=fg
" hi MBEVisibleNormal        guifg=#5DC2D6 guibg=fg
" hi MBEVisibleChanged       guifg=#F1266F guibg=fg
" hi MBEVisibleActiveNormal  guifg=#A6DB29 guibg=fg
" hi MBEVisibleActiveChanged guifg=#F1266F guibg=fg
"

""""""""""""""""""""
" BufExplorer plugin
""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'
map <leader>o :BufExplorer<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark
map <leader>nf :NERDTreeFind<cr>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git gutter (Git diff)
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_enabled=0
nnoremap <silent> <leader>d :GitGutterToggle<cr>"


""""""""""""""""""""
" air-line
""""""""""""""""""""
" Airline colorscheme
let g:airline_theme = 'dark'
" Show buffers as tabs
let g:airline#extensions#tabline#enabled = 1

" Show full path in statusline
let g:airline_section_c = '%F'

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

set laststatus=2



"""""""""""""""""
" Ctags shortcut
"""""""""""""""""
set tags=tags,./tags; " By default vim will only look for the tags in the dir of the file
                      " open in the current buffer. This will make vim move up the dir
                      " hierarchy until it has found the file.

let Tlist_Ctags_Cmd = "/usr/local/bin/ctags"
let Tlist_WinWidth = 50
map <F4> :TlistToggle<cr>
map <F8> :!/usr/local/bin/ctags -R --exclude=@/Users/aterefe/.ctagsignore --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
"ctags -R --exclude=target --exclude=vendor

" To find for tags put the cursor on the word
" and hit tt
nmap tt <c-]>:tselect<cr>

""""""""""""""""""
" YouCompleteMe
""""""""""""""""""
"let g:ycm_semantic_triggers = {'haskell' : ['.']}
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s', 're!\[.*\]\s'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }


""""""""""""""""""""""""""
" SQL Format
"""""""""""""""""""""""""
""jackc/sqlfmt""
let g:sqlfmt_command = "sqlfmt"
let g:sqlfmt_options = ""

""andialbrecht/sqlparse""
let g:sqlfmt_command = "sqlformat"
let g:sqlfmt_options = "-r -k upper"


" tern gb keybinding for moving the cursor straight to a variable definition
autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" """""""""""""""""""""""""""""
" Rust format
" """""""""""""""""""""""""""""
let g:rustfmt_autosave = 1

" """""""""""""""""""""""""""""
" Vim-latex
" """""""""""""""""""""""""""""
let g:tex_flavor='latex'
"set iskeyword+=:
"

""""""""""""
" Fugitive
""""""""""""
set diffopt+=vertical


""""""""""""
" vim-lsc
""""""""""""
" vim-scala
au BufRead,BufNewFile *.sbt set filetype=scala


""""""""""""""""
" coc settings
""""""""""""""""
autocmd FileType json syntax match Comment +\/\/.\+$+


""""""""""""""""
" Supertab
""""""""""""""""
let g:SuperTabDefaultCompletionType = "<c-n>"



