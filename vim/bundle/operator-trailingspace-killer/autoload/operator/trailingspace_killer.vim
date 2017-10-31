let g:operator#trailingspace_killer#filetypes_to_confirm = get(g:, 'operator#trailingspace_killer#filetypes_to_confirm', ['markdown'])

function! operator#trailingspace_killer#do(_)
    try
        if s:is_empty_region(getpos("'["), getpos("']"))
            call s:echo_error('Empty region: '.string([getpos("'["), getpos("']")]))
            return
        endif

        if index(g:operator#trailingspace_killer#filetypes_to_confirm, &filetype) >= 0 && ! s:confirm()
            return
        endif

        let search_save = @/
        silent '[,']substitute/\s\+$//e
        let @/ = search_save
    finally
        silent! call setpos('.', g:operator#trailingspace_killer#preserved_pos)
        call s:restore_screen_pos()
    endtry
endfunction

function! s:echo_error(msg)
    echohl ErrorMsg
    execute 'echomsg' string(a:msg)
    echohl None
endfunction

function! s:restore_screen_pos()
    let line_diff = line('w0') - g:operator#trailingspace_killer#preserved_screen_line
    if line_diff > 0
        execute 'silent normal!' line_diff."\<C-y>"
    elseif line_diff < 0
        execute 'silent normal!' (-line_diff)."\<C-e>"
    endif
endfunction

function! s:confirm()
    let answer = input("filetype is ".&filetype.". kill trailing spaces? ")
    return answer =~? '^y\%[es]$'
endfunction

function! s:is_empty_region(begin, end)
    return a:begin[1] > a:end[1] || (a:begin[1] == a:end[1] && a:end[2] < a:begin[2])
endfunction
