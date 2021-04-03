"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"        __                __ __         ___ ___ __
" .----.|  |--.---.-.----.|  |__|.-----.|   |   |__|.--------.
" |  __||     |  _  |   _||  |  ||  -__||   |   |  ||        |
" |____||__|__|___._|__|  |__|__||_____| \_____/|__||__|__|__|
"
" My vimrc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General settings
source $HOME/.config/nvim/genral-config/config.vim

" Key mappings
source $HOME/.config/nvim/keymappings/mappings.vim
source $HOME/.config/nvim/keymappings/vim-which-key-mappings.vim

" Vim-plug plugins
source $HOME/.config/nvim/vim-plug/plugins.vim

" Plugin settings
source $HOME/.config/nvim/plug-config/coc/coc.vim
source $HOME/.config/nvim/plug-config/coc/coc-extensions.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/vim-commentary.vim
source $HOME/.config/nvim/themes/airline.vim

"source $HOME/.config/nvim/plug-config/vimwiki.vim
"source $HOME/.config/nvim/themes/nord.vim
"source $HOME/.config/nvim/themes/onedark.vim

" lua colorizer
luafile $HOME/.config/nvim/lua/plug-colorizer.lua
lua require'colorizer'.setup()
