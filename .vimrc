set ts=4
set expandtab
set autoindent
set nowrap
set tabstop=4

set incsearch
set showmatch
set mouse=a
set ruler
set nu
set nobackup

"set scheme"
set t_Co=256
syntax enable
syntax on
"set background=dark
"let g:molokai_original = 1"
"let g:rehash256 = 1"
colorscheme molokai
"colorscheme solarized

call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'Valloric/YouCompleteMe'
Plug 'junegunn/fzf.vim'
call plug#end()

"config fzf"
set rtp+=~/.fzf

"condig the nerdtree"
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"config the YCM"
set completeopt=longest,menu
let g:ycm_server_python_interpreter='/home/ubuntu/anaconda3/bin/python3'
let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
let g:ycm_cache_omnifunc=0
"let g:syntastic_ignore_files=[".*\.py$"]"
let g:ycm_warning_symbol='>*'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_goto_buffer_command = 'horizontal-split'


nnoremap <leader>d :YcmCompleter GoToDefinitionElseDeclaration<CR>
