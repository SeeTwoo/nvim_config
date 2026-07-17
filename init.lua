vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

require("set")
require("stdheader")
require("classes")
require("config.lazy")

local nvim_theme = os.getenv("NVIM_THEME")

if nvim_theme == "hypr" then
  vim.cmd.colorscheme("frosted_berries_theme");
else
  vim.cmd.colorscheme("blue_pink_theme")
end
