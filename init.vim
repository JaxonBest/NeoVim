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

call plug#end()


" Set the basic colorscheme. 
packadd! dracula
syntax enable
colorscheme dracula

" Start NERDTree and leave the cursor in it.
autocmd VimEnter * NERDTree

" NERDTree Shortcuts.
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif "
