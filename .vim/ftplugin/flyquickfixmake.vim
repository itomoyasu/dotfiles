setlocal makeprg=$HOME/.vim/vimparse.pl\ -c\ %\ $*
setlocal errorformat=%f:%l:%m
setlocal shellpipe=2>&1\ >

if !exists("g:perl_flyquickfixmake")
  let g:perl_flyquickfixmake = 1
  au BufWritePost *.pm,*.pl,*.t silent make
endif
