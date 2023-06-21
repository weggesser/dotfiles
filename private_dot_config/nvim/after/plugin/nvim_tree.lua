-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

vim.keymap.set('n', '<C-t>', ':NvimTreeToggle<CR>')

local function my_on_attach(bufnr)
	local api = require "nvim-tree.api"
	local function opts(desc)
	    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end
	api.config.mappings.default_on_attach(bufnr)
	vim.keymap.set('n', '<C-t>', api.tree.toggle, opts('Toggle: Tree'))
end


-- empty setup using defaults
require("nvim-tree").setup({
	on_attach = my_on_attach,
})
