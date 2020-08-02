syntax enable
set relativenumber
set hlsearch
set path+=**
set wildmenu
set number
set vb
set tabstop=4
set expandtab
set incsearch
set splitbelow splitright
let python_highlight_all=1
syntax on
set backspace=indent,eol,start
autocmd InsertEnter,InsertLeave * set cul!
"=============================================================================================================================
call plug#begin('~/.vim/plugged')

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plug 'vim-syntastic/syntastic'
Plug 'ycm-core/YouCompleteMe'
Plug 'nvie/vim-flake8'
Plug 'vim-python/python-syntax'
Plug 'dart-lang/dart-vim-plugin'
Plug 'kien/ctrlp.vim'
Plug 'thosakwe/vim-flutter'
Plug 'sainnhe/gruvbox-material'
Plug 'frazrepo/vim-rainbow'
Plug 'tell-k/vim-autopep8'
Plug 'tomasiser/vim-code-dark'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'skbolton/embark'
" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
" ...  " All of your Plugins must be added before the following line
call plug#end()            " required
"=============================================================================================================================


let g:lsc_auto_map = v:true
let g:rainbow_active = 1
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
let g:titlecase_map_keys = 0
let mapleader=" "

if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

autocmd FileType python map <buffer> <F10> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F10> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

inoremap jk <Esc>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

colorscheme embark 
hi Normal guibg=NONE ctermbg=NONE
set completeopt-=preview
