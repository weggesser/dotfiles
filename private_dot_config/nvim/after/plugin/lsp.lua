local lsp = require('lsp-zero').preset({})
local lspconfig = require('lspconfig')

lsp.ensure_installed({
	'tsserver',
	'eslint',
	'rust_analyzer',
  'solargraph',
  'golangci_lint_ls',
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-j'] = cmp.mapping.select_next_item(cmp_select),
	['<C-k'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-l'] = cmp.mapping.confirm({ select = true }),
	['<C-Space>'] = cmp.mapping.complete(),
})

lsp.setup_nvim_cmp({
	mapping = cmp_mappings
})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
  if client.supports_method("textDocument/formatting") then
    vim.keymap.set("n", "<Leader>f", function()
      vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf() })
    end, { buffer = bufnr, desc = "[lsp] format" })
  end
end)

-- (Optional) Configure lua language server for neovim
lspconfig.lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup({
	mapping = cmp_mappings
})
