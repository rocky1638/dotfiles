vim.g.mapleader = ","

local keymap = vim.keymap

-- general keymaps
keymap.set("i", "jj", "<ESC>")
keymap.set("n", ";", ":")
keymap.set("n", "j", "gj")
keymap.set("n", "k", "gk")
keymap.set("n", "<leader>nh", ":nohl<CR>")
keymap.set("n", "x", '"_x') -- don't copy when deleting with "x"

-- splits
keymap.set("n", "<leader>sv", "<C-w>v") -- split horizontally
keymap.set("n", "<leader>sh", "<C-w>s") -- split vertically
keymap.set("n", "<leader>se", "<C-w>=") -- equalize split widths
keymap.set("n", "<leader>sx", ":close<CR>") -- close split

-- plugin keymaps
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
