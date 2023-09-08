autocmd BufRead,BufNewFile *.mojo,*.🔥 call s:set_mojo_filetype()

function! s:set_mojo_filetype() abort
    if &filetype !=# 'mojo'
        set filetype=mojo
    endif
endfunction
