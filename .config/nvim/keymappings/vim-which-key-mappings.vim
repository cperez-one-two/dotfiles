nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :WhichKey ','<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}

" Hide Status line while which_key is open
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

" Single Mappings
" TODO: install vim-commenter plugin
let g:which_key_map['/'] = [ ':call Comment()'         , 'comment' ]
let g:which_key_map['.'] = [ ':e $MYVIMRC'             , 'open init.vim' ]
let g:which_key_map['e'] = [ ':CocCommand explorer'    , 'coc-explorer']
let g:which_key_map['j'] = [ '<C-w>j'                  , 'focus-w-down']
let g:which_key_map['J'] = [ '<C-w>J'                  , 'move-w-down']
let g:which_key_map['k'] = [ '<C-w>k'                  , 'focus-w-up']
let g:which_key_map['K'] = [ '<C-w>K'                  , 'move-w-up']
let g:which_key_map['h'] = [ '<C-w>h'                  , 'focus-w-left']
let g:which_key_map['H'] = [ '<C-w>H'                  , 'move-w-left']
let g:which_key_map['l'] = [ '<C-w>l'                  , 'focus-w-right']
let g:which_key_map['L'] = [ '<C-w>L'                  , 'move-w-right']
let g:which_key_map['v'] = [ '<C-w>v'                  , 'split-v']

" Group Mappings
" TODO: import into which-key menu
" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
"  xmap <leader>a  <Plug>(coc-codeaction-selected)
"  nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
"  nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
"  nmap <leader>qf  <Plug>(coc-fix-current)
" Symbol renaming.
"  nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
"  xmap <leader>f  <Plug>(coc-format-selected)
"  nmap <leader>f  <Plug>(coc-format-selected)
" Mappings for CoCList
" Show all diagnostics.
"  nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
"  nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
"  nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
"  nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
"  nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
"  nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
"  nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
"  nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR> To install a LSP, run :CocInstall [extension]

" a - quick actions
let g:which_key_map.a = {
      \ 'name' : '+quick-actions' ,
      \ 'p' : [':PlugInstall'        , 'PlugInstall'],
      \ 's' : [':source $MYVIMRC'    , 'source init.vim']
      \ }

" l - Language server (CoC)
let g:which_key_map.c = {
      \ 'name' : '+CoC' ,
      \ 'a' : ['<Plug>(coc-codeaction-selected)'        , 'apply codeaction'],
      \ 'c' : [':CocConfig'                             , 'open config'],
      \ 'e' : [':CocList extensions'                    , 'extensions'],
      \ 'p' : {
            \ 'name' : '+plugins' ,
            \ 'h' : [':CocCommand tailwindCSS.headwind.sortTailwindClasses'   , 'headwind-local'],
            \ 'p' : [':CocCommand prettier.formatFile'                        , 'prettier']
            \ },
      \ 'rn' : ['<Plug>(coc-rename)'                    , 'coc-rename']
      \ }

" f - fuzzy
let g:which_key_map.f = {
      \ 'name' : '+fuzzyfinder' ,
      \ 'f' : [':Files'            , 'files'],
      \ 'b' : [':Buffers'          , 'buffers'],
      \ 'g' : [':Rg'               , 'ripgrep'],
      \ 't' : [':Tags'             , 'tags'],
      \ 'm' : [':Marks'            , 'marks']
      \ }

autocmd VimEnter * call which_key#register('<Space>', "g:which_key_map")
