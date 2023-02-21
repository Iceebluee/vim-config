"  < 编码配置 >
set fileencoding=utf-8                                " 设置当前文件编码，可以更改，如：gbk（同cp936）
set fileencodings=ucs-bom,utf-8,gbk,cp936,latin-1     " 设置支持打开的文件的编码
set termencoding=utf-8
"  < 设置字体 >
set guifont=Consolas:h12
"  < 编写文件时的配置 >
filetype on                                           " 启用文件类型侦测
filetype plugin on                                    " 针对不同的文件类型加载对应的插件
filetype plugin indent on                             " 启用缩进
autocmd! bufwritepost _vimrc source %                 " vimrc文件修改之后自动加载。 windows。
autocmd! bufwritepost .vimrc source %                 " vimrc文件修改之后自动加载。 linux。
set history=400                                       " history存储长度。
set smartindent                                       " 启用智能对齐方式
set expandtab                                         " 将Tab键转换为空格
set tabstop=4                                          " 设置Tab键的宽度，可以更改，如：宽度为2
set shiftwidth=4                                       " 换行时自动缩进宽度，可更改（宽度同tabstop）
set smarttab                                            " 指定按一次backspace就删除shiftwidth宽度
set backspace=indent,eol,start               " 不设定在插入状态无法用退格键和 Delete 键删除回车符
set showmatch                                        " 高亮现实匹配的括号 
set autoindent                                         " 自动对齐
set autochdir                                           " 自动切换当前目录为当前文件所在的目录
set backupcopy=yes                               " 设置备份时的行为为覆盖
set nowrapscan                                       " 禁止在搜索到文件两端时重新搜索
set noerrorbells                                       " 关闭错误信息响铃
set novisualbell                                       " 关闭使用可视响铃代替呼叫
set hidden                                  " 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
let javascript_enable_domhtmlcss=1       " 打开javascript对dom、html和css的支持
set autoread                                            " 当文件在外部被修改，自动更新该文件
set ignorecase                                            " 搜索模式里忽略大小写
set hlsearch                                           " 搜索时高亮显示被找到的文本
set incsearch                                          " 输入搜索内容时就显示搜索结果
set writebackup                                        " 保存文件前建立备份，保存成功后删除该备份
set nobackup                                           " 设置无备份文件
set noswapfile                                         " 设置无临时文件
set nowb
"set vb t_vb=                                           " 关闭提示音
"  < 界面配置 >
syntax enable   
syntax on                                                 " 自动语法高亮
":colo molokai                                           " 配色方案
set number                                              " 显示行号
set laststatus=2                                       " 启用状态栏信息
set statusline=\ %F%m%r%h%w%=\ [%{&ff}]\ [%Y]\ [%{&fileencoding}]\ [%04l,%04v][%p%%]\ [LEN=%L]
set cmdheight=1                                       " 设置命令行的高度，默认为1
set cursorline                                            " 突出显示当前行
set nowrap                                                " 设置不自动换行
autocmd BufNewFile,BufRead *.txt set filetype=txt
autocmd BufNewFile,BufRead *.doc set filetype=doc
autocmd FileType txt    set wrap
autocmd FileType doc   set wrap
set shortmess=atI                                     " 去掉欢迎界面
set helplang=cn                                        " 中文帮助
set ruler                                                    " 打开状态栏标尺
set magic                                                  " 设置魔术
set completeopt=longest,menu                " 关掉智能补全时的预览窗口
