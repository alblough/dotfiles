filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on

" Figure out where to stick tempfiles
if empty($WORK)
   let $tmpdir = $HOME . '/.tmp'
   set backupdir=$HOME/.tmp
   set directory=$HOME/.tmp
else
   let $tmpdir = $WORK . '/.tmp'
   set backupdir=$WORK/.tmp
   set directory=$WORK/.tmp
endif
if !isdirectory($tmpdir)
   call mkdir($tmpdir, 'p')
endif

"set rtp+=~/.vim/bundle/vundle/
"call vundle#rc()

"""""""""""""""""""
"" Vundle Bundles "
"""""""""""""""""""
"" base vundle
"Bundle 'gmarik/vundle'
"
"" github repos
"
""stylized statusline
"Bundle 'Lokaltog/powerline'
""Bundle 'bling/vim-airline'
"
""code snippets tool
""Bundle 'msanders/snipmate.vim'
""Bundle 'SirVer/ultisnips'
"
""text-completion engine
"Bundle 'Shougo/neocomplcache.vim'
""Bundle 'Valloric/YouCompleteMe'
"
""filetree viewer
""Bundle 'scrooloose/nerdtree'
"Bundle 'Shougo/vimfiler.vim'
"
""code search
"Bundle 'mileszs/ack.vim'
"
""graphically display csv files as spreadsheet in vim
"Bundle 'chrisbra/csv.vim'
"
""key shortcuts for comments
"Bundle 'scrooloose/nerdcommenter'
"
""highlight nested parens with differing color
"Bundle 'kien/rainbow_parentheses.vim'
"
""in editor syntax checking
"Bundle 'scrooloose/syntastic'
"
""text alignment
"Bundle 'godlygeek/tabular'
"
""display tags
"Bundle 'majutsushi/tagbar'
"
""asynchronously dispatch builds/tests
"Bundle 'tpope/vim-dispatch'
"
""git wrapper
"Bundle 'tpope/vim-fugitive'
"
""git runtime
"Bundle 'tpope/vim-git'
"
""add git diff into gutter
""Bundle 'airblade/vim-gitgutter'
"
""add visual guides per code indentation level
"Bundle 'nathanaelkane/vim-indent-guides'
"
""add startup menu
"Bundle 'mhinz/vim-startify'
"
""multiple concurrent cursors
"Bundle 'terryma/vim-multiple-cursors'
"
""visual undo tree
"Bundle 'sjl/gundo.vim'
"
""fuzzy search for files/buffers
"Bundle 'kien/ctrlp.vim'
"
""unity:base tool
"Bundle 'Shougo/unite.vim'
"
""unity:version control
"Bundle 'hrsh7th/vim-versions'
"
""colorschemes
"Bundle 'morhetz/gruvbox'
"Bundle 'nanotech/jellybeans.vim'
"Bundle 'tomasr/molokai'
"Bundle 'flazz/vim-colorschemes'
"Bundle 'altercation/vim-colors-solarized'
"Bundle 'Lokaltog/vim-distinguished'
"Bundle 'tpope/vim-vividchalk'
"
""screensaver
"Bundle 'uguu-org/vim-matrix-screensaver'
"
"" vim-script repos
""Bundle 'AutoTag'
"Bundle 'bufexplorer.zip'
"Bundle 'buftabs'
"
""project management
""Bundle 'project.tar.gz'
"
""automated code indexing
""Bundle 'DfrankUtil'
""Bundle 'vimprj'
""Bundle 'indexer.tar.gz'
"
""fixes colorscheme issues with terminal vim
"Bundle 'CSApprox'
"
""generic vim utility functions
"Bundle 'genutils'
"
""syntax files
"Bundle 'aklt/plantuml-syntax'
""Bundle 'altera.vim'
""Bundle 'asmx86'
"Bundle 'armasm'
""Bundle 'gnuplot.vim'
"Bundle 'groovy.vim'
"Bundle 'std_c.zip'
""Bundle 'ucf.vim'


"""""""""""""""
" Vim Options "
"""""""""""""""
"set vbs=1            "vim verbosity for debug
set nocompatible     "allows vim to operate outside vi compatibility restrictions

"tab options
set tabstop=4        "tabsize
set shiftwidth=4     "indentsize
set softtabstop=4    "indentsize
set noexpandtab        "tab key translated into spaces

"folding options
set foldenable
set foldmethod=syntax
"set foldcolumn=4
"set foldlevelstart=99

