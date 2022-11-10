<<<<<<< HEAD
local colorscheme = "sonokai"
=======
local colorscheme = "edge"
>>>>>>> bc17d14d31b6b5e4046aaf944e630908dc8f4f29

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end
