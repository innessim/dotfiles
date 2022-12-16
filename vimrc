"  Setup Vundle plugin manager
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'luochen1990/rainbow'
Plugin 'itchyny/lightline.vim'
Plugin 'preservim/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'mileszs/ack.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'jiangmiao/auto-pairs'
Plugin 'The-NERD-Commenter'

call vundle#end()
filetype plugin indent on
filetype plugin on

"Get the 2-space YAML as the default when hit carriage return after the colon
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Use 'ag' (i.e., the silver searcher) if available on system
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Colors
highlight Normal ctermfg=White
colorscheme badwolf 
let g:badwolf_termcolors=256 
set background=dark 

" Settings
set laststatus=2 " Always show status line
set showmode " Always show mode
set autoindent " Continue indentation to next line
set number " Line numbers
set showcmd " Show command in last line
set wildmenu " Comman-line completion  
set lazyredraw " Do not redraw while executing macros
set showmatch " Show matching bracket
set incsearch " Show incremental patterns matches
set hlsearch  " Highlight all previous search matches
set ts=4 sts=4 sw=4 expandtab " Tab settings
set wrap " Softwrap text in buffer
set cursorline " Highlight line with cursor
set noswapfile " Don't need swapfiles
set backspace=indent,eol,start 

let mapleader="," " Change leader key

syntax enable     

" Key mappings
nnoremap <leader><space> :nohlsearch<CR>
nnoremap j gj
nnoremap k gk
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>
nnoremap gV `[v`]
nnoremap <leader>u :GundoToggle<CR>
nnoremap <leader>nt :NERDTreeToggle<CR>

" inoremap jk <esc>
let g:NERDSpaceDelims = 1
let g:NERDCustomDelimiters = { 'snakemake': { 'left': '#','right': '' } }

au BufNewFile,BufRead Snakefile set syntax=snakemake 
au BufNewFile,BufRead *.smk set syntax=snakemake
au BufNewFile,BufRead Snakefile set filetype=snakemake
au BufNewFile,BufRead *.smk set filetype=snakemake

au BufNewFile,BufRead Singularity* set syntax=singularity
au BufNewFile,BufRead Singularity* set filetype=singularity
"au BufNewFile,BufRead *.py
    "\ syntax on |
    "\ set softtabstop=4 |
    "\ set shiftwidth=4 |
    "\ set tabstop=4 |
    "\ set softtabstop=4 |
    "\ set shiftwidth=4 |
    "\ set textwidth=79 |
    "\ set expandtab |
    "\ set autoindent |
    "\ set fileformat=unix




