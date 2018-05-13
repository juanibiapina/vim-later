if exists("loaded_later") || &cp
    finish
endif
let loaded_later = 1

noremap <unique> <silent> <Plug>LaterAdd :call later#add()<CR>
noremap <unique> <silent> <Plug>LaterLoadQuickfix :call later#load_quickfix()<CR>
