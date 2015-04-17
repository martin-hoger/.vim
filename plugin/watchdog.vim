function! s:BufReadIndex() abort
    setlocal noro ma nomodeline
    execute "r !COLUMNS=1000 drush ws --count=100"
    normal gg
    setlocal ro noma nomod noswapfile
    if &bufhidden ==# ''
        setlocal bufhidden=delete
    endif
    nnoremap <buffer> <silent> <cr> :<C-U>execute "!COLUMNS=1000 drush ws " substitute(getline('.'), '^\s*\([0-9]\+\)\s\+.*$', '\1', '')<CR>
endfunction

command! WatchdogStatus :call s:BufReadIndex()
