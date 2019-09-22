let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)
set modelines=0
"不与vi命令兼容
set nocompatible

"设置更好的删除
set backspace=2

syntax on "语法高亮
"用浅色高亮当前行
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul
"打开英语拼写检查
set spell spelllang=en_us
set smartindent "智能对齐

set autoindent "自动对齐
"保留撤销历史
set undofile
set confirm "在处理未保存或只读文件的时候，弹出确认框
"显示行尾多余符号
set listchars=tab:»■,trail:■
set list
set tabstop=4 "tab键的宽度
set softtabstop=4
set shiftwidth=4 "统一缩进为4
set expandtab "不要用空格替代制表符

set number "显示行号
set history=50  "历史纪录数
set hlsearch
set incsearch "搜素高亮,搜索逐渐高亮

set gdefault "行内替换
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936,utf-16,big5,euc-jp,latin1 "编码设置

"colorscheme molokai

"set guifont=Menlo:h16:cANSI "设置字体
"set langmenu=zn_CN.UTF-8
"set helplang=cn  "语言设置

set ruler "在编辑过程中，在右下角显示光标位置的状态行

set laststatus=1  "总是显示状态行

set showcmd "在状态行显示目前所执行的命令，未完成的指令片段也会显示出来

set scrolloff=3 "光标移动到buffer的顶部和底部时保持3行的距离
set showmatch "高亮显示对应的括号
set matchtime=5 "对应括号高亮时间(单位是十分之一秒)

set autowrite "在切换buffer时自动保存当前文件

set wildmenu  "增强模式中的命令行自动完成操作
set wildmode=longest:list,full
set linespace=2 "字符间插入的像素行数目
set whichwrap=b,s,<,>,[,] "开启normal 或visual模式下的backspace键空格键，左右方向键,insert或replace模式下的左方向键，右方向键的跳行功能

filetype plugin indent on "分为三部分命令:file on,file plugin on,file indent on 分别是自动识别文件类型, 用用文件类型脚本,使用缩进定义文件

set foldenable  "允许折叠
set cursorline "突出显示当前行
set magic  "设置魔术？神马东东
set ignorecase "搜索忽略大小写
filetype on "打开文件类型检测功能
set background=dark
set t_Co=256   "256色
"set mouse=a  "允许鼠标
