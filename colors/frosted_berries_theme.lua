local crimson_berry = "#8e2135"
local red = "#b21e2b"
local light_red = "#cd3b50"
local malabar = "#fb9292"
local salmon = "#db9987"
local darkest_blue = "#001217"
local dark_blue_1 = "#072536"
local dark_blue_2 = "#1d323c"
local dark_grey = "#5b6e7b"
local light_grey = "#638998"
local lighter_grey = "#8dabb7"
local lightest_grey = "#8aadbb"
local steel_blue = "#366f7e"
local white = "#ebe8e3"
local mustard = "#a67b44"
local buttercup = "#f8b660"

-- Basic coding (Treesitter Standard)
vim.api.nvim_set_hl(0, "@keyword.directive", {fg = light_grey}) -- replaces @preproc
vim.api.nvim_set_hl(0, "@keyword", {fg = red})
vim.api.nvim_set_hl(0, "@type", {fg = steel_blue})
vim.api.nvim_set_hl(0, "@type.builtin", {fg = steel_blue})
vim.api.nvim_set_hl(0, "@function", {fg = white})
vim.api.nvim_set_hl(0, "@function.method", {fg = white})
vim.api.nvim_set_hl(0, "@comment", {fg = dark_grey})
vim.api.nvim_set_hl(0, "@variable", {fg = white}) -- Ensure variables aren't greyed out
vim.api.nvim_set_hl(0, "@variable.parameter", {fg = white})
vim.api.nvim_set_hl(0, "@property.c", {fg = lightest_grey})
vim.api.nvim_set_hl(0, "@property.lua", {fg = lightest_grey})

vim.api.nvim_set_hl(0, "LineNr", {fg = dark_grey})
vim.api.nvim_set_hl(0, "CursorLineNr", {fg = dark_grey})
vim.api.nvim_set_hl(0, "@character", {fg = light_red})
vim.api.nvim_set_hl(0, "@constant", {fg = malabar})
vim.api.nvim_set_hl(0, "@constant.builtin", {fg = malabar})
vim.api.nvim_set_hl(0, "@string", {fg = malabar})
vim.api.nvim_set_hl(0, "@number", {fg = crimson_berry})
vim.api.nvim_set_hl(0, "@number.float", {fg = crimson_berry})
vim.api.nvim_set_hl(0, "@module", {fg = light_grey}) -- replaces @namespace

vim.api.nvim_set_hl(0, "Search", {fg = "Black", bg = light_grey})
vim.api.nvim_set_hl(0, "IncSearch", {fg = "Black", bg = light_grey})
vim.api.nvim_set_hl(0, "ColorColumn", {bg = "#101020"})
--vim.api.nvim_set_hl(0, "Normal", {bg = darkest_blue, fg = white})
vim.api.nvim_set_hl(0, "Normal", {fg = white})

-- LSP Semantic Tokens (This ensures LSP doesn't break your colors)
vim.api.nvim_set_hl(0, "@lsp.type.class", {link = "@type"})
vim.api.nvim_set_hl(0, "@lsp.type.decorator", {link = "@function"})
vim.api.nvim_set_hl(0, "@lsp.type.function", {link = "@function"})
vim.api.nvim_set_hl(0, "@lsp.type.method", {link = "@function.method"})
vim.api.nvim_set_hl(0, "@lsp.type.macro", {fg = "Orchid"})
vim.api.nvim_set_hl(0, "@lsp.type.parameter", {link = "@variable.parameter"})
vim.api.nvim_set_hl(0, "@lsp.type.variable", {link = "@variable"})

-- UI (Floating window)
vim.api.nvim_set_hl(0, "FloatBorder", {fg = light_grey})
vim.api.nvim_set_hl(0, "NormalFloat", {fg = malabar})

-- UI (Neo-tree)
vim.api.nvim_set_hl(0, "NeoTreeNormal", {fg = white})
vim.api.nvim_set_hl(0, "NeoTreeRootName", {fg = dark_grey})
vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", {fg = light_grey})
vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", {fg = "Lightblue"})
vim.api.nvim_set_hl(0, "NeoTreeFileNameOpened", {fg = crimson_berry})
vim.api.nvim_set_hl(0, "NeoTreeFileIcon", {fg = crimson_berry})
vim.api.nvim_set_hl(0, "NeoTreeGitModified", {fg = red})
vim.api.nvim_set_hl(0, "NeoTreeGitStaged", {fg = white})
vim.api.nvim_set_hl(0, "NeoTreeGitUntracked", {fg = red})

-- UI (Snacks Dashboard)
vim.api.nvim_set_hl(0, "SnacksDashboardIcon", {fg = steel_blue})
vim.api.nvim_set_hl(0, "SnacksDashboardDesc", {fg = white})
vim.api.nvim_set_hl(0, "SnacksDashboardKey", {fg = red})

-- UI (fzf-lua)
vim.api.nvim_set_hl(0, "FzfLuaBorder", {link = "FloatBorder"})
vim.api.nvim_set_hl(0, "FzfLuaTitle", {link = "FloatBorder"})
vim.api.nvim_set_hl(0, "FzfLuaFzfMatch", {fg = malabar})
