-- Retain originally copied text; instead of replacing when pasting a text.
vim.keymap.set("v", "p", '"_dp')

-- Clear highlights on search when pressing <Esc> in normal mode
-- See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
