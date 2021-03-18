" install vim-plug if needed.
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/.config/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-projectionist'
Plug 'andyl/vim-projectionist-elixir', { 'for': 'elixir' }
Plug 'vim-airline/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'

call plug#end()


let mapleader=","


"""""""""""""""""""""""""""""""""""""""""""
" Sets
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
set relativenumber

set list
set lcs=tab:»_,trail:·
highlight ExtraWhitespace ctermfg=green guifg=orange 
match ExtraWhitespace /\s\+$/



"""""""""""""""""""""""""""""""""""""""""""
" Colors
set termguicolors
syntax on
set background=dark
colorscheme gruvbox


"""""""""""""""""""""""""""""""""""""""""""
" CTRLP
" 'a' - the directory of the current file, unless it is a subdirectory of the cwd
" 'r' - the nearest ancestor of the current file that contains one of these directories or files: .git .hg .svn .bzr _darcs
let g:ctrlp_working_path_mode = 'ra'


"""""""""""""""""""""""""""""""""""""""""""
" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1


"""""""""""""""""""""""""""""""""""""""""""
" ALE
let g:ale_lint_on_text_changed = 'never' " only lint on save
let g:ale_lint_on_insert_leave = 0 " again, only lint on save

let g:ale_linters = {}
let g:ale_linters.elixir = ['elixir-ls', 'credo']

let g:ale_elixir_elixir_ls_release = expand("/Users/claudio/Development/elixir-ls/rel")
let g:ale_elixir_elixir_ls_config = {'elixirLS': {'dialyzerEnabled': v:false}}

let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace']}
let g:ale_fixers.elixir = ['mix_format']

set completeopt=menu,menuone,preview,noselect,noinsert
let g:ale_completion_enabled = 1



"""""""""""""""""""""""""""""""""""""""""""
" NERDTree
let g:NERDTreeDirArrows = 1
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeShowHidden = 1

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

