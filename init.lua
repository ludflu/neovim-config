-- Python mode settings
vim.g.pymode_lint = 1
vim.g.pymode_options_colorcolumn = 0
vim.g.pymode_lint_ignore = {"E501", "W404"}

-- Tab settings
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.list = true
vim.o.expandtab = true

-- Plugin manager (vim-plug)
local Plug = vim.fn['plug#']
vim.call('plug#begin')

-- Plugins
Plug('preservim/nerdtree')
Plug('vim-airline/vim-airline')
Plug('vim-airline/vim-airline-themes')
Plug('rust-lang/rust.vim')
Plug('vim-syntastic/syntastic')
Plug('hashivim/vim-terraform')
Plug('dense-analysis/ale')
Plug('tpope/vim-tbone')
Plug('Shougo/vimproc.vim', {['do'] = 'make'})
Plug('ctrlpvim/ctrlp.vim')
Plug('tpope/vim-obsession')
Plug('dhruvasagar/vim-prosession')
Plug('adrienverge/yamllint')
Plug('neovimhaskell/haskell-vim')
Plug('mechatroner/rainbow_csv')
Plug('tpope/vim-fugitive')
Plug('eagletmt/ghcmod-vim')
Plug('liuchengxu/graphviz.vim')
Plug('junegunn/fzf', {['do'] = function() return vim.fn['fzf#install']() end})
Plug('junegunn/fzf.vim')
Plug('neovim/nvim-lspconfig')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-vsnip')
Plug('hrsh7th/vim-vsnip')

vim.call('plug#end')

-- Plugin configurations
vim.g.ctrlp_by_filename = 1
vim.g.syntastic_python_checkers = {'mypy', 'flake8'}
vim.b.ale_linters = {'yamllint', 'tflint'}

-- Editor settings
vim.o.number = true
vim.o.visualbell = true
vim.o.hidden = true
vim.o.wrap = true
vim.o.textwidth = 80

-- Key mappings
vim.keymap.set('n', '<C-n>', ':NERDTreeToggle<CR>')
vim.keymap.set('n', '<M-f>', ':PymodeLintAuto<CR>')
vim.keymap.set('n', '<M-l>', ':PymodeLint<CR>')
vim.keymap.set('n', '<Leader>b', ':ls<CR>:b<Space>')
vim.keymap.set('n', '<Leader>n', ':set nonumber!<CR>')
vim.keymap.set('n', '<Leader>x', ':%s!$!,!g<cr>')
vim.keymap.set('n', '<Leader>c', ':s!,!,\\r!g<cr>')
vim.keymap.set('n', '<Leader>j', ':%!jq .<cr>')
vim.keymap.set('n', '<Leader>u', 'g~iw')
vim.keymap.set('n', '<Leader>q', ':%s!^\\(.*\\)$!"\\1"!g<cr>')
vim.keymap.set('n', '<Leader>f', ':Rg<CR>')

-- Macro mappings
vim.keymap.set('n', 'q', '<plug>(Mac_Play)', {nowait = true})
vim.keymap.set('n', 'gq', '<plug>(Mac_RecordNew)', {nowait = true})
vim.keymap.set('n', '<leader>mh', ':DisplayMacroHistory<cr>')
vim.keymap.set('n', '<leader>mn', '<plug>(Mac_NameCurrentMacro)')
vim.keymap.set('n', '<leader>me', '<plug>(Mac_SearchForNamedMacroAndPlay)')
vim.keymap.set('n', '[m', '<plug>(Mac_RotateBack)')
vim.keymap.set('n', ']m', '<plug>(Mac_RotateForward)')
vim.keymap.set('n', '<leader>ma', '<plug>(Mac_Append)')
vim.keymap.set('n', '<leader>mp', '<plug>(Mac_Prepend)')
vim.keymap.set('n', '<leader>mng', '<plug>(Mac_NameCurrentMacro)')
vim.keymap.set('n', '<leader>mnf', '<plug>(Mac_NameCurrentMacroForFileType)')
vim.keymap.set('n', '<leader>mns', '<plug>(Mac_NameCurrentMacroForCurrentSession)')
vim.keymap.set('n', '<leader>mo', '<plug>(Mac_SearchForNamedMacroAndOverwrite)')
vim.keymap.set('n', '<leader>mr', '<plug>(Mac_SearchForNamedMacroAndRename)')
vim.keymap.set('n', '<leader>md', '<plug>(Mac_SearchForNamedMacroAndDelete)')
vim.keymap.set('n', '<leader>ms', '<plug>(Mac_SearchForNamedMacroAndSelect)')

