" pair.vim

function! pair#is_pair(pair)
    let line = getline('.')
    let col  = col('.')

    if a:pair == ""
        for pair in g:pair#pair_chars
            if strcharpart(line, col-2, 1) == pair[0]
                return strcharpart(line, col-1, 1) == pair[1]
            endif
        endfor
    elseif strcharpart(line, col-2, 1) == a:pair[0]
        return strcharpart(line, col-1, 1) == a:pair[1]
    endif

    return 0
endfunction

function! pair#is_expanded_pair()
    let line1 = getline(line('.')-1)
    let line2 = getline(line('.')+1)
    let col = col('.')

    for pair in g:pair#pair_chars
        if matchstr(line1, pair[0] . '$') == pair[0] &&
                    \col == 1
            return matchstr(line2, '^' . pair[1]) == pair[1]
        endif
    endfor

    return 0
endfunction

function! pair#move_left()
    return "\<C-g>U\<Left>"
endfunction

function! pair#move_right()
    return "\<C-g>U\<Right>"
endfunction

function! pair#parse_dupe_pair(pair)
    let line = getline('.')
    let col  = col('.')

    if strcharpart(line, col-1, 1) == a:pair[1]
        return pair#move_right()
    endif

    return a:pair . pair#move_left()
endfunction

function! pair#close_pair(c)
    let line = getline('.')
    let col  = col('.')

    if strcharpart(line, col-1, 1) == a:c
        return pair#move_right()
    endif
    return a:c
endfunction

function! pair#enter()
    if pair#is_pair("") == 1
        return "\<CR>\<Esc>O"
    endif

    return "\<CR>"
endfunction

function! pair#delete()
    if pair#is_pair("") == 1 ||
    \  pair#is_expanded_pair() == 1
        return "\<Backspace>\<Delete>"
    endif

    return "\<Backspace>"
endfunction
