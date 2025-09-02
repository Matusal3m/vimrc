set tabstop=4
set shiftwidth=4
set expandtab
set number
set relativenumber

call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'

" Typescript autocomplete
Plug 'runoshun/tscompletejob'
Plug 'prabirshrestha/asyncomplete-tscompletejob.vim'

call plug#end()

" Tab completion
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"
" Typescript autocomplete
 call asyncomplete#register_source(asyncomplete#sources#tscompletejob#get_source_options({
     \ 'name': 'tscompletejob',
     \ 'allowlist': ['typescript'],
     \ 'completor': function('asyncomplete#sources#tscompletejob#completor'),
     \ }))

let mapleader = " "

" Fzf maps
nmap <Leader>ff :Files<CR>
nmap <Leader>rg :Rg<CR>
nmap <Leader>fc :Changes<CR>
nmap <Leader>fw :Windows<CR>
nmap <Leader>fh :History/<CR>
nmap <Leader>bu :Buffers<CR>
nmap <Leader>nm :Maps<CR>
nmap <Leader>co :Commands<CR>
nmap <Leader>gf :GFiles<CR>
nmap <Leader>gc :Commits<CR>
