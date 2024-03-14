"neovim和ideavim公共部分
"1.下载plug.vim
" 	- curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" 2.通过下面命令软连接给vim/ideavim的配置文件
" 	- ln -s ~/.vim/vimrc ~/.ideavimrc
" 	- ln -s ~/.vim/vimrc ~/.vimrc
" 3.:PlugInstall
" 4.安装ack。 brew install ack
" =================================================================
echo "Running IdeVim"

let mapleader=" "
set nocompatible				" 关闭对vi的兼容
set encoding=utf-8				" 编码设置
set showmode					" 底部显示模式
set relativenumber				" 设置绝对行号
set number				        " 设置行号
set hlsearch					" 高亮搜索
set scrolloff=5
set incsearch					" 搜索时，实时高亮
set ignorecase					" 忽略大小写
set smartcase					" 智能大小写
set history=2000					" 设置历史条数
set showcmd						" 显示当前输入的命令
set surround

set keep-english-in-normal-and-restore-in-insert		" 自动切输入法插件
set commentary											" 用gc注释代码
set easymotion											" 快速跳转到指定字符
set ReplaceWithRegister									" 用gr来粘贴字符串
set NERDTree											" 目录插件
set quickscope											" f/t跳转时高亮
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']		" 触发的按键
let g:qs_lazy_highlight = 1								" 没按f/t时不高亮

" normal下通过esc关闭高亮
nnoremap <silent> <Esc> :nohlsearch<cr>

Plug 'machakann/vim-highlightedyank'					" 复制时高亮
let g:highlightedyank_highlight_duration = "200"		" 设置高亮时间

set ideajoin											" 智能连接。如字符串、表达式从两行连接成1行时，智能重构
set ideastatusicon=gray                                 " ideavim图标设为灰色
set idearefactormode=keep                               " 所有mode下都可以使用idea的重构代码能力
map <leader>f <Plug>(easymotion-s)

map <C-t> :NERDTreeToggle<CR>
map <C-f> :NERDTreeFind<CR>

map <leader>d <Action>(Debug)
map <leader>r <Action>(Run)
"map <leader>c <Action>(Stop)
"map <leader>z <Action>(ToggleDistractionFreeMode)

map <leader>s <Action>(SelectInProjectView)
map <leader>a <Action>(Annotate)
"map <leader>h <Action>(Vcs.ShowTabbedFileHistory)
map <S-Space> <Action>(GotoNextError)

"map <leader>o <Action>(FileStructurePopup)

" 简单的方案解决*/#查询选择区域，对于特殊字符可能会有问题，如选中.会查询所有
vmap * y/<C-R>"<CR>
vmap # y?<C-R>"<CR>
