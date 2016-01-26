"PHP 自动补全函数名
au FileType php call AddPHPFuncList()
function AddPHPFuncList()
    if (g:islinux)
        set dictionary-=~/.vim/autocomple_file/php_funclist.txt dictionary+=~/.vim/autocomple_file/php_funclist.txt
    else
        set dictionary-=$VIM/php_funclist.txt dictionary+=$VIM/php_funclist.txt
    endif
    set complete-=k complete+=k
endfunction
