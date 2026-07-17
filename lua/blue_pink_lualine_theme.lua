--curtesy of google ai studio

local colors = {
    bg      = "#001014", -- Matches your Normal bg
    bg_alt  = "#101020", -- Matches your ColorColumn
    white   = "White",
    black   = "Black",
    pink    = "DeepPink",
    cyan    = "Cyan",
    blue    = "LightBlue",
    steel   = "SteelBlue",
    thistle = "Thistle",
    violet  = "Violet",
}

local M = {}

-- Helper to generate mode colors
-- We use the vibrant color as BG for 'a' (Mode) 
-- But use it as FG for 'b' and 'c' to keep it dark.
local function generate_mode(color)
    return {
        a = { fg = colors.black, bg = color, gui = "bold" },
        b = { fg = color, bg = colors.bg_alt },
        c = { fg = colors.white, bg = colors.bg },
        y = { fg = colors.thistle, bg = colors.bg_alt },
        z = { fg = colors.black, bg = colors.thistle },
    }
end

M.normal   = generate_mode(colors.blue)    -- Normal is LightBlue
M.insert   = generate_mode(colors.pink)    -- Insert matches your @keyword
M.visual   = generate_mode(colors.cyan)    -- Visual matches your @type
M.command  = generate_mode(colors.violet)  -- Command matches your @number
M.replace  = generate_mode("Orchid")       -- Replace matches your @macro

M.inactive = {
    a = { fg = colors.steel, bg = colors.bg, gui = "bold" },
    b = { fg = colors.steel, bg = colors.bg },
    c = { fg = colors.steel, bg = colors.bg },
}

return M
