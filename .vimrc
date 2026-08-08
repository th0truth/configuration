" === Vim-Plug Plugin Manager ===

call plug#begin('~/.vim/plugged')

Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'mattn/vim-lsp-settings'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

" === Indentation settings ===

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set number ruler
set autoindent smartindent


" === Appearance settings ===

syntax enable
filetype plugin indent on

set background=dark
colorscheme habamax

set t_Co=256
set pumheight=10 " completion menu height limit
set completeopt=menuone,noinsert,noselect


" === Navigation settings ===

nnoremap <C-d> :NERDTreeToggle<CR>
nnoremap <C-f> :Files<CR>

" Disable search highlight with Esc
nnoremap <esc> :noh<CR>

" === LSP & Autocomplete settings ===

if executable('clangd')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'clangd',
        \ 'cmd': {server_info->['clangd', '--background-index', '--clang-tidy']},
        \ 'allowlist': ['c', 'cpp', 'objc', 'objcpp'],
        \ })
endif

" Tab / Shift-Tab completion navigation
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <CR>    pumvisible() ? asyncomplete#close_popup() : "\<CR>"

" LSP Shortcuts
function! s:on_lsp_buffer_enabled()
    setlocal omnifunc=lsp#complete
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> K <plug>(lsp-hover)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
endfunction

augroup lsp_install
    au!
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END
