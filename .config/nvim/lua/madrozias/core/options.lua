vim.cmd("let g:netrw_liststyle = 3")

-- shorthand for conciseness
local opt = vim.opt

-- fat cursor
opt.guicursor = ""

-- line numbers
opt.relativenumber = true -- enable relative line numbers
opt.number = true -- shows current line number
-- opt.statuscolumn = "%l   %r   " -- shows absolute numbers and relative numbers

opt.cursorline = true -- shows line beneath cursor

-- tabs & indention
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true -- make search case insensitive
opt.smartcase = true -- goes back to case sensitive if using mixed case in search

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") --use system clipboard as default register

-- split windows
opt.splitright = true
opt.splitbelow = true

-- scrolling
opt.scrolloff = 999
-- opt.signcolumn = "yes"
-- opt.isfname:append("@-@")
--

-- opt.iskeyword:append("-")
