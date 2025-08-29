local function insert_class_skeleton(className)
	local lines = {
        "class " .. className .. " {",
        "\tprivate:",
        "\tpublic:",
        "\t\t" .. className .. "();",
        "\t\t" .. className .. "(const " .. className .. "&);",
        "\t\t" .. className .. "& operator=(const " .. className .. "&);",
        "\t\t~" .. className .. "();",
        "};"
    }
    vim.api.nvim_put(lines, "l", true, true)
end

vim.api.nvim_create_user_command("Class", function(opts)
	insert_class_skeleton(opts.args)
end, {
	nargs = 1,
})
