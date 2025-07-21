# install vim-enhanced

set tabstop=2 softtabstop=2 shiftwidth=2
set expandtab
set number ruler
set autoindent smartindent

syntax enable
filetype plugin indent on

set t_Co=256
colorscheme torte
syntax enable
filetype plugin indent on

set t_Co=256
colorscheme torte 

set pumheight=10             " so the complete menu doesn't get too big
set completeopt=menu,longest " menu, menuone, longest and preview
let g:SuperTabDefaultCompletionType='context'
let g:clang_complete_auto=0  " I can start the autocompletion myself, thanks..
let g:clang_snippets=1       " use a snippet engine for placeholders
let g:clang_snippets_engine='ultisnips'
let g:clang_auto_select=2    " automatically select and insert the first match


" ==== disable search highlight

map <esc> :noh <CR>

" ==== navigation

" Map 'q' to move to beginning of previous word
nmap b <Nop>
nmap q :normal! b<CR
