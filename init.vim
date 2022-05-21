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
set linebreak

autocmd BufEnter * silent! lcd %:p:h

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | silent! set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * silent! if &nu                  | silent! set nornu | endif
augroup END


call plug#begin()

if has('win32')
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': 'markdown'} 
elseif has('unix')
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
endif
Plug 'airblade/vim-gitgutter', {'branch': 'master'}
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'luochen1990/rainbow'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'

call plug#end()


" Theme
colorscheme dracula

" Rainbow
let g:rainbow_active = 1

" File Tree
nmap <space>f <Cmd>NERDTree<CR>

" Load Setting
runtime coc-setting.vim

" Key Binding
tnoremap <Esc> <C-\><C-n>

