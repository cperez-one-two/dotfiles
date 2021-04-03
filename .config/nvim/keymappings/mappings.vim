""" CUSTOM MAPPINGS

  let mapleader = " "
  let maplocalleader = ","
  " GENERAL
  " Y does y$ instead of yy, like how D does d$
  map Y             y$

  " Pasting from X clipboard
  " map <leader>p     "+p
  " map <leader>P     "+P

  " Move selected line / block of text in visual mode
  " shift + k to move up
  " shift + j to move down
  xnoremap K :move '<-2<CR>gv-gv
  xnoremap J :move '>+1<CR>gv-gv

  " Better tabbing
  vnoremap < <gv
  vnoremap > >gv

  nnoremap <M-j>    :resize -5<CR>
  nnoremap <M-k>    :resize +5<CR>
  nnoremap <M-h>    :vertical resize -5<CR>
  nnoremap <M-l>    :vertical resize +5<CR>

  " TAB in normal mode will move to text buffer
  nnoremap <TAB>    :bnext<CR>

  " SHIFT-TAB will go back
  noremap <S-TAB>  :bprevious<CR>
