local status, lsp = pcall(require, "lspsaga")
local mason_stat, mason = pcall(require, "mason")
local mlsp_stat, mlsp = pcall(require, "mason-lspconfig")
local lspconf = require("lspconfig")
if not mason_stat then
  print("Mason not loaded properly!")
  return
end

if not mlsp_stat then
  print("Mason Lsp not loaded properly!")
  return
end

if not status then
  print("Lspsaga not loaded properly!")
  return
end

lsp.init_lsp_saga({
  })

mason.setup{}
mlsp.setup()

lspconf.sumneko_lua.setup {}
lspconf.pyright.setup {}
lspconf.eslint.setup{}
-- lspconf.prettier.setup{}

vim.cmd [[command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument]]
