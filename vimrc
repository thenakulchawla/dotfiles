autocmd InsertEnter * : silent exec "!printf '\033]50;CursorShape=2\x7'" | exec ":redraw!"
autocmd InsertLeave * : silent exec "!printf '\033]50;CursorShape=0\x7'" | exec ":redraw!"

call plug#begin('~/.vim/plugged')
" Make sure you use single quotes
" " On-demand loading
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround' " Vim surround
Plug 'berdandy/ansiesc.vim' "Ansiesc to conceal ANSI escape sequences
Plug 'tomtom/tcomment_vim' "Commenting
Plug 'tpope/vim-unimpaired' "Using it currently for paste toggle

call plug#end()

filetype plugin indent on    " required

" Encoding
    set termencoding=utf-8
    set encoding=utf-8

" Indent
    set cindent                 " enable C-type indenting.
    set smartindent             " Do smart indenting when starting a new line
    set autoindent              " Copy current line's indent to new line

" Functions
    function! SetTabWidth(width)
        " Define all tab width specific options to the passed value

        " Number of spaces to be used while indenting using '>>'/'<<'/'='.
        exec 'set shiftwidth=' .a:width

        " Number of spaces to be used against <Tab> in files.
        exec 'set tabstop='    .a:width

        " Number of spaces to be used corresponding to '<Tab>' insert.
        exec 'set softtabstop='.a:width

    endfunction

    function! ReplaceBuffer(bang, newfile)
      let curbuf = bufnr('%')
      exec "e " . a:newfile
      exec "bd" . a:bang . " " . curbuf
    endfunction


" character
    call SetTabWidth(2)
    set shiftround  " Round indent to multiple of 'shiftwidth'
    set expandtab   " Expand tab to spaces while indenting
    set smarttab    " This does some tab magic!

" Search
    set incsearch   " Search as you type
    set ignorecase
    set smartcase   " Search case-sensitively if there's at least one capitalized letter
    set nohlsearch  " Do not highlight searches

" Text width
    set tw=120           " Textwidth
    set wrap            " Wrap around textwidth
    set cc=+1           " Display vertical colorcolumn at `tw`+1

" Appearance
    set cul                     " Highlight cursor line
    set list                    " Display special chars
    set listchars=tab:»\ ,trail:«,nbsp:«
                                " Display these chars in place of special chars
    set relativenumber number   " Display line no. relative to current line.
                                " Display abs line no. for current line.
    set lazyredraw
    set title                   " change the terminal's title
    set showcmd                 " show (partial) command in the last line of the screen
                                " this also shows visual selection info
    set scrolloff=2             " Always keep 4 lines off the edges when scrolling up/down

    " Folding
      syntax enable
        " set foldenable
        set foldmethod=syntax " Fold based on syntax levels
        set foldlevelstart=2    " Start folding from the 10th innermost block

        " Which commands open a fold
        " set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo

    " Colors
        syntax on                   " enable syntax based highlighting
        let g:solarized_termcolors=16
        set background=light        " Goes well with solarized
        let g:solarized_visibility = "high"
        " let g:solarized_contrast = "high"
        " let g:solarized_termtrans = 1
        colorscheme solarized


    " NERDtree
        autocmd StdinReadPre * let s:std_in=1
        autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
        let NERDTreeMinimalUI = 1
        let NERDTreeDirArrows = 1
        let g:NERDTreeNodeDelimiter = "\u00a0"

" Behaviour
    set switchbuf=useopen           " Jump to first open window for the buffer
    set backspace=indent,eol,start  " allow backspacing over everything in insert mode
    set history=1000                " remember more commands and search history
    set splitright                  " split new windows on current window's right side
    set splitbelow                  " split new windows below the current window

    set undolevels=1000             " use many muchos levels of undo
    if v:version >= 730
        set undofile                " keep a persistent backup file
        set undodir=~/.vim/.undo,~/tmp,/tmp
    endif

    set nobackup                    " do not keep backup files, it's 70's style cluttering
    set noswapfile                  " do not write annoying intermediate swap files,
    set directory=~/.vim/.tmp,~/tmp,/tmp " store swap files in one of these directories

    " Read/write a .viminfo file; retaining command-line history, registers, and many
    " more things from the last session.
    set viminfo='20,\"80


    set wildmode=longest,list,full  " Match longest substr, list all matches, complete next full
    set wildmenu                    " make tab completion for files/buffers act like bash
    set wildignore=*.swp,*.bak,*.pyc,*.class

    set noerrorbells                " don't beep
    set timeoutlen=500              " wait time(ms) for mapped key sequence to finish

    set modeline                    " enable file-specific vim settings e.g. `# vim: set tw=0:`
    set modelines=5                 " look for file-specific settings in these many lines

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

    " 'NERDtree' with C-n

        map <C-n> :NERDTreeToggle<CR>

    " Leader key maps
        " Use ',' as leader key instead of '\'
        let mapleader =  ","

" QUESTIONS

" highlight ColorColumn ctermbg=7
" set ruler                     " show the line number on the bar
" set more                      " use more prompt
" set autoread                  " watch for file changes
" set modifiable
" set number                    " line numbers
" set hidden
" set noautowrite               " don't automagically write on :next
" set lazyredraw                " don't redraw when don't have to
" set showmode
" set showcmd
" set nocompatible              " vim, not vi
" set autoindent smartindent    " auto/smart indent
" set smarttab                  " tab and backspace are smart
" set shiftwidth=2
" set expandtab
" set scrolloff=5               " keep at least 5 lines above/below
" set sidescrolloff=5           " keep at least 5 lines left/right
" set history=1000
" set backspace=indent,eol,start
" set linebreak
" set cmdheight=2               " command line two lines high
" set undolevels=1000           " 1000 undos
" set updatecount=100           " switch every 100 chars
" set complete=.,w,b,u,U,t,i,d  " do lots of scanning on tab completion
" set ttyfast                   " we have a fast terminal
" set noerrorbells              " No error bells please
" set ffs=unix,mac
" set relativenumber            "relative numbers
" set pastetoggle=<F2>          "Use F2 key to toggle set paste in insert mode

" set wildmode=longest:full
" set wildmenu                  " menu has tab completion
" let maplocalleader=','        " all my macros start with ,
" set laststatus=2
" set hls
" set number
" set ai
" set noswapfile
" set foldmethod=syntax

" hi clear SpellBad
" hi SpellBad cterm=underline

"  command! -nargs=1 -complete=file -bang -bar BDE call ReplaceBuffer('<bang>', <f-args>)
"
"   " spelling
"  if v:version >= 700
"     " Enable spell check for text files, tex files
"       autocmd BufNewFile,BufRead *.tex setlocal spell spelllang=en
"       autocmd BufNewFile,BufRead *.txt setlocal spell spelllang=en
" endif
" " mappings
" " toggle list mode
" nmap <LocalLeader>tl :set list!<cr>
" " toggle paste mode
" nmap <LocalLeader>pp :set paste!<cr>
" " let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
