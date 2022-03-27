:set number
:set shiftwidth=4

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
:  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
:augroup END

call plug#begin()

Plug 'projekt0n/github-nvim-theme'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()

" Theme

" colorscheme github_dark_default
colorscheme dracula

" File Tree

:nmap <space>e <Cmd>CocCommand explorer<CR>

