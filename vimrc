autocmd InsertEnter * : silent exec "!printf '\033]50;CursorShape=2\x7'" | exec ":redraw!"
autocmd InsertLeave * : silent exec "!printf '\033]50;CursorShape=0\x7'" | exec ":redraw!"

filetype plugin on
" set omnifunc=syntaxcomplete#Complete
" let g:solarized_termcolors=16


set nocompatible              " required
filetype off                  " required

" Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
" Plugin 'VundleVim/Vundle.vim'
" Plugin 'Valloric/YouCompleteMe'

call vundle#end()

call plug#begin('~/.vim/plugged')
" Make sure you use single quotes
" " On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-surround' " Vim surround
Plug 'berdandy/ansiesc.vim' "Ansiesc to conceal ANSI escape sequences
Plug 'tomtom/tcomment_vim' "Commenting

call plug#end()

"Key Remaps

    " Standard Keys

        nnoremap ; :
        nnoremap : ;
        cnoremap sudow w !sudo tee % >/dev/null
        map j gj
        map k gk

    " Control Keys

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

    " 'g' maps

        map gR ;vertical resize


filetype plugin indent on    " requiredi

syntax enable 

" Text width
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
set shiftwidth=4
set expandtab
set scrolloff=5               " keep at least 5 lines above/below
set sidescrolloff=5           " keep at least 5 lines left/right
set history=1000
set backspace=indent,eol,start
set linebreak
set cmdheight=2               " command line two lines high
set undolevels=1000           " 1000 undos
set updatecount=100           " switch every 100 chars
set complete=.,w,b,u,U,t,i,d  " do lots of scanning on tab completion
set ttyfast                   " we have a fast terminal
set noerrorbells              " No error bells please
set fileformats=unix
set ff=unix
set relativenumber            "relative numbers
set pastetoggle=<F2>          "Use F2 key to toggle set paste in insert mode

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
hi clear SpellBad
hi SpellBad cterm=underline

"  searching
 set incsearch                 " incremental search
 set noignorecase                " search ignoring case
"  set ignorecase                " search ignoring case
 set hlsearch                  " highlight the search
 set showmatch                 " show matching bracket
 set diffopt=filler,iwhite     " ignore all whitespace and sync

 function! ReplaceBuffer(bang, newfile)
     let curbuf = bufnr('%')
     exec "e " . a:newfile
     exec "bd" . a:bang . " " . curbuf
 endfunction
 command! -nargs=1 -complete=file -bang -bar BDE call ReplaceBuffer('<bang>', <f-args>)

  " spelling
 if v:version >= 700
    " Enable spell check for text files, tex files
      autocmd BufNewFile,BufRead *.tex setlocal spell spelllang=en
      autocmd BufNewFile,BufRead *.txt setlocal spell spelllang=en
endif
" mappings
" toggle list mode
nmap <LocalLeader>tl :set list!<cr>
" toggle paste mode
nmap <LocalLeader>pp :set paste!<cr>
" let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

