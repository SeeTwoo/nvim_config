return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = {
		{"nvim-telescope/telescope.nvim"},
		{"nvim-lua/plenary.nvim"},
	},
	menu = {
		border = "rounded"
	},
	config = function ()
		local harpoon = require("harpoon")
		harpoon:setup()
		vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end)
		vim.keymap.set("n", "<leader>hd", function() harpoon:list():remove() end)
		vim.keymap.set("n", "<leader>hu", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

		vim.keymap.set("n", "<leader>a", function() harpoon:list():select(1) end)
		vim.keymap.set("n", "<leader>o", function() harpoon:list():select(2) end)
		vim.keymap.set("n", "<leader>e", function() harpoon:list():select(3) end)
		vim.keymap.set("n", "<leader>u", function() harpoon:list():select(4) end)

		local conf = require("telescope.config").values
		local function toggle_telescope(harpoon_files)
			local file_paths = {}
			for _, item in ipairs(harpoon_files.items) do
				table.insert(file_paths, item.value)
			end

			require("telescope.pickers").new({}, {
				prompt_title = "Harpoon",
				finder = require("telescope.finders").new_table({
					results = file_paths,
				}),
				previewer = conf.file_previewer({}),
				sorter = conf.generic_sorter({}),
			}):find()
		end
	end
}
