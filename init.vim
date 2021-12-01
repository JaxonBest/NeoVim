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

" SHELL SCRIPT Itelli-sense.
Plug 'josa42/coc-sh'

call plug#end()

" Set Values
set number
set tabstop=4
set softtabstop=4


" Set the basic colorscheme. 
syntax enable
colorscheme dracula

autocmd VimEnter * NERDTree

" NERDTree Shortcuts.
nnoremap <leader>n :NERDTreeFocusToggle<CR>
nnoremap <C-n> :NERDTreeClose<CR>

" Compile/Run Code with <leader> + c
autocmd filetype rust nnoremap <leader>c :Cargo run<CR>
autocmd filetype python nnoremap <leader>c :!python3 "%"<CR>
autocmd filetype python nnoremap <leader>s :!echo "Override"
autocmd filetype javascript nnoremap <leader>c :!node "%"<CR>
autocmd filetype typescript nnoremap <leader>c: :!tsc<CR>

autocmd VimEnter * NERDTree
autocmd VimEnter * NERDTreeFocusToggle

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
