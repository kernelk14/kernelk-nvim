local status, line = pcall(require, 'lualine')

if not status then 
  print("Lualine is not loaded properly!")
  return
end

line.setup {
  options = {
    icons_enabled = true
  }
}
