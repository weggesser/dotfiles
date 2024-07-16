return {
  "mfussenegger/nvim-lint",
  opts = {
    linters_by_ft = { "markdownlint" },
  },
  config = function()
    local markdownlint = require("lint").linters.markdownlint
    markdownlint.args = {
      "--disable",
      "MD012",
      "--", -- Required
    }
  end,
}
