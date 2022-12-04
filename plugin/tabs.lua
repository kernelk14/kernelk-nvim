local status, tabs = pcall(require, "bufferline")

if not status then
  print("Bufferline not loaded properly!")
  return
end

tabs.setup{}
