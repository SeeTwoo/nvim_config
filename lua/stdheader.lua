forty_two_art = {
	"	     :::     ::::::::",
	"      :+:     :+:    :+:",
	"    +:+ +:+        +:+  ",
	"  +#+  +:+       +#+    ",
	"+#+#+#+#+#+   +#+       ",
	"     #+#    #+#         ",
	"	###   ########.fr    "
}

local function header_already_in_file()
	return false
end

local function draw_header()
	local fileName = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(0), ":t")
	local user = vim.env.USER or "marvin"
	local mail = vim.env.MAIL or "marvin@42students.fr"
	local header = {
	"/* ************************************************************************** */",
	"/*                                                                            */",
	"/*                                                         :::     ::::::::   */",
	"/*   " .. fileName .. string.rep(" ", 52 - #fileName) .. ":+:     :+:    :+:   */",
	"/*                                                     +:+ +:+        +:+     */",
	"/*   By: " .. user .. " <" .. mail .. ">" .. string.rep(" ", 41 - #user - #mail) .. "+#+  +:+       +#+       */",
	"/*                                                 +#+#+#+#+#+   +#+          */",
	"/*   Created:                                           #+#    #+#            */",
	"/*   Uptated:                                          ###   ########.fr      */",
	"/*                                                                            */",
	"/* ************************************************************************** */",
	""
	}

	vim.api.nvim_win_set_cursor(0, {1, 0})
	vim.api.nvim_put(header, "l", false, true)
end

local function put_stdheader()
	if header_already_in_file() then
		return
	end
	draw_header()
end

vim.api.nvim_create_user_command("Stdheader", function(opts)
	put_stdheader(opts.args)
end, {
	nargs = 0,
})
