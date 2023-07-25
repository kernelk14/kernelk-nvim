local status, ts = pcall(require, "nvim-treesitter")
local tss = require("nvim-treesitter.configs")
if not status then return end

tss.setup {
  ensure_installed = { "c", "python", "lua", "rust", "javascript", "typescript", "markdown", "markdown_inline", "php" },
  highlight = {
    enable = true
  }
}
