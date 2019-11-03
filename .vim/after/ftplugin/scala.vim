nnoremap <silent> <F9> :SortScalaImports<CR>
nnoremap <silent> <F8> :call ScalaFormat()<CR>

function! ScalaFormat()
    ! scalafmt %
    redraw!
endfunction

setlocal tabstop=2
setlocal shiftwidth=2
setlocal expandtab
setlocal autoindent
setlocal smarttab

setlocal formatoptions-=tc
setlocal commentstring=//\ %s
