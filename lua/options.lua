require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!



-- Copilot
vim.api.nvim_set_keymap('i', '<C-.>', 'copilot#Accept("<CR>")', {expr=true, silent=true})
-- autocomplete with control + right arrow
vim.api.nvim_set_keymap('i', '<C-;>', 'copilot#Accept("<CR>")', {expr=true, silent=true})

-- Navigation
vim.api.nvim_set_keymap('n', '<C-0>', ':bn <CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-9>', ':bp <CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-BS>', 'require("nvchad.tabufline").close_buffer()', { noremap = true, silent = true })

-- Editing
vim.api.nvim_set_keymap('n', '<C-s>', ':w <CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-q>', ':q <CR>', { noremap = true, silent = true })

-- Window management
vim.api.nvim_set_keymap('n', 'S', ':vsplit <CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-=>', ':resize +1 <CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-_>', ':resize -1 <CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '_', ':vertical resize -10 <CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '+', ':vertical resize +10 <CR>', { noremap = true, silent = true })

-- Debugging
vim.api.nvim_set_keymap('n', '<C-c>', ":lua require('dap').continue()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-b>', ":lua require('dap').toggle_breakpoint()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-i>', ":lua require('dap').step_into()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>o', ":lua require('dap').step_out()<CR>", { noremap = true, silent = true })

-- Misc
vim.api.nvim_set_keymap('n', '<leader>rn', ':set relativenumber!<CR>', { noremap = true, silent = true })
-- Select all keymap
vim.api.nvim_set_keymap('n', '<C-a>', 'ggVG', { noremap = true, silent = true })

-- Quickfix commands with meta key
vim.api.nvim_set_keymap('n', '<M-j>', ':cnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-k>', ':cprev<CR>', { noremap = true, silent = true })
-- Open quickfix window with meta key
vim.api.nvim_set_keymap('n', '<M-q>', ':copen<CR>', { noremap = true, silent = true })
-- Close quickfix window with meta key
vim.api.nvim_set_keymap('n', '<M-w>', ':cclose<CR>', { noremap = true, silent = true })


--
-- Git 
--

vim.api.nvim_set_keymap('n', '<leader>gj', ':Gitsigns next_hunk<CR>', { noremap = true, silent = true })

vim.cmd("colorscheme github_dark_high_contrast")
