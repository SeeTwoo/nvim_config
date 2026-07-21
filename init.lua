vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

machine = os.getenv("SEETWOO_MACHINE")

require("set")
require("stdheader")
require("config.lazy")


if machine == "hypr_laptop" then
  vim.cmd.colorscheme("frosted_berries_theme");
else
  vim.cmd.colorscheme("blue_pink_theme")
end
