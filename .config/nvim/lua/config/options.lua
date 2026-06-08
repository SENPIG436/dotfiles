local opt = vim.opt

--Line Numbers
opt.relativenumber = false
opt.number = true

--Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

--No Wrap
opt.wrap = false

--Cursorline
opt.cursorline = true

--Mouse Open
opt.mouse:append("a")

--new window right below
opt.splitright = true
opt.splitbelow = true

--Search
opt.ignorecase = true
opt.smartcase = true

--Appearance
opt.termguicolors = true
opt.signcolumn = "yes"

opt.clipboard = "unnamedplus"

vim.g.clipboard = {
  name = 'OSC 52',
  copy = {
    ['+'] = require('vim.ui.clipboard.osc52').copy('+'),
    ['*'] = require('vim.ui.clipboard.osc52').copy('*'),
  },
  paste = {
    ['+'] = require('vim.ui.clipboard.osc52').paste('+'),
    ['*'] = require('vim.ui.clipboard.osc52').paste('*'),
  },
}

