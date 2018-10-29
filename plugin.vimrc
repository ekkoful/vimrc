"====================VIM配置==================="
"====Author:ihuangch
"====Version:1.0.0
"====Update:2018-10-26
"=============================================="
"


"-------------------------------------------------"
"""--------------Vundle插件配置---------------------"
"-------------------------------------------------"
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'       			"文件树
Plugin 'jistr/vim-nerdtree-tabs'			"增强目录树
Plugin 'scrooloose/nerdcommenter'			"增加注释
Plugin 'vim-airline/vim-airline'            "airline
Plugin 'vim-airline/vim-airline-themes'   	"airline主题
Plugin 'jiangmiao/auto-pairs'               "括号自动补齐
Plugin 'kien/ctrlp.vim'                     "超级搜索文件
Plugin 'majutsushi/tagbar'                  "tagbar
Plugin 'Valloric/YouCompleteMe'				"补全插件
Plugin 'vim-syntastic/syntastic'			"代码检测
Plugin 'godlygeek/tabular'					"markdown
Plugin 'plasticboy/vim-markdown'			"markdown配置
"Plugin 'tpope/vim-fugitive'                 "Git集成
call vundle#end()
filetype plugin indent on

"========文件树配置==============================="
let NERDTreeShowBookmarks=0 					"一直显示书签 
let g:nerdtree_tabs_open_on_console_startup=0	"打开文件就显示目录树 
let NERDTreeShowLineNumbers=1					"显示行号
let NERDTreeAutoCenter=1						
let NERDTreeWinSize=25
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'     
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif "自动关闭目录树
let NERDTreeWinPos="left"						"设置NERDTree子窗口位置       
"设置打开目录树快捷键
map <leader>n :NERDTreeToggle<CR>				



"========airline配置============================="
"========help airline 查看更多配置==============="
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_theme='molokai'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'


"===========Auto-Pairs配置======================"


"========增加注释配置==========================="
let g:NERDSpaceDelims = 1				"在注释符号后添加空格

"==========Tagbar==============================="
let g:tagbar_ctags_bin='/usr/bin/ctags'
let g:tagbar_width = 25
let g:tagbar_autopreview = 0            "自动预览
let g:tagbar_sort = 0                   "关闭排序,即按标签本身在文件中的位置排序
let g:tagbar_iconchars = ['▸', '▾']
let g:tagbar_autofocus = 1
"+展开折叠内容
"-折叠标签内容
"*展开所有标签
"=折叠所有标签
"o在折叠与展开间切换，按o键，折叠标签，再按一次o，则展开标签，如此来回切换
map <leader>t :TagbarToggle<CR>				

"===========ctrlp配置==========================="

"==========Git 配置==========================="
"
"==========YouComplateMe配置===================="
"python解释器路径"
let g:ycm_path_to_python_interpreter='/usr/bin/python3'
let g:ycm_server_python_interpreter = '/usr/bin/python3'
""是否开启语义补全"
let g:ycm_seed_identifiers_with_syntax=1
"是否在注释中也开启补全"
let g:ycm_complete_in_comments=1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
""开始补全的字符数"
let g:ycm_min_num_of_chars_for_completion=2
"补全后自动关机预览窗口"
let g:ycm_autoclose_preview_window_after_completion=1
"" 禁止缓存匹配项,每次都重新生成匹配项"
let g:ycm_cache_omnifunc=0
"字符串中也开启补全"
let g:ycm_complete_in_strings = 1


"===========语法检测工具======================"
"设置pyflakes为默认的python语法检查工具
let g:syntastic_python_checkers = ['pyflakes']
"设置error和warning的标志
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='►'
""总是打开LocationList（相当于QuickFix）窗口，如果你发现syntastic因为与其他插件冲突而经常崩溃，将下面选项置0
let g:syntastic_always_populate_loc_list = 0
"自动打开Locaton
"List，默认值为2，表示发现错误时不自动打开，当修正以后没有再发现错误时自动关闭，置1表示自动打开自动关闭，0表示关闭自动打开和自动关闭，3表示自动打开，但不自动关闭
let g:syntastic_auto_loc_list = 1
"修改Locaton List窗口高度
let g:syntastic_loc_list_height = 5
"打开文件时自动进行检查
let g:syntastic_check_on_open = 1
"自动跳转到发现的第一个错误或警告处
let g:syntastic_auto_jump = 1
"进行实时检查，如果觉得卡顿，将下面的选项置为1
"let g:syntastic_check_on_wq = 0
"高亮错误
let g:syntastic_enable_highlighting=1

"============MarkDown配置====================="
let g:vim_markdown_folding_disabled = 1		"不自动折叠

"============MarkDown预览===================="
