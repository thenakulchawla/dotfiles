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
Plug 'Valloric/YouCompleteMe' "You complete me

" PlugInstall and PlugUpdate will clone fzf in ~/.fzf and run the install script
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

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
    set noignorecase
    set smartcase   " Search case-sensitively if there's at least one capitalized letter
    set nohlsearch  " Do not highlight searches

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

" Buffer
 command! -nargs=1 -complete=file -bang -bar BDE call ReplaceBuffer('<bang>', <f-args>)
