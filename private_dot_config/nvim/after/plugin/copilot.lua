
vim.keymap.set("i", "<S-tab>", 'copilot#Accept("<CR>")', {expr=true, silent=true, noremap=true, replace_keycodes=false})

vim.keymap.set("i", "<C-j>", "copilot#Next()", {expr=true, silent=true})
vim.keymap.set("i", "<C-k>", "copilot#Previous()", {expr=true, silent=true})
