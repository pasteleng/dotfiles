-- Aliases
local opt = vim.opt  -- VIM options
local cmd = vim.cmd  -- VIM commands

-- General Config
opt.wildmode = {'list', 'longest'}  -- BASH-like tab completion
opt.number         = true   -- Show line numbers
opt.relativenumber = true   -- relative line numbers
opt.smartcase      = true   -- Case sensitivity
opt.wrap           = false  -- Do not auto-wrap lines
opt.termguicolors  = true   -- True color support 

-- Tabs & Indenting
opt.tabstop     = 4     -- Columns a <TAB> press counts as
opt.shiftwidth  = 4     -- Contextual indent width
opt.softtabstop = 4     -- Columns when <TAB> in insert mode
opt.expandtab   = true  -- Convert tabs to whitespace
opt.smartindent = true  -- Auto-indent when needed

-- Plugins
local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')
Plug('catppuccin/nvim', {as = 'catppuccin'})
Plug('neoclide/coc.nvim', {branch = 'release'})
vim.call('plug#end')

-- Colors & Visuals
cmd 'colorscheme catppuccin'
