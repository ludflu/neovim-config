let g:python_host_prog = '/Users/jsnavely/project/pandas-env/bin/python'
let g:python3_host_prog = '/Users/jsnavely/project/pandas-env/bin/python'
let g:deoplete#enable_at_startup = 1
let g:pymode_lint = 1
let g:pymode_options_colorcolumn = 0
set ts=4 sw=4
set list
set expandtab

let g:pymode_lint_ignore = ["E501", "W404"]

call plug#begin()
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'preservim/nerdtree'
Plug 'hashivim/vim-terraform'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ap/vim-buftabline'
Plug 'tpope/vim-obsession'
Plug 'dhruvasagar/vim-prosession'
Plug 'adrienverge/yamllint'
Plug 'vim-syntastic/syntastic'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'neovimhaskell/haskell-vim'
Plug 'mechatroner/rainbow_csv'
Plug 'joukevandermaas/vim-ember-hbs'
Plug 'tpope/vim-fugitive'
call plug#end()

set number
set visualbell

" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
map <C-n> :NERDTreeToggle<CR>
filetype plugin on
let NERDTreeShowHidden=1

nnoremap <M-f> :PymodeLintAuto<CR>
nnoremap <M-l> :PymodeLint<CR>

set hidden
nnoremap <M-n> :bnext<CR>
nnoremap <M-p> :bprev<CR>

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_yaml_checkers = ['yamllint']
