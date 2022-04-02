set number
set shiftwidth=4
set encoding=utf-8
set updatetime=200
set cmdheight=1
set ignorecase
set cursorline
set expandtab
set wildmenu
set autoread

autocmd BufEnter * lcd %:p:h

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END


call plug#begin()

" For Windows
" Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': 'markdown'} 
" For Ubuntu
" Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'airblade/vim-gitgutter', {'branch': 'master'}
Plug 'luochen1990/rainbow'

call plug#end()


" Theme
colorscheme dracula

" Rainbow
let g:rainbow_active = 1

" File Tree
nmap <space>f <Cmd>CocCommand explorer<CR>

" Load Setting
runtime coc-setting.vim

