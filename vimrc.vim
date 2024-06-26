let g:python_host_prog = '/Users/jsnavely/project/nvim-python/venv/bin/python'
let g:python3_host_prog = '/Users/jsnavely/project/nvim-python/venv/bin/python'
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
Plug 'rust-lang/rust.vim'
Plug 'vim-syntastic/syntastic'
Plug 'hashivim/vim-terraform'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-tbone'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-obsession'
Plug 'dhruvasagar/vim-prosession'
Plug 'adrienverge/yamllint'
Plug 'neovimhaskell/haskell-vim'
Plug 'mechatroner/rainbow_csv'
Plug 'tpope/vim-fugitive'
Plug 'eagletmt/ghcmod-vim'
Plug 'liuchengxu/graphviz.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neovim/nvim-lspconfig'

call plug#end()


let g:ctrlp_by_filename = 1
let g:syntastic_python_checkers = ['mypy', 'flake8']

"let b:ale_linters = ['flake8', 'pylint', 'tflint']
"let b:ale_fixers = ['autopep8', 'yapf']
let b:ale_linters = ['yamllint', 'tflint']

"let g:ale_linters = {
"\   'terraform': ['tflint'],
"\}

set number
set visualbell

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


let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" Enable wordcount
let g:airline#extensions#wordcount#enabled = 1
" Add notes to filetypes
let g:airline#extensions#wordcount#filetypes = '\vnotes|help|markdown|rst|org|text|asciidoc|tex|mail'



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

nnoremap <leader>b :ls<CR>:b<Space>
nnoremap <leader>n :set nonumber!<CR>

"add a comma to every line
nnoremap <leader>x :%s!$!,!g<cr>

"break a comma delimited list into separate lines
nnoremap <leader>c :s!,!,\r!g<cr>

"reformat file as json
nnoremap <leader>j :%!jq .<cr>

"change case
:nnoremap <leader>u g~iw
:set wrap
:set textwidth=80

"quote every line
:nnoremap <leader>q :%s!^\(.*\)$!"\1"!g<cr>


let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>0 <Plug>AirlineSelectTab0
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab


"Rust
"let g:rustfmt_autosave = 1
"let g:rustfmt_emit_files = 1
"let g:rustfmt_fail_silently = 0
"
"if has('nvim')
"  inoremap <silent><expr> <c-space> coc#refresh()
"else
"  inoremap <silent><expr> <c-@> coc#refresh()
"endif
"
"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)

" Insert mode completion
nnoremap <silent> <Leader>f :Rg<CR>

inoremap <silent><expr> <TAB>
		\ pumvisible() ? "\<C-n>" :
		\ <SID>check_back_space() ? "\<TAB>" :
		\ deoplete#mappings#manual_complete()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction


