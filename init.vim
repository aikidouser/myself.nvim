set number
set shiftwidth=4
set encoding=utf-8
set updatetime=100
set ignorecase
set cursorline
set expandtab
set wildmenu

autocmd BufEnter * lcd %:p:h

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END


call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'airblade/vim-gitgutter', {'branch': 'master'}

call plug#end()


" Theme
colorscheme dracula

" File Tree
:nmap <space>e <Cmd>CocCommand explorer<CR>

