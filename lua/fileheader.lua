local function insert_file_header(filename)
	local total_length = 80
	local comment_prefix = "// "
	local comment_suffix = " //"
	local core_text = filename
	local dash = "-"

	local inner_space = total_length - #comment_prefix - #comment_suffix - #core_text
	local left_dashes = math.floor(inner_space / 2)
	local right_dashes = inner_space - left_dashes

	local header = comment_prefix .. string.rep(dash, left_dashes) .. core_text .. string.rep(dash, right_dashes) .. comment_suffix

	vim.api.nvim_put({header}, "l", true, true)
end

vim.api.nvim_create_user_command("FileHeader", function(opts)
	insert_file_header(opts.args)
end, {
	nargs = 1,
	complete = "file",
})
