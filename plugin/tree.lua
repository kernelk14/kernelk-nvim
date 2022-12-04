local status, tree = pcall(require, "nvim-tree")

if not status then
  print("Tree not loaded properly!")
  return
end

tree.setup{}