"line length control
set nowrap             "disable auto-wrap
"set wrap                "enable wrap
"set columns=88
set textwidth=80        "define maximum line width
set colorcolumn=81      "highlights column 81 as a visual barrier
set showbreak=↪         "uses special character to display wrap
set linebreak           "splits on word boundary, not character

"search/replace
set ignorecase       "ignore case on search
"set smartcase        "adds a greedy search when using caps in search term
"set gdefault         "global replace by default
set incsearch        "enable incremental search
set showmatch        "shows matching term
set hlsearch         "highlight search

"splits
set splitbelow
set splitright

"auto format options
" c = auto-wrap comments on textwidth
" q = format comments with 'qq'
" r = auto insert comment leader after enter in Insert mode
" 1 = don't break a line after a one-letter word
set formatoptions=cqr1

"leader options
let mapleader = "," "remap leader key to something i can get to

"speedup vim
set ttyfast
set ttyscroll=3
set lazyredraw
"set synmaxcol=128

"general options
set modelines=0      "disable modelines
set encoding=utf-8
set scrolloff=3      "defines scroll action after moving x lines
set autoindent       "auto-indent
set showmode         "display current vim mode
set showcmd          "show command
set hidden           "use hidden buffer, no more annoying messages
set wildmenu         "wild menu
set wildignore=*.un~,*.bak,*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*.jpg,*.gif,*.png
set wildmode=list:longest "wild mode large list
set visualbell       "visual bell
set cursorline       "highlight the current line
set ttyfast          "fast scrolling
set ruler            "show ruler
set laststatus=2     "always show status line
set number           "display line number
set relativenumber   "line numbering in relation to current line, killer for yanking
set undofile         "create an undo file to revert actions past file closure
set noerrorbells     "no error bell
set nostartofline    "don't change to start of line when moving to other lines
set backspace=2      "make backspace work like it should...
set shortmess=atAI   "clean up messaging
set grepprg=ack      "ack > grep
set completeopt=longest,menuone

" lets highlight tabs because they are bad...
highlight SpecialKey ctermfg=1
set list
set listchars=tab:»·,trail:·

" Color Scheme
set t_Co=256
colorscheme molokai
"let g:molokai_original=1
"
""""""""""""
" Mappings "
""""""""""""
"nnoremap <F11>  :sp tags<CR>:%s/^\([^   :]*:\)\=\([^   ]*\).*/syntax keyword Tag \2/<CR>:wq! tags.vim<CR>/^<CR><F12>
"nnoremap <F12>  :so tags.vim<CR>

"unfold when jumping to a line
cmap <expr> <CR> getcmdtype() == ':' && getcmdline() =~ '^\d\+$' ? 'normal! zv<CR>' : '<CR>'

"bringup my psuedo IDE
nnoremap <F8> :TagbarToggle<cr><bar>:NERDTreeToggle<cr>

"remap % to tab for fast bracket searching
nnoremap <tab> %
vnoremap <tab> %

" remap Ctrl-Tab to cycle through buffers
nnoremap <C-S-tab> :bp<CR>
nnoremap <C-tab>   :bn<CR>
inoremap <C-S-tab> <Esc>:bp<CR>i
inoremap <C-tab>   <Esc>:bn<CR>i

"list out tags when match more than one
nnoremap <C-]> g<C-]>

"move around splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"move lines
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <ESC>:m .+1<CR>==gi
inoremap <A-k> <ESC>:m .-2<CR>==gi
vnoremap <A-j> :m '>.+1<CR>gv=gv
vnoremap <A-k> :m '<.-2<CR>gv=gv

"scroll by visual lines
nnoremap j gj
nnoremap k gk

"blockwise indent
vmap > >gv
vmap < <gv

"oh god yes, maps F1 to ESC, my most common typo
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

"save the shift hit, map ; as :
nnoremap ; :
"nnoremap : ;

"lets map space to toggle folds
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf
nnoremap <C-Space> zi

"jump out of insert mode using 'jj'
inoremap jj <ESC>

