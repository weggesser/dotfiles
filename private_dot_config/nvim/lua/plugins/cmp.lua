local cmp = require("cmp")
return {
  "hrsh7th/nvim-cmp",
  keys = {
    { "<CR>", mode = { "i" }, false },
    { "<C-CR>", mode = { "i" }, cmp.mapping.confirm({ select = true }) },
  },
}