-- Airline configurations
vim.g['airline#extensions#tabline#enabled'] = 1
vim.g['airline#extensions#tabline#formatter'] = 'unique_tail'
vim.g['airline#extensions#wordcount#enabled'] = 1
vim.g['airline#extensions#wordcount#filetypes'] = '\\vnotes|help|markdown|rst|org|text|asciidoc|tex|mail'
vim.g['airline#extensions#tabline#buffer_idx_mode'] = 1

-- Airline tab selection
vim.keymap.set('n', '<leader>1', '<Plug>AirlineSelectTab1')
vim.keymap.set('n', '<leader>2', '<Plug>AirlineSelectTab2')
vim.keymap.set('n', '<leader>3', '<Plug>AirlineSelectTab3')
vim.keymap.set('n', '<leader>4', '<Plug>AirlineSelectTab4')
vim.keymap.set('n', '<leader>5', '<Plug>AirlineSelectTab5')
vim.keymap.set('n', '<leader>6', '<Plug>AirlineSelectTab6')
vim.keymap.set('n', '<leader>7', '<Plug>AirlineSelectTab7')
vim.keymap.set('n', '<leader>8', '<Plug>AirlineSelectTab8')
vim.keymap.set('n', '<leader>9', '<Plug>AirlineSelectTab9')
vim.keymap.set('n', '<leader>0', '<Plug>AirlineSelectTab0')
vim.keymap.set('n', '<leader>-', '<Plug>AirlineSelectPrevTab')
vim.keymap.set('n', '<leader>+', '<Plug>AirlineSelectNextTab')

-- Syntastic configurations
vim.g.syntastic_always_populate_loc_list = 1
vim.g.syntastic_auto_loc_list = 1
vim.g.syntastic_check_on_open = 0
vim.g.syntastic_check_on_wq = 1
vim.g.syntastic_yaml_checkers = {'yamllint'}
vim.g.syntastic_terraform_checkers = {'tflint'}
vim.g.syntastic_terraform_tffilter_plan = 1
vim.g.terraform_completion_keys = 1
vim.g.terraform_registry_module_completion = 0

-- Filetype and other settings
vim.cmd('filetype plugin indent on')
vim.g.NERDTreeShowHidden = 1

-- Status line
vim.o.statusline = vim.o.statusline .. '%#warningmsg#%{SyntasticStatuslineFlag()}%*'

-- Autocommands
vim.api.nvim_create_autocmd("FileType", {
    pattern = "yaml",
    command = "setlocal ts=2 sts=2 sw=2 expandtab"
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = "json",
    command = "syntax match Comment +\\/\\/.*$+"
})

-- ALE settings
vim.fn['ale#Set']('yaml_yamllint_options', '')

-- Completion mappings
vim.keymap.set('i', '<C-n>', '<Cmd>call pum#map#insert_relative(+1)<CR>')
vim.keymap.set('i', '<C-p>', '<Cmd>call pum#map#insert_relative(-1)<CR>')
vim.keymap.set('i', '<C-y>', '<Cmd>call pum#map#confirm()<CR>')
vim.keymap.set('i', '<C-e>', '<Cmd>call pum#map#cancel()<CR>')
vim.keymap.set('i', '<PageDown>', '<Cmd>call pum#map#insert_relative_page(+1)<CR>')
vim.keymap.set('i', '<PageUp>', '<Cmd>call pum#map#insert_relative_page(-1)<CR>')

-- Function for checking back space
local function check_back_space()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

-- nvim-cmp setup
local cmp = require('cmp')

cmp.setup({
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
            vim.snippet.expand(args.body)
        end,
    },
    window = {
        -- completion = cmp.config.window.bordered(),
        -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<Tab>'] = cmp.mapping.confirm({ select = true }),
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'vsnip' },
    }, {
        { name = 'buffer' },
    })
})

-- Command line completion
cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' }
    }
})

cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        { name = 'cmdline' }
    }),
    matching = { disallow_symbol_nonprefix_matching = false }
})

-- LSP setup
local capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.lsp.enable('pyright')
vim.lsp.enable('ruff')
