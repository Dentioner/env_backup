" vundle 环境设置
filetype off
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
" set rtp+=~/.vim/bundle/Vundle.vim

" 自己电脑和loongson的不太一样
" Windows10:
" set rtp+=$HOME/.local/lib/python3.8/site-packages/powerline/bindings/vim/
" Loongson:
set rtp+=$HOME/.local/lib/python3.6/site-packages/powerline/bindings/vim/

set laststatus=2
set t_Co=256
" Windows
set guifont=YaHei_Consolas_Hybrid:h12
" Loongson

let mapleader=","


let &t_TI = ""
let &t_TE = ""



call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'vim-scripts/phd'

Plug 'Lokaltog/vim-powerline'
" Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'nathanaelkane/vim-indent-guides'
" Plug 'Yggdroot/indentLine'
Plug 'derekwyatt/vim-fswitch'
Plug 'kshenoy/vim-signature'
Plug 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
Plug 'majutsushi/tagbar'
Plug 'vim-scripts/indexer.tar.gz'
Plug 'vim-scripts/DfrankUtil'
Plug 'vim-scripts/vimprj'
Plug 'vim-scripts/ag.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdcommenter'
" Plug 'vim-scripts/DrawIt'
" Plug 'SirVer/ultisnips'

" Plug 'derekwyatt/vim-protodef'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'fholgado/minibufexpl.vim'
Plug 'gcmt/wildfire.vim'
Plug 'sjl/gundo.vim'
Plug 'Lokaltog/vim-easymotion'
" Plug 'suan/vim-instant-markdown'
Plug 'lilydjwg/fcitx.vim'

" Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Plug 'vim-scripts/ColorSchemePicker'

Plug 'srcery-colors/srcery-vim'

Plug 'luochen1990/rainbow'
Plug 'puremourning/vimspector'


call plug#end()


" 检测文件类型
filetype plugin indent on

" indentLine
" let g:indentLine_noConcealCursor = 1
" let g:indentLine_color_term = 0
" let g:indentLine_char = '|'

" indentGuide
let g:indent_guides_enable_on_vim_startup  =  1


" vim-colors-solarized 
syntax on
set t_Co=256  
let g:solarized_termcolors=256  
set background=light
"set background=dark
colorscheme solarized

" vim-cpp-enhanced-highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1
" let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_no_function_highlight = 1



" 显示行号
set number

" 自动对齐
" set smartindent

" 匹配模式
set showmatch

" 显示位置
set ruler

" 游标
set cursorline

" 缩进
set ts=4
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set backspace=2


" tagbar
nmap  <F8>：TagbarToggle <CR>
let g:tagbar_ctags_bin='/usr/bin/ctags'
let g:tagbar_width=30
autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()

" ctrlsf
" nnoremap <Leader>f :CtrlSF<Space>
" map <s-j> <c-j>p
" map <s-k> <c-k>p 
" let g:ctrlsf_default_view_mode = 'compact'
let g:ctrlsf_backend = 'ag'


" multiple cursors
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" nerdcommenter
" Create default mappings
let g:NERDCreateDefaultMappings = 1
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_c = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1


" nerdtree
autocmd vimenter * NERDTree
" 关闭NERDTree快捷键
map <leader>t :NERDTreeToggle<CR>
" 显示行号
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
" 是否显示隐藏文件
let NERDTreeShowHidden=1
" 设置宽度
let NERDTreeWinSize=31
" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=1
" 忽略一下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
" 显示书签列表
let NERDTreeShowBookmarks=1
    
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }


" gundo
nnoremap <leader>h :GundoToggle<CR>
if has('python3')
    let g:gundo_prefer_python3 = 1
endif


" easymotion
" let g:EasyMotion_do_mapping = 0 " Disable default mappings
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
" nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
" nmap s <Plug>(easymotion-overwin-f2)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
" map <Leader>j <Plug>(easymotion-j)
" map <Leader>k <Plug>(easymotion-k)


" vim instant markdown
" 确保文件类型检测打开
" filetype plugin on
" 关闭实时预览
" let g:instant_markdown_slow = 1
" 关闭打开文件自动预览
" let g:instant_markdown_autostart = 0
" 开放给网络上的其他人
" let g:instant_markdown_open_to_the_world = 1
" 允许脚本允许
" let g:instant_markdown_allow_unsafe_content = 1
" 阻止外部资源加载
" let g:instant_markdown_allow_external_content = 0




" @airline
" set t_Co=256      "在windows中用xshell连接打开vim可以显示色彩
" let g:airline#extensions#tabline#enabled = 1   " 是否打开tabline
"这个是安装字体后 必须设置此项 
" let g:airline_powerline_fonts = 1
" set laststatus=2  "永远显示状态栏
" let g:airline_theme='bubblegum' "选择主题
" let g:airline#extensions#tabline#enabled=1    "Smarter tab line: 显示窗口tab和buffer
"let g:airline#extensions#tabline#left_sep = ' '  "separater
"let g:airline#extensions#tabline#left_alt_sep = '|'  "separater
"let g:airline#extensions#tabline#formatter = 'default'  "formater
" let g:airline_left_sep = '▶'
" let g:airline_left_alt_sep = '❯'
" let g:airline_right_sep = '◀'
" let g:airline_right_alt_sep = '❮'

" srcery theme
colorscheme srcery
let g:srcery_italic = 1

" rainbow
let g:rainbow_active = 1
let g:rainbow_conf = {
	\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
	\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
	\	'operators': '_,_',
	\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
	\	'separately': {
	\		'*': {},
	\		'tex': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
	\		},
	\		'lisp': {
	\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
	\		},
	\		'vim': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
	\		},
	\		'html': {
	\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
	\		},
	\		'css': 0,
	\	}
	\}

" vimspector
let g:vimspector_enable_mappings = 'HUMAN'
