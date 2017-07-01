autocmd InsertEnter * : silent exec "!printf '\033]50;CursorShape=2\x7'" | exec ":redraw!"
autocmd InsertLeave * : silent exec "!printf '\033]50;CursorShape=0\x7'" | exec ":redraw!"

filetype plugin on
set omnifunc=syntaxcomplete#Complete


set nocompatible              " required
filetype off                  " required

" Plugins

call plug#begin('~/.vim/plugged')
" Make sure you use single quotes
" " On-demand loading
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' } " Using a non-master branch
Plug 'davidhalter/jedi-vim'  " Python autocomplete
"Plug 'klen/python-mode'     " Python autocomplete
"Plug 'artur-shaik/vim-javacomplete2'  " Java Autocomplete
"Plug 'lervag/vimtex'   "vim latex
Plug 'tpope/vim-surround' " Vim surround
Plug 'altercation/vim-colors-solarized'  "vim solarized

call plug#end()


"Key Remaps
		" Standard Keys
				
				nnoremap ; :
				nnoremap : ;
				cnoremap sudow w !sudo tee % >/dev/null

		" Control Keys
			"	map      <C-w>o ;tab sp<CR>
				map <space>q  <c-W>q
        map <space>H  <c-W>H
        map <space>J  <c-W>J
        map <space>K  <c-W>K
        map <space>L  <c-W>L
        map <space>h  <c-W>h
        map <space>j  <c-W>j
        map <space>k  <c-W>k
        map <space>l  <c-W>l
        map <space>w  <c-W>w
				map <space>W  <c-W>W

filetype plugin indent on    " requiredi
"let g:pymode_options_colorcolumn = 0		"  to remove the red line in pymode at column 80

syntax on
colorscheme solarized
set background=light

"Text width
set tw=80
set cc=+1
set wrap
highlight ColorColumn ctermbg=7

set ruler                     " show the line number on the bar
set more                      " use more prompt
set autoread                  " watch for file changes
set modifiable
set number                    " line numbers
set hidden
set noautowrite               " don't automagically write on :next
set lazyredraw                " don't redraw when don't have to
set showmode
set showcmd
set nocompatible              " vim, not vi
set autoindent smartindent    " auto/smart indent
set smarttab                  " tab and backspace are smart
set tabstop=2                 " 6 spaces
set shiftwidth=2
set scrolloff=5               " keep at least 5 lines above/below
set sidescrolloff=5           " keep at least 5 lines left/right
set history=200
set backspace=indent,eol,start
set linebreak
set cmdheight=2               " command line two lines high
set undolevels=1000           " 1000 undos
set updatecount=100           " switch every 100 chars
set complete=.,w,b,u,U,t,i,d  " do lots of scanning on tab completion
set ttyfast                   " we have a fast terminal
set noerrorbells              " No error bells please
"set shell=bash
set fileformats=unix
set ff=unix
set nohlsearch
set relativenumber            "relative numbers

filetype on                   " Enable filetype detection
filetype indent on            " Enable filetype-specific indenting
filetype plugin on            " Enable filetype-specific plugins
set wildmode=longest:full
set wildmenu                  " menu has tab completion
let maplocalleader=','        " all my macros start with ,
set laststatus=2
set hls
set number
set ai
set noswapfile
set foldmethod=syntax
set spell spelllang=en_us

"  searching
 set incsearch                 " incremental search
 set ignorecase                " search ignoring case
 set hlsearch                  " highlight the search
 set showmatch                 " show matching bracket
 set diffopt=filler,iwhite     " ignore all whitespace and sync

"  " spelling
" if v:version >= 700
"    " Enable spell check for text files
"      autocmd BufNewFile,BufRead *.txt setlocal spell spelllang=en
"endif
" mappings
" toggle list mode
nmap <LocalLeader>tl :set list!<cr>
" toggle paste mode
nmap <LocalLeader>pp :set paste!<cr>

"cursor toggle for vim iTerm tmux
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

