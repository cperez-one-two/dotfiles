" Wrapper function to allow block commenting and single line
function! Comment()
  if (mode() == "n" )
    execute "Commentary"
  else
    execute "'<,'>Commentary"
  endif
endfunction
