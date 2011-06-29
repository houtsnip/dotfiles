" Place this file in $VIMHOME/ftplugin directory so that
" vim uses this file for help file mappings only
nnoremap <buffer> <BS> <C-T>
nnoremap <buffer> <CR> <C-]>
" Go to next option link using o, previous option link using O
nnoremap <buffer> o /'[a-z]\{2,\}'<CR>
nnoremap <buffer> O ?'[a-z]\{2,\}'<CR>
" Go to next subject using s, previous subject using S
nnoremap <buffer> s /\|\S\+\|<CR>
nnoremap <buffer> S ?\|\S\+\|<CR>
