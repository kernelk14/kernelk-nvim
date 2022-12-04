local status, gitsigns = pcall(require, "gitsigns")

if not status then
  print("Gitsigns not loaded properly!")
  return
end

gitsigns.setup()
