let g:python_host_prog = '/usr/local/bin/python3'
let g:python3_host_prog = '/usr/local/bin/python3'
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
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'vim-syntastic/syntastic'
Plug 'hashivim/vim-terraform'
Plug 'juliosueiras/vim-terraform-completion'
Plug 'dense-analysis/ale'

Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-obsession'
Plug 'dhruvasagar/vim-prosession'
Plug 'adrienverge/yamllint'
Plug 'integralist/vim-mypy'
Plug 'neovimhaskell/haskell-vim'
Plug 'mechatroner/rainbow_csv'
Plug 'tpope/vim-fugitive'
Plug 'eagletmt/ghcmod-vim'
Plug 'liuchengxu/graphviz.vim'
Plug 'svermeulen/vim-macrobatics'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'scalameta/coc-metals', {'do': 'yarn install --frozen-lockfile'}
"Plug 'scalameta/nvim-metals'
call plug#end()


let g:syntastic_python_checkers = ['mypy', 'flake8']

"let b:ale_linters = ['flake8', 'pylint', 'tflint']
"let b:ale_fixers = ['autopep8', 'yapf']
let b:ale_linters = ['yamllint', 'tflint']

"let g:ale_linters = {
"\   'terraform': ['tflint'],
"\}

set number
set visualbell

let mapleader = ","
" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
map <C-n> :NERDTreeToggle<CR>
filetype plugin indent on
let NERDTreeShowHidden=1

nnoremap <M-f> :PymodeLintAuto<CR>
nnoremap <M-l> :PymodeLint<CR>

set hidden
"nnoremap <C-Right> :bnext<CR>
"nnoremap <C-Left> :bprev<CR>

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

call ale#Set('yaml_yamllint_options', '')

autocmd FileType json syntax match Comment +\/\/.\+$+

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

" Use <nowait> to override the default bindings which wait for another key press
nmap <nowait> q <plug>(Mac_Play)
nmap <nowait> gq <plug>(Mac_RecordNew)
nmap <leader>mh :DisplayMacroHistory<cr>
nmap <leader>mn <plug>(Mac_NameCurrentMacro)
nmap <leader>me <plug>(Mac_SearchForNamedMacroAndPlay)


" Use <nowait> to override the default bindings which wait for another key press
nmap <nowait> q <plug>(Mac_Play)
nmap <nowait> gq <plug>(Mac_RecordNew)

nmap <leader>mh :DisplayMacroHistory<cr>

nmap [m <plug>(Mac_RotateBack)
nmap ]m <plug>(Mac_RotateForward)

nmap <leader>ma <plug>(Mac_Append)
nmap <leader>mp <plug>(Mac_Prepend)

nmap <leader>mng <plug>(Mac_NameCurrentMacro)
nmap <leader>mnf <plug>(Mac_NameCurrentMacroForFileType)
nmap <leader>mns <plug>(Mac_NameCurrentMacroForCurrentSession)

nmap <leader>mo <plug>(Mac_SearchForNamedMacroAndOverwrite)
nmap <leader>mr <plug>(Mac_SearchForNamedMacroAndRename)
nmap <leader>md <plug>(Mac_SearchForNamedMacroAndDelete)
nmap <leader>me <plug>(Mac_SearchForNamedMacroAndPlay)
nmap <leader>ms <plug>(Mac_SearchForNamedMacroAndSelect)


" Help Vim recognize *.sbt and *.sc as Scala files
"au BufRead,BufNewFile *.sbt,*.sc set filetype=scala

" Used to expand decorations in worksheets
"nmap <Leader>ws <Plug>(coc-metals-expand-decoration)

" Toggle panel with Tree Views
"nnoremap <silent> <space>t :<C-u>CocCommand metals.tvp<CR>
" Toggle Tree View 'metalsPackages'
"nnoremap <silent> <space>tp :<C-u>CocCommand metals.tvp metalsPackages<CR>
" Toggle Tree View 'metalsCompile'
"nnoremap <silent> <space>tc :<C-u>CocCommand metals.tvp metalsCompile<CR>
" Toggle Tree View 'metalsBuild'
"nnoremap <silent> <space>tb :<C-u>CocCommand metals.tvp metalsBuild<CR>
" Reveal current current class (trait or object) in Tree View 'metalsPackages'
"nnoremap <silent> <space>tf :<C-u>CocCommand metals.revealInTreeView metalsPackages<CR>

"augroup lsp
"    au!
"    au FileType scala,sbt lua require("metals").initialize_or_attach({})
"augroup end

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_yaml_checkers = ['yamllint']
let g:syntastic_terraform_checkers = ['tflint']

" (Optional) Enable terraform plan to be include in filter
let g:syntastic_terraform_tffilter_plan = 1
" (Optional) Default: 0, enable(1)/disable(0) plugin's keymapping
let g:terraform_completion_keys = 1

" (Optional) Default: 1, enable(1)/disable(0) terraform module registry completion
let g:terraform_registry_module_completion = 0

let g:deoplete#omni_patterns = {}
let g:deoplete#omni_patterns.terraform = '[^ *\t"{=$]\w*'
let g:deoplete#enable_at_startup = 1
call deoplete#initialize()

