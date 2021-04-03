" https://github.com/srushti/my.vim/blob/master/colors/camouflage.vim
" edited by me, charlie
set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "camo"

if version >= 700
  hi CursorLine     guibg=#100A09 cterm=none ctermbg=darkgray
  hi CursorColumn   guibg=#100A09 cterm=none ctermbg=darkgray
  hi MatchParen     guibg=#505050 gui=bold
  hi Pmenu          guifg=yellowgreen guibg=#323232
  hi PmenuSel       guifg=yellowgreen guibg=darkred
endif

" Background and menu colors
" cterm 229 = 'LightYellow'
" cterm 130 = 'DarkYellow' || 'Brown'
hi Cursor           guifg=NONE guibg=#FFFFFF gui=none
hi Normal           ctermfg=229 ctermbg=233 guifg=#D5E285 guibg=#070100 gui=none
hi NonText			ctermfg=DarkGray
hi LineNr           ctermfg=229 guifg=#7E8841 guibg=#201A19 gui=none
hi CursorLineNr		ctermfg=229 cterm=bold
hi StatusLine       ctermfg=229 guifg=#00D2D2 guibg=#38290B gui=italic
hi StatusLineNC     ctermfg=DarkGray guifg=#00D2D2 guibg=#2F2928 gui=none
hi VertSplit        ctermfg=DarkGray guifg=#00D2D2 guibg=#201A19 gui=none
hi Folded           ctermfg=LightCyan ctermbg=235 guifg=#00D2D2 guibg=#070100 gui=none
hi FoldColumn       ctermfg=LightCyan ctermbg=235 guifg=#00D2D2 guibg=#070100 gui=none
hi Title            cterm=bold ctermfg=130 guifg=#FFCA39 guibg=NONE gui=bold
hi Visual           ctermbg=229 ctermfg=0 guibg=#313131 gui=none
hi SpecialKey       ctermfg=Grey guifg=#4A4A59 gui=none
hi Search           ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE gui=underline
hi Underlined		ctermfg=LightCyan
hi Tabline			ctermfg=Black ctermbg=229 gui=underline
hi Pmenu			ctermbg=229
hi Todo				ctermbg=229
hi Error			ctermbg=NONE ctermfg=9
hi ErrorMsg			ctermbg=DarkYellow ctermfg=NONE

" Syntax highlighting
hi Comment			ctermfg=DarkGray guifg=darkgray gui=none
hi Constant			ctermfg=DarkGreen guifg=#478943 gui=none
hi Number			ctermfg=28 guifg=#64CC8A gui=none
hi Identifier		ctermfg=253 gui=none guifg=#96B58E
hi Statement		cterm=bold ctermfg=253 guifg=#815900 gui=none
hi Operator			ctermfg=LightCyan guifg=#00D2D2 gui=none
hi Function			ctermfg=LightCyan guifg=#408080 gui=none
hi Special			ctermfg=229 guifg=#F4E298 gui=none
hi PreProc			ctermfg=DarkYellow guifg=#C94000 gui=none
hi Keyword			ctermfg=DarkYellow gui=none guifg=#009664
hi String			ctermfg=121 gui=none guifg=#4BA5B3
hi Type				ctermfg=251 guifg=#A5A300 gui=none

" Special for Ruby
hi link rubyClass             Keyword
hi link rubyModule            Keyword
hi link rubyKeyword           Keyword
hi link rubyOperator          Operator
hi link rubyIdentifier        Identifier
hi link rubyInstanceVariable  Identifier
hi link rubyGlobalVariable    Identifier
hi link rubyClassVariable     Identifier
hi link rubyConstant          Type

" Special for XML
hi link xmlTag          Keyword
hi link xmlTagName      Conditional
hi link xmlEndTag       Keyword

" Special for HTML
hi link htmlTag         Keyword
hi link htmlTagName     Conditional
hi link htmlEndTag      Keyword

" Special for Diff
hi DiffAdd          guifg=NONE  guibg=#002200 ctermbg=darkgreen
hi DiffDelete       guifg=NONE  guibg=#220000 ctermbg=darkred
hi DiffChange       guifg=NONE  guibg=#222222 ctermbg=darkgray
hi DiffText         guifg=NONE  guibg=#31383F ctermbg=darkblue

" Special for JS
hi link jsObjectKey      Identifier

" For gitgutter
" hi clear SignColumn
