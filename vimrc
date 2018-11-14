"====================VIM配置==================="
"====Author:ihuangch
"====Version:1.00
"====Update:2018-10-26
"=============================================="


"===============系统基本配置无须插件==========="
"----------------------------------------------"
set nu                  "显示行号
set showtabline=0       "隐藏顶部标签栏
set nocompatible        "去了vi的一致性
set syntax=on           "语法高亮
set tabstop=4           "设置缩进
set shiftwidth=4        "缩进
set cursorline          "突出显示当前行
set showmatch           "显示匹配的括号
set autoindent          "自动缩进
set hlsearch            "高亮显示搜索
set incsearch           "实时搜索
set ignorecase          "忽略大小写
set sm                  "设置括号匹配
set ruler               "状态栏
set smartindent         "缩进相关 
set encoding=utf-8      "设置编码
set wildmenu			"vim命令智能补全
set laststatus=2		"总是显示状态栏
"set nowrap				"设置不要折行
set t_Co=256			"win下shell显示颜色
"set cursorcolumn       "突出显示当前列


"=======设置配色方案========================="
"=======使用xshell时不用设置================="
"=======如果你xshell有自己的配色方案========="
"set background=dark		"设置背景色
"colorscheme molokai


filetype on				"文件检测
filetype plugin on		"文件插件检测智能加载插件
filetype indent on		"文件检测智能缩进

"==========设置快捷键映射===================="
"==========无插件映射========================"
let mapleader=";"
"------设置切换分割布局快捷键------"
"nnore:表示快捷键不递归
nnoremap <leader>j <C-W>j             ";-j 切换到↓方
nnoremap <leader>h <C-W>h             ";-h 切换到←方
nnoremap <leader>k <C-W>k             ";-k 切换到↑方
nnoremap <leader>l <C-W>l             ";-l 切换到→方

nnoremap <leader>bn :bn<CR>			  ";-bn 切换到下一个buffer
nnoremap <leader>bp :bp<CR>			  ";-bn 切换到上一个buffer

source ~/.vim/plugin.vimrc
source ~/.vim/script.vimrc
