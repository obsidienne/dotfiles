" install vim-plug if needed.
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/.config/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdcommenter'
Plug 'Xuyuanp/nerdtree-git-plugin'

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
" NERDTree
let g:NERDTreeDirArrows = 1
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeShowHidden = 1

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif
