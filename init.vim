"let g:python_host_prog = '/user/bin/python'
"let g:python3_host_prog = '/usr/bin/python'
let g:python_host_prog = '/home/jsnavely/project/pandas-venv/bin/python'
let g:python3_host_prog = '/home/jsnavely/project/pandas-venv/bin/python'
let g:deoplete#enable_at_startup = 1
set ts=4 sw=4
set list

"Plug 'roxma/nvim-completion-manager'
call plug#begin()
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'preservim/nerdtree'
Plug 'hashivim/vim-terraform'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tarekbecker/vim-yaml-formatter'
call plug#end()

set number
set visualbell

" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
map <C-n> :NERDTreeToggle<CR>
filetype plugin on


