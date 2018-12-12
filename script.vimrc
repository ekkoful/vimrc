" 加入头部
"autocmd创建新文件自动调用setfilehead()函数
"autocmd BufNewFile *.c,*.h exec ":call Setfilehead()"
func Setfilehead()
call append(0, '/***********************************************')
call append(1, '#')
call append(2, '#      Filename: '.expand("%"))
call append(3, '#')
call append(4, '#        Author: Clough -clough@gmail.com')
call append(5, '#   Description: ---')
call append(6, '#        Create:'.strftime("%Y-%m-%d %H:%M:%S"))
call append(7, '# Last Modified:'.strftime("%Y-%m-%d %H:%M:%S"))
call append(8, '***********************************************/')
call append(9, '')
endfunc

autocmd BufNewFile *.md, exec ":call SetMdfilehead()"
func SetMdfilehead()
call append(0, '___')
call append(1, '- FileName: '.expand("%"))
call append(2, '- Author: ihuangch -huangch96@qq.com')
call append(3, '- Description: ---')
call append(4, '___')
endfunc
