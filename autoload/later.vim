function! later#add()
  let file = expand("%:.")
  let line = line(".")

  exec "silent ! echo " . file . ":" . line . ">> .later"
endfunction

function! later#load_quickfix()
  let efmtbak = &g:errorformat
  set errorformat=%f:%l
  cfile! .later
  set errorformat=efmtbak
endfunction

function! later#clear()
  call delete(".later")
endfunction
