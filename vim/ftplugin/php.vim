" Section jumping
"let s:function = '\(abstract\s\+\|final\s\+\|private\s\+\|protected\s\+\|public\s\+\|static\s\+\)*function'
"let s:class = '\(abstract\s\+\|final\s\+\)*class'
"let s:interface = 'interface'
"let s:section = '\(.*\%#\)\@!\_^\s*\zs\('.s:function.'\|'.s:class.'\|'.s:interface.'\)'
"exe 'nnoremap <buffer> <silent> [[ :set nohlsearch<CR>?' . escape(s:section, '|') . '?<CR>:set hlsearch<CR>'
"exe 'nnoremap <buffer> <silent> ]] :set nohlsearch<CR>/' . escape(s:section, '|') . '/<CR>:set hlsearch<CR>'
"exe 'onoremap <buffer> <silent> [[ :set nohlsearch<CR>?' . escape(s:section, '|') . '?<CR>:set hlsearch<CR>'
"exe 'onoremap <buffer> <silent> ]] :set nohlsearch<CR>/' . escape(s:section, '|') . '/<CR>:set hlsearch<CR>'

" Set 'formatoptions' to break comment lines but not other lines,
" and insert the comment leader when hitting <CR> or using "o".
setlocal fo-=t fo+=croql

" Set 'comments' to format dashed lists in comments.
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://,:#

" PHP manual pages
set keywordprg=pman
