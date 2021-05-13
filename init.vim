syntax on
set number
set t_Co=256
set encoding=utf-8
set tabstop=2
set shiftwidth=2
set autoindent
set expandtab
set softtabstop=2
set clipboard=unnamedplus
set showcmd
set noshowmode
set rnu



call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim', {'commit': 'ce448a6~'}
Plug 'honza/vim-snippets'
Plug 'reewr/vim-monokai-phoenix'
" TYPESCRIPT SUPPORT
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
" Flutter packages
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
" Vim Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()
filetype plugin indent on

colorscheme monokai-phoenix

let g:coc_global_extensions = ['coc-java', 'coc-flutter', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']

map <C-n> :NERDTreeToggle<CR>
vmap ++ <plug>:NERDCommenterToggle

let g:lsc_auto_map = v:true
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let g:NERDTreeGitStatusWithFlags = 1
let g:lsc_auto_map = {'defaults': v:false, 'FindImplementations': ''}
let g:NERDTreeIgnore = ['^node_modules$']

" loading the plugin
let g:webdevicons_enable = 1

map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>

" EMMET CONF
let g:user_emmet_leader_key=','
