if exists('g:loaded_textobj_w_quotes')
  finish
endif

call textobj#user#plugin('wquotes', {
\      '-': {
\        '*sfile*': expand('<sfile>:p'),
\        'select-a': 'aq',  '*select-a-function*': 's:select_a',
\        'select-i': 'iq',  '*select-i-function*': 's:select_i'
\      }
\    })

" 'dasfadsads'
function! s:select_a()
    call search("['\"]", "W")
    let end_pos = getpos('.')
    call search("['\"]", "b")
    let start_pos = getpos('.')

    return ['v', start_pos, end_pos]
endfunction

function! s:select_i()
    call search("['\"]", "W")
    normal h
    let end_pos = getpos('.')
    call search("['\"]", "b")
    normal l
    let start_pos = getpos('.')

    return ['v', start_pos, end_pos]
endfunction

let g:loaded_textobj_w_quotes = 1