" Leader mappings
", : clear search on leader+space
nnoremap <leader><space> :noh<cr> "
",W: clear all trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<cr>
",a: bringup ack
nnoremap <leader>a :call AckAware()<cr>
",v: reselect pasted text
nnoremap <leader>v V`]
",ev: bring up .vimrc
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
",w: create a new split
nnoremap <leader>w <C-w>v<C-w>l

"""""""""""""
" Functions "
"""""""""""""
function! AckAware ()
   let ftype = &filetype
   if ftype == ''
      return
   endif

   if ftype == "c"
      let ack_type = "cc"
   elseif ftype == "systemverilog"
      let ack_type = "verilog"
   else
      let ack_type = ftype
   endif

   execute 'ack --type=' . ack_type . ' <cword>'
   return

endfunction

function! Inc(...)
  let result = g:i
  let g:i += a:0 > 0 ? a:1 : 1
  return result
endfunction

function! IncBlock()
    let sword = expand("<cword>")
    let g:i=sword
    execute '%s/' . sword . '/\=printf("0x%04X", Inc())/'
endfunction

nnoremap <C-q> :call IncBlock()<cr>
"vnoremap <C-q> :let i=expand("<cword>") \| execute '$s/' . expand("<cword>") . '/\=printf("0x%04X", Inc())/'<cr>

"NEED TO MAKE THIS A THING
":%s/^\s\+[0-9A-Z_]\+\(\s\+\)\=/\=submatch(0). repeat(" ", 48-len(submatch(0)))
":let i=0x1801 | %s/0x1801/\=printf("0x%04X", Inc())/

"""""""""""""""""
" Auto Commands "
"""""""""""""""""

"Map do/sdc files as tcl files
autocmd BufNewFile,BufRead *.do,*.sdc setf tcl

"Add folds to preproc stuff
"autocmd BufRead,BufNewFile *.[ch] syn region cDefFold start="\#if" end="\#endif" transparent fold

"Add custom types if they exist
autocmd BufRead,BufNewFile *.[ch] if filereadable('.git/types.vim')
autocmd BufRead,BufNewFile *.[ch]   exe 'so .git/types.vim'
autocmd BufRead,BufNewFile *.[ch] endif

"AWESOME FIX THAT REMOVES QUICKFIX BUFFERS FROM SHOWING UP IN BUFFER LIST
autocmd FileType qf setlocal nobuflisted

"Per filetype tagging
"au FileType asm                     execute "set tags=" . tagdir . "/asm"
"au FileType c                       execute "set tags=" . tagdir . "/c"
"au FileType dosbatch                execute "set tags=" . tagdir . "/dosbatch"
"au FileType html                    execute "set tags=" . tagdir . "/html"
"au FileType sh                      execute "set tags=" . tagdir . "/sh"
"au FileType tcl                     execute "set tags=" . tagdir . "/tcl"
"au FileType verilog                 execute "set tags=" . tagdir . "/verilog;" . tagdir ."/systemverilog"
"au FileType verilog_systemverilog   execute "set tags=" . tagdir . "/verilog," . tagdir ."/systemverilog"
"au FileType systemverilog           execute "set tags=" . tagdir . "/verilog;" . tagdir ."/systemverilog"
"au FileType vhdl                    execute "set tags=" . tagdir . "/vhdl"

""""""""""""""""""
" Cscope Options "
""""""""""""""""""
if has("cscope")
   set nocscopeverbose
   set cscopetag  "lets use cscope & ctags
   set csto=0     "check cscope before ctags
   let path = getcwd()
   let cscope_db = '.git/cscope.out'
   if filereadable(cscope_db)
      exe "cs add " . cscope_db . " " . path
   endif
   set cscopeverbose
   nmap <C-\> :cs find c <C-R>=expand("<cword>")<CR><CR>
   "nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
   "nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
   "nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
   "nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
   "nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
   "nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
   "nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
   "nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
endif


""""""""""""""""""
" Plugin Options "
""""""""""""""""""
"ack.vim
let g:ack_default_options = " -H --nocolor --nogroup --column"

"buftabs options
let g:buftabs_only_basename=1

"neocomplcache
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_auto_select = 1
let g:neocomplcache_temporary_dir = $tmpdir

"muliple cursors
"let g:multi_cursor_use_default_mapping = 0
"let g:multi_cursor_start_key = '<C-m>'
"let g:multi_cursor_next_key = '<C-n>'
"let g:multi_cursor_prev_key = '<C-N>'
"let g:multi_cursor_skip_key = '<C-x>'
"let g:multi_cursor_quit_key = '<ESC>'

"vim-airline options
"let g:airline_powerline_fonts = 1

"powerline options
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
let g:Powerline_symbols = "fancy"

"ctrlp options
"set wildignore+=*/.git/*,*/.hg/*,*/.svn/*
let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_working_path_mode = 'ra'
"let g:ctrlp_regexp = 1
"let g:ctrlp_by_filename = 1
let g:ctrlp_use_caching = 0
let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files']

"nerdtree options
let g:nerdtree_tabs_open_on_gui_startup = 1
let g:nerdtree_tabs_smart_startup_focus = 1
let g:nerdtree_tabs_focus_on_files = 1

"tagbar options
let Tlist_Show_Menu = 1
let g:tagbar_type_systemverilog = {
   \ 'ctagstype'  : 'systemverilog',
   \ 'kinds'      : [
      \ 'c:class',
      \ 't:task',
      \ 'f:function',
      \ 'm:module',
      \ 'p:program',
      \ 'i:interface',
      \ 'e:typedef',
      \ 'd:define',
      \ 'v:variable',
   \ ]
\ }

"syntastic options
"let g:syntastic_debug = 1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_auto_loc_list = 1

"syntastic tensilica options, use only for almanor
if $PROJECT == 'almanor'
   let g:syntastic_c_no_include_search = 1
   let g:syntastic_c_no_default_include_dirs = 1

   let g:syntastic_c_checkers=['gcc']
   let g:syntastic_c_compiler = 'xt-xcc'

   let g:syntastic_c_include_dirs = [
            \ 'EFC/include',
            \ 'EFC/Frontend/IDT/include',
            \ 'EFC/Frontend/Custom/include',
            \ 'EFC/Backend/IDT/include',
            \ 'EFC/Backend/Custom/include',
            \ 'EFC/Config/include',
            \ 'EFC/Board/config/include'
            \ ]

   let g:syntastic_c_compiler_options = ' --xtensa-core=PRINCETON_CORE_rev32_PROD '
   let g:syntastic_c_compiler_options .=  '-Wall '
   let g:syntastic_c_compiler_options .=  '-W '
   let g:syntastic_c_compiler_options .=  '-Waddress '
   let g:syntastic_c_compiler_options .=  '-Wbad-function-cast '
   let g:syntastic_c_compiler_options .=  '-Wcast-qual '
   let g:syntastic_c_compiler_options .=  '-Wdeclaration-after-statement '
   let g:syntastic_c_compiler_options .=  '-Wpointer-sign '
   let g:syntastic_c_compiler_options .=  '-Wredundant-decls '
   let g:syntastic_c_compiler_options .=  '-Wreturn-type '
   let g:syntastic_c_compiler_options .=  '-Wsign-compare '
   let g:syntastic_c_compiler_options .=  '-Wundef '
   let g:syntastic_c_compiler_options .=  '-Wno-unused-parameter '
   let g:syntastic_c_compiler_options .=  '-mno-reorder-tieport '
   let g:syntastic_c_compiler_options .=  '-mno-serialize-volatile '
   let g:syntastic_c_compiler_options .=  '-DNUM_DATA_MANAGERS=4 '
   let g:syntastic_c_compiler_options .=  '-DNUM_LOOKUP_MANAGERS=2 '
   let g:syntastic_c_compiler_options .=  '-DNUM_LOCK_MANAGERS=2 '
   let g:syntastic_c_compiler_options .=  '-DNUM_WEARLVL_MANAGERS=2 '
   let g:syntastic_c_compiler_options .=  '-WOPT:bdce=0'
endif

" referenced: http://paulrouget.com/e/myvimrc/
""" Toggle relative/absolute numbering
function! NumberToggle()
  if(&rnu == 1)
    set nu
  else
    set rnu
  endif
endfunc

nnoremap <F10> :call NumberToggle()<cr>

""" Toggle wrap/nowrap
function! WrapToggle()
  if(&wrap == 1)
    set nowrap
  else
    set wrap
  endif
endfunc

nnoremap <F9> :call WrapToggle()<cr>

" key mapping for google search
function! Google()
   call inputsave()
   let searchterm = input('Google: ')
   call inputrestore()
   return searchterm
endfunction
" need to fix this path
if has("win32")
   map <leader>g <ESC>:! start 'https://google.com/search?q=<C-R>=Google()<CR>'&<CR><CR>
else
   if has("unix")
      let s:uname = system("uname")
      if s:uname == "Darwin\n"
         map <leader>g <ESC>:! open 'https://google.com/search?q=<C-R>=Google()<CR>'&<CR><CR>
      elseif s:uname == "Linux\n"
         map <leader>g <ESC>:! xdg-open 'https://google.com/search?q=<C-R>=Google()<CR>'&<CR><CR>
      endif
   endif
endif
