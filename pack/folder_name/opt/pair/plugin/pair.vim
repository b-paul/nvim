" pair.vim

let g:pair#pair_chars = [
    \ '{}',
    \ '[]',
    \ '()',
    \ '""',
    \ "''",
    \ '``',
\]

for pair in g:pair#pair_chars
    " Double quotes are annoying and dont work normally so there is a special
    " case for them
    if pair == '""'
        inoremap <expr> <silent> " "\<C-R>=pair#parse_dupe_pair('\"\"')\<CR>"
    elseif pair[0] == pair[1]
        exec 'inoremap <expr> <silent> ' . pair[0] . ' "\<C-R>=pair#parse_dupe_pair(\"' . pair . '\")\<CR>"'
    else
        exec 'inoremap <expr> <silent> ' . pair[0] . ' "'. pair . '\<C-R>=pair#move_left()\<CR>"'
        exec 'inoremap <expr> <silent> ' . pair[1] . ' "\<C-R>=pair#close_pair(\"' . pair[1] . '\")\<CR>"'
    endif
endfor

inoremap <expr> <silent> <CR> "\<C-R>=pair#enter()\<CR>"
inoremap <expr> <silent> <Backspace> "\<C-R>=pair#delete()\<CR>"
