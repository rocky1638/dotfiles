local status, _ = pcall(vim.cmd, "colorscheme ayu")
if not status then
  print("colorscheme not found!")
  return
end
