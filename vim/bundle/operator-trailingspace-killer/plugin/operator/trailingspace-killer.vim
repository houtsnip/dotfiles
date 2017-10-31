if exists('g:loaded_operator_trailingspace_killer')
    finish
endif

call operator#user#define('trailingspace-killer', 'operator#trailingspace_killer#do', 'let g:operator#trailingspace_killer#preserved_pos = getpos(''.'') <Bar> let g:operator#trailingspace_killer#preserved_screen_line =  line(''w0'')')

let g:loaded_operator_trailingspace_killer = 1
