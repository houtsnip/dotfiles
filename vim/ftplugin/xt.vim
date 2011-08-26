" Go to next / previous function call at any level
nnoremap <Space> /^.\{30} *->/e-1<CR>
nnoremap <BS> ?^.\{30} *->?e-1<CR>
" Go to next / previous sibling
nnoremap <C-J> 31<Bar>"lyt-/^.\{30}<C-R>l->/e-1<CR>n
nnoremap <C-K> 31<Bar>"lyt-?^.\{30}<C-R>l->?e-1<CR>
" Go to next child
nnoremap c 31<Bar>"lyt-/^.\{30}<C-R>l  ->/e-1<CR>
" Go to parent
nnoremap p 33<Bar>"lyt-?^.\{30}<C-R>l->?e-1<CR>
" Go to return value
nnoremap J 31<Bar>"lyt-/^ \{30}<C-R>l>=>/e-2<CR>
" Go to function call
nnoremap K 31<Bar>"lyt>?^.\{30}<C-R>l->?e-1<CR>

