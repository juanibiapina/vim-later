if exists("loaded_later") || &cp
    finish
endif
let loaded_later = 1

noremap <unique> <silent> <Plug>LaterAdd :call later#add()<CR>
noremap <unique> <silent> <Plug>LaterEdit :call later#edit()<CR>
noremap <unique> <silent> <Plug>LaterLoadQuickfix :call later#load_quickfix()<CR>
noremap <unique> <silent> <Plug>LaterClear :call later#clear()<CR>
