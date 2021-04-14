set number
syntax on
set t_Co=256

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

colorscheme onehalfdark
let g:lightline = { 'colorscheme': 'onehalfdark'}
set tabstop=2
set shiftwidth=2
set autoindent
set expandtab
set softtabstop=2

call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'SirVer/ultisnips'
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim', {'commit': 'ce448a6~'}
Plug 'honza/vim-snippets'
" TYPESCRIPT SUPPORT
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
" Flutter packages
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
call plug#end()
filetype plugin indent on

let g:coc_global_extensions = ['coc-java', 'coc-flutter', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']

map <C-n> :NERDTreeToggle<CR>
vmap ++ <plug>:NERDCommenterToggle

let g:lsc_auto_map = v:true
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''

let g:NERDTreeGitStatusWithFlags = 1
"let g:WebDevIconsUnicodeDecorateFolderNodes = 1
"let g:NERDTreeGitStatusNodeColorization = 1
"let g:NERDTreeColorMapCustom = {
    "\ "Staged"    : "#0ee375",  
    "\ "Modified"  : "#d9bf91",  
    "\ "Renamed"   : "#51C9FC",  
    "\ "Untracked" : "#FCE77C",  
    "\ "Unmerged"  : "#FC51E6",  
    "\ "Dirty"     : "#FFBD61",  
    "\ "Clean"     : "#87939A",   
    "\ "Ignored"   : "#808080"   
    "\ }

let g:lsc_auto_map = {'defaults': v:false, 'FindImplementations': ''}

let g:NERDTreeIgnore = ['^node_modules$']

" loading the plugin
let g:webdevicons_enable = 1
" adding the flags to NERDTree
let g:webdevicons_enable_nerdtree = 1


map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>

" EMMET CONF
let g:user_emmet_leader_key=','
