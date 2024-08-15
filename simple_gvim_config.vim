set nocompatible              " 关闭与 Vi 的兼容模式
set encoding=utf-8            " 设置编码为 UTF-8
set fileencoding=utf-8        " 文件编码设置为 UTF-8
set number                    " 显示行号
" set relativenumber            " 显示相对行号
set cursorline                " 高亮当前行
set showcmd                   " 显示命令
set wildmenu                  " 命令行补全增强
set ignorecase                " 搜索时忽略大小写
set smartcase                 " 当搜索中包含大写字母时，自动切换为大小写敏感
set incsearch                 " 逐字符搜索
set hlsearch                  " 高亮搜索结果
set tabstop=2                 " 设置Tab宽度为4个空格
set shiftwidth=2              " 设置自动缩进宽度为4个空格
set expandtab                 " 将Tab转换为空格
set autoindent                " 自动对齐新行
set smartindent               " 根据语法自动缩进
set clipboard=unnamedplus     " 使用系统剪贴板
set background=dark           " 设置背景色为深色（可选：light）
syntax on                     " 开启语法高亮
filetype plugin indent on     " 启用文件类型插件和自动缩进

" 主题设置
colorscheme desert            " 设置配色方案（可以根据自己的喜好修改）

" 状态栏设置
set laststatus=2              " 始终显示状态栏
set ruler                     " 在状态栏显示光标位置

" 防止乱码
set termencoding=utf-8
set guifont=Consolas:h11      " 设置GUI的字体和大小（可以修改为自己喜欢的字体）

nnoremap <F5> :source $MYVIMRC<CR>

" 隐藏菜单栏
set guioptions-=m

" 隐藏工具栏
set guioptions-=T

" 设置窗口大小
set lines=40          " 设置窗口高度为 40 行
set columns=120       " 设置窗口宽度为 120 列

set guioptions-=r   " 移除右侧的滚动条
set guioptions-=L   " 移除左侧的滚动条
