nTree = {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "MunifTanjim/nui.nvim",
    },

	config = function()
		require("neo-tree").setup({
			enable_git_status = true,
			default_component_configs = {
				indent = {
					indent_size = 2,
					indent_marker = " ",
					last_indent_marker = " ",
					padding = 1,
				},
				modified = {
					symbol = "M",
				}
			},
			window = {
				position = "left",
				width = 40,
			},
		})
	end
}
