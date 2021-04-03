""" GENERAL SETTINGS

  set nocompatible
  filetype plugin on
  syntax on
  set number                    " relativenumber for relative line number
  set ruler                     " show cursor position at all times
  set nohls
  set pumheight=10              " Pop-up menu height
  set iskeyword+=-              " Remove dash as word delimiter
  set scrolloff=1               " sets z<enter> to 1 line below top
  set wrap                      " long lines to linewrap
  set textwidth=0               " Do not insert newlines on wrap
  set wrapmargin=0
  set clipboard+=unnamedplus    " Use X11 clipboard for yanking and putting
  set mouse=a                   " Mouse enabled
  set conceallevel=0            " Backticks visible in markdown
  set timeoutlen=500           " Timeout on leader key. Also necessary for vim-whick-key menu
  set splitbelow splitright    " Changes default window split behavior
  "set path+=**                 " Allows for searching into subdirectories
  set foldmethod=indent        " Enable code folding
  set foldlevel=99
  set ignorecase
  set smartcase
  set ai                       " auto indent
  set si                       " smart indent
  set showtabline=2            " Tab bar at the top
  set termguicolors            " Allows for lua plugin to work
  set formatoptions-=cro       " stop newline commenting
  set signcolumn=yes           " show the signcolumn
  set guifont=FiraCode\ Nerd\ Font
  set cursorline

  " Tab settings
  "set expandtab
  "set shiftwidth=2
  set tabstop=3
  set smarttab

  "Automatically delete trailing whitespace and newlines upon save
  autocmd BufWritePre * %s/\s\+$//e
  autocmd BufWritePre * %s/\n\+\%$//e
  " Newline commenting disable
  autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
  " fix commenting on json files
  autocmd FileType json syntax match Comment +\/\/.\+$+
  " Theme
  autocmd vimenter * ++nested colorscheme gruvbox
