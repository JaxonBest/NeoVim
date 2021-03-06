" Leader Key
let mapleader = " "

call plug#begin('$HOME/AppData/Local/nvim/autoload/plugged')

" Telescope Fuzzy Finder
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" File navigation panel.
"Plug 'https://github.com/preservim/nerdtree'

" The colorscheme used called 'dracula'.
Plug 'https://github.com/dracula/vim.git'

" For automatically opening and closing tags.
Plug 'https://github.com/townk/vim-autoclose'

" NERDTree Tab Support.
"Plug 'jistr/vim-nerdtree-tabs'

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

" Startup User Interaface.
Plug 'mhinz/vim-startify'

" Align text with words.
Plug 'junegunn/vim-easy-align'

" Lua Syntax 
Plug 'tbastos/vim-lua'

" COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" Set Values
set number
set tabstop=4
set softtabstop=4


" Set the basic colorscheme. 
syntax enable
colorscheme dracula

"autocmd VimEnter * NERDTree

" NERDTree Shortcuts.
nnoremap <leader>n :NERDTreeFocusToggle<CR>
nnoremap <C-n> :NERDTreeClose<CR>

" Compile/Run Code with <leader> + c
autocmd filetype rust nnoremap <leader>c :Cargo run<CR>
autocmd filetype python nnoremap <leader>c :!python3 "%"<CR>
autocmd filetype python nnoremap <leader>s :!echo "Override"
autocmd filetype javascript nnoremap <leader>c :!node "%"<CR>
autocmd filetype typescript nnoremap <leader>c: :!tsc<CR>

"autocmd VimEnter * NERDTree
"autocmd VimEnter * NERDTreeFocusToggle

" Open the existing NERDTree on each new tab.
"autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif


let g:startify_custom_header = 'startify#pad(startify#fortune#cowsay())'

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)"

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr
