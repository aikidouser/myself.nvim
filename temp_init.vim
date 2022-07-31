set autoread
set cmdheight=1
set cursorcolumn
set cursorline
set encoding=utf-8
set expandtab
set ignorecase
set linebreak
set number
set shiftwidth=2
set updatetime=200
set wildmenu

" Status
" Init to empty
set statusline=
" %F: Full path of the file
" %M: If the file was modified and unsave, there will be a "+"
" %Y: File type
" %R: There will be the flag if the file is ReadOnly
set statusline+=\ %F\ %M\ %Y\ %R
" Seperate left and right side
set statusline+=%=
" %p%%: percentage
set statusline+=\ row:\ %l\ col:\ %c\ \ %p%%


" AutoCmd
autocmd BufEnter * silent! lcd %:p:h

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | silent! set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * silent! if &nu          | silent! set nornu | endif
augroup END


call plug#begin()

" if has('win32')
"     Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': 'markdown'} 
" elseif has('unix')
"     Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" endif
" Plug 'airblade/vim-gitgutter', {'branch': 'master'}
" Plug 'dracula/vim', { 'as': 'dracula' }
" Plug 'luochen1990/rainbow'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'preservim/nerdtree'
" Plug 'chrisbra/csv.vim'
" 
call plug#end()


" Theme
" colorscheme dracula

" Rainbow
let g:rainbow_active = 1

" Load Setting
" runtime coc-setting.vim

" Key Mappings

" Normal

" Tab
nmap <silent> gl :tabl<cr>
nmap <silent> gh :tabr<cr>
nmap <silent> gn :tabnew<cr>
nmap <silent> gc :tabclose<cr>

" Terminal
tnoremap <Esc> <C-\><C-n>

