" use :options to list every existing options
" then /myoption to find the option explanation

" Generally configure tabs to 2, and convert to spaces
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent        

set hidden

set noerrorbells

set nowrap

" Highlight character that marks where line is too long
set textwidth=80
set colorcolumn=+1

set scrolloff=8

" Backups
set nobackup
set nowritebackup
set noswapfile

set cursorline " turn on row highlighting where cursor is

" Set gutters
set number " for number
set signcolumn=yes " for linting

set list
set lcs=tab:»_,trail:·
highlight ExtraWhitespace ctermfg=green guifg=orange 
match ExtraWhitespace /\s\+$/

