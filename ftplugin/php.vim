" == "acomment" == {{{
"
"          File:  php.vim
"        Author:  kyo
"      Modifier:  kyo
"      Modified:  2016-06-28
"   Description:  PHP Manual for Vim
"
" --}}}
" Only do this when not done yet for this buffer
if exists("b:did_ftplugin_phpmanual")
    finish
endif
let b:did_ftplugin_phpmanual = 1

setlocal keywordprg=:help

set iskeyword=a-z,A-Z,48-57,:,$,-,>,_,\\
if (g:islinux)
    set dictionary-=~/.vim/autocomple_file/php.txt
    set dictionary+=~/.vim/autocomple_file/php.txt
else
    set dictionary-=$VIM/php.txt dictionary+=$VIM/php.txt
endif
set complete-=k complete+=k
