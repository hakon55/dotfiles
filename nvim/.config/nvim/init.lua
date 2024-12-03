vim.g.mapleader = " "


-- Basic Settings
vim.opt.relativenumber = true   -- Relative line numbers
vim.opt.number = true           -- Absolute line number for the current line
vim.opt.cursorline = true       -- Highlight the current line
vim.opt.mouse = "a"             -- Enable mouse support
vim.opt.syntax = "on"           -- Enable syntax highlighting
vim.opt.tabstop = 4             -- Number of spaces per tab
vim.opt.shiftwidth = 4          -- Spaces per indent
vim.opt.expandtab = true        -- Convert tabs to spaces
vim.opt.termguicolors = true    -- Sikkert lurt
vim.opt.scrolloff = 8           -- Så man ser litt under scrolling

-- Use system clipboard for yanking only
vim.keymap.set("n", "y", '"+y', { noremap = true, silent = true })    -- Yank to clipboard in normal mode
vim.keymap.set("n", "yy", '"+yy', { noremap = true, silent = true })  -- Yank the whole line to clipboard
vim.keymap.set("x", "y", '"+y', { noremap = true, silent = true })    -- Yank to clipboard in visual mode
vim.keymap.set("n", "U", "<C-r>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>e', ':Vexplore<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>s", ":w<CR>", { silent = true })              -- Save file

-- Move line up
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { silent = true })  -- Alt+k in Normal mode
-- Move line down
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { silent = true })  -- Alt+j in Normal mode
-- Move selected lines up (Visual mode)
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { silent = true }) -- Alt+k in Visual mode
-- Move selected lines down (Visual mode)
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { silent = true }) -- Alt+j in Visual mode

-- Switch to absolute numbers in Insert mode
vim.api.nvim_create_autocmd("InsertEnter", {
    pattern = "*",
    command = "set number norelativenumber",
})

vim.api.nvim_create_autocmd("InsertLeave", {
    pattern = "*",
    command = "set relativenumber",
})
