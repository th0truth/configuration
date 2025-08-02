# install vim-enhanced
# install vim-plugin

" === Configure vim plugins

call plug#begin()
  Plug 'tpope/vim-sensible'
  Plug 'scrooloose/nerdtree'
  Plug 'morhetz/gruvbox'
  Plug 'airblade/vim-gitgutter',
  Plug 'dense-analysis/ale', { 'for': ['python', 'c', 'cpp'] }
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } | Plug 'junegunn/fzf.vim'
call plug#end()

" === Indentation settings

set tabstop=2 softtabstop=2 shiftwidth=2
set expandtab
set number ruler
set autoindent smartindent

" === Apearance settings

syntax enable
filetype plugin indent on

set termguicolors

set background=dark
colorscheme gruvbox

let g:gruvbox_contrast_dark = 'hard'

set t_Co=256
set pumheight=10             " so the complete menu doesn't get too big
set completeopt=menu,longest " menu, menuone, longest and preview
let g:SuperTabDefaultCompletionType='context'
let g:clang_complete_auto=0  " I can start the autocompletion myself, thanks..
let g:clang_snippets=1       " use a snippet engine for placeholders
let g:clang_snippets_engine='ultisnips'
let g:clang_auto_select=2    " automatically select and insert the first match


" === Navigation settings

nnoremap <C-d> :NERDTreeToggle <CR>
nnoremap <C-f> :Files <CR>

" disable search highlight

map <esc> :noh <CR>

" map 'q' to move to beginning of previous word
nmap b <Nop>
nmap q :normal! b<CR
