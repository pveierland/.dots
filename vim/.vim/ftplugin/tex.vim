setlocal errorformat=%f:%l:\ %m,%f:%l-%\\d%\\+:\ %m
if filereadable('Makefile')
    setlocal makeprg=make
else
    exec "setlocal makeprg=make\\ --always-make\\ -f\\ ~/.vim/ftplugin/latex.mk\\ " . substitute(bufname("%"),"tex$","pdf", "")
endif

let b:did_indent = 1

" Enable spell checking
set spell spelllang=en_us

