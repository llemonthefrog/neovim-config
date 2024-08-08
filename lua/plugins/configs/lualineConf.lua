line = {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('lualine').setup({
            options = {
								icons_enabled = true,
								component_separators = { left = "", right = "" },
								section_separators = { lefy = "", right = "" },
						},
						sections = {
													lualine_a = { "mode" },
													lualine_b = { "filename" },
													lualine_c = { "filezise" },
													lualine_x = { "fileformat", "filetype" },
													lualine_y = { "progress" },
													lualine_z = { "location" },
						},
        })
    end
}
