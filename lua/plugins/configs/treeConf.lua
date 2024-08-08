local languages = {'vim', 'vimdoc', 'lua', 'cpp', 'rust', 'go', 'python', 'javascript', 'java', 'c_sharp', 'html', 'css', 'json'}

tree = 	{
    "nvim-treesitter/nvim-treesitter",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = languages,
            auto_install = false,
            highlight = { enable = true },
            indent = { enable = true },
            diagnostics = { disable = { 'missing-fields' } },
        })
    end
}