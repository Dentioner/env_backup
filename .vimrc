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


let &t_TI = ""
let &t_TE = ""

call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'vim-scripts/phd'
" Plug 'Lokaltog/vim-powerline'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'derekwyatt/vim-fswitch'
Plug 'kshenoy/vim-signature'
Plug 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
Plug 'majutsushi/tagbar'
Plug 'vim-scripts/indexer.tar.gz'
Plug 'vim-scripts/DfrankUtil'
Plug 'vim-scripts/vimprj'
Plug 'dyng/ctrlsf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-scripts/DrawIt'
" Plug 'SirVer/ultisnips'

Plug 'derekwyatt/vim-protodef'
Plug 'scrooloose/nerdtree'
Plug 'fholgado/minibufexpl.vim'
Plug 'gcmt/wildfire.vim'
Plug 'sjl/gundo.vim'
Plug 'Lokaltog/vim-easymotion'
Plug 'suan/vim-instant-markdown'
Plug 'lilydjwg/fcitx.vim'

" Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}



call plug#end()


filetype plugin indent on
