call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer - DEPRECATED: use coc-explorer
    "Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Vimwiki
    "Plug 'vimwiki/vimwiki'
    " CoC Intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Snippets
    Plug 'honza/vim-snippets'
    " fzf
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    " vim-rooter
    Plug 'airblade/vim-rooter'
    " Status and tab bar
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Color previews on RBG values
    Plug 'norcalli/nvim-colorizer.lua'

    " Theme
    " Plug 'joshdick/onedark.vim'
    " Plug 'arcticicestudio/nord-vim'
    Plug 'morhetz/gruvbox'
    " Whichkey - Port of emacs-which-key
    Plug 'liuchengxu/vim-which-key'
    " Commenting
    Plug 'tpope/vim-commentary'

call plug#end()
