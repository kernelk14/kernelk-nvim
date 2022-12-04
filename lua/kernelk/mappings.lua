vim.g.mapleader = ";"
vim.g.maplocalleader = ";"

local status, maps = pcall(require, "mapx")

if not status then
    print("Mapx not loaded properly!")
    return
end

maps.setup { global = true }

-- The actual mappings

nnoremap(";ff", "<cmd>Telescope find_files<cr>")
nnoremap(";gg", "<cmd>Neogit<cr>")

nnoremap("}", "<cmd>BufferLineCycleNext<cr>", {silent = true})
nnoremap("{", "<cmd>BufferLineCyclePrev<cr>", {silent = true})
nnoremap(";d", "<cmd>bd<cr>", "silent")

nnoremap(";l", "<cmd>NvimTreeToggle<cr>", "silent")
nnoremap(";t", "<cmd>terminal<cr>", "silent")

map("<C-Up>", ":move '<-2<cr>gv-gv")
map("<C-Down>", ":move '>+1<cr>gv-gv")

nnoremap("<C-l>", "<home>v<end><Left>")

nnoremap("<C-S-Up>", "<cmd>resize -2<cr>", "silent")
nnoremap("<C-S-Down>", "<cmd>resize +2<cr>", "silent")
nnoremap("<C-S-Left>", "<cmd>vertical resize -2<cr>", "silent")
nnoremap("<C-S-Right>", "<cmd>vertical resize +2<cr>", "silent")
