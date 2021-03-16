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
Plug 'scrooloose/nerdtree',            { 'on':  ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'tpope/vim-projectionist'
Plug 'andyl/vim-projectionist-elixir', { 'for': 'elixir' }
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()


let mapleader=","

