local colors = {
    bg             = "#001217", -- darkest_blue
    bg_alt         = "#072536", -- dark_blue_1
    white          = "#ebe8e3", -- white
    black          = "#001217", -- darkest_blue (used for text on vibrant backgrounds)
    light_grey     = "#638998", -- light_grey
    lightest_grey  = "#8aadbb", -- lightest_grey
    steel_blue     = "#366f7e", -- steel_blue
    
    -- Mode Colors
    normal_blue    = "#366f7e", -- steel_blue
    insert_red     = "#cd3b50", -- light_red
    visual_orange  = "#f8b660", -- buttercup
    command_salmon = "#db9987", -- salmon
    replace_crimson = "#8e2135", -- crimson_berry
}

local M = {}

-- Helper to generate mode colors
local function generate_mode(color)
    return {
        a = { fg = colors.black, bg = color, gui = "bold" },
        b = { fg = color, bg = colors.bg_alt },
        c = { fg = colors.white, bg = colors.bg },
        -- y/z are the right-hand sections
        y = { fg = colors.lightest_grey, bg = colors.bg_alt },
        z = { fg = colors.black, bg = colors.lightest_grey },
    }
end

M.normal   = generate_mode(colors.normal_blue)
M.insert   = generate_mode(colors.insert_red)
M.visual   = generate_mode(colors.visual_orange)
M.command  = generate_mode(colors.command_salmon)
M.replace  = generate_mode(colors.replace_crimson)

M.inactive = {
    a = { fg = colors.light_grey, bg = colors.bg, gui = "bold" },
    b = { fg = colors.light_grey, bg = colors.bg },
    c = { fg = colors.light_grey, bg = colors.bg },
}

return M
