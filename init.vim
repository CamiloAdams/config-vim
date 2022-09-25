set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber

source ~/AppData/Local/nvim/plug-config/coc.vim

call plug#begin('~/AppData/Local/nvim/plugged')
" below are some vim plugins for demonstration purpose.
" add the plugin you want to use here.

" syntax
Plug 'sheerun/vim-polyglot'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'norcalli/nvim-colorizer.lua'

" typing
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'chun-yang/auto-pairs'

" Tree
Plug 'scrooloose/nerdtree'

" Telescope
Plug 'nvim-lua/plenary.nvim'        " Dependencies
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

" status bar
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'

" Themes
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'kyazdani42/nvim-web-devicons'

" GitHub
Plug 'tpope/vim-fugitive'

" Discord
Plug 'andweeb/presence.nvim'

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'christoomey/vim-tmux-navigator'

" Intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" Settings
let NERDTreeQuitOnOpen=1
"
" Theme
set background=dark
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

" Lightline
let g:lightline = {
      \ 'active': {
      \   'left': [['mode', 'paste'], [], ['relativepath', 'modified']],
      \   'right': [['filetype', 'percent', 'lineinfo'], ['gitbranch']]
      \ },
      \ 'inactive': {
      \   'left': [['inactive'], ['relativepath']],
      \   'right': [['bufnum']]
      \ },
      \ 'component': {
      \   'bufnum': '%n',
      \   'inactive': 'inactive'
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \ },
      \ 'colorscheme': 'gruvbox',
      \ 'subseparator': {
      \   'left': '',
      \   'right': ''
      \ }
      \}

" key map
let mapleader=" "

nmap <Leader>s <Plug>(easymotion-s2)      "easy motion
nmap <Leader>nt :NERDTreeFind<CR>         " File explorer
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ 'coc-flutter',
  \ 'coc-snippets',
  \ 'coc-yaml',
  \ 'coc-tslint-plugin',
  \ 'coc-tsserver',
  \ 'coc-emmet',
  \ 'coc-css',
  \ 'coc-html',
  \ 'coc-json',
  \ 'coc-pyright',
  \ ]

