-- Display line number; and make them relative to the current cursor line.
vim.opt.number = true
vim.opt.relativenumber = true

-- Highlight the line that cursor is on.
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 15

-- Tab width & Number of spaces to use for each step of (auto)indent.
-- Used for 'cindent', >>, <<, etc.
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- Enable undo even after closing and reopening the file.
vim.opt.undofile = true

-- Time of inactivity (in ms) after which neovim writes to swapfile.
vim.opt.updatetime = 250

-- TODO: Disable status line; since, we'll use external package.
vim.opt.showmode = true

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)

-- Preview substitutions live, for ex: search & replace.
vim.opt.inccommand = "split"

-- Indent horizontal blocks of text
vim.opt.breakindent = true

-- Useful for resizing neovim windows
vim.opt.mouse = "a"

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Column before line numbers, to display symbols
-- 'yes' - show always
vim.opt.signcolumn = "yes"

vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
