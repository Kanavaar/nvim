local colorscheme = "dark-decay"

if colorscheme == "decay" or "dark-decay" then
  require('decay').setup({
  style = 'dark',
  nvim_tree = {
    contrast = true -- or false to disable tree contrast,
  },
})
end

local status_ok, _ = pcall(vim.cmd.colorscheme(colorscheme))
if not status_ok then
  return
end
