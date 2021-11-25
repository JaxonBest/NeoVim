" Leader Key
let mapleader = " "

call plug#begin('$HOME/AppData/Local/nvim/autoload/plugged')

" File navigation panel.
Plug 'https://github.com/preservim/nerdtree'

" The colorscheme used called 'dracula'.
Plug 'https://github.com/dracula/vim.git'

" For automatically opening and closing tags.
Plug 'https://github.com/townk/vim-autoclose'

" NERDTree Tab Support.
Plug 'jistr/vim-nerdtree-tabs'

" Makes Commenting a lot easier.
Plug 'scrooloose/nerdcommenter'

" Working with Git.
Plug 'tpope/vim-fugitive'

" Rust Language Pack.
Plug 'rust-lang/rust.vim'

" Prettier for File Formatting
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'branch': 'release/0.x'
  \ }

" JSON Intelli-sense.
Plug 'neoclide/coc-json'

" CSS Intelli-sense.
Plug 'neoclide/coc-css'

" GIT Intelli-sense.
Plug 'neoclide/coc-git'

call plug#end()

" Set Values
set number
set tabstop=4
set softtabstop=4


" Set the basic colorscheme. 
packadd! dracula
syntax enable
colorscheme dracula

autocmd VimEnter * NERDTree

" NERDTree Shortcuts.
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>

autocmd VimEnter * NERDTree
autocmd VimEnter * NERDTreeFocusToggle

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
