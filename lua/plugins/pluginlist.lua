require("hotkeys/plugins")
require("plugins/configs/colorschemeConf")
require("plugins/configs/deviconsConf")
require("plugins/configs/lualineConf")
require("plugins/configs/cmpConf")
require("plugins/configs/masonConf")
require("plugins/configs/teleConf")
require("plugins/configs/treeConf")
require("plugins/configs/neoTreeConf")

return {
		colorSch,
		icons,
		line,
		codeComplition,

		"neovim/nvim-lspconfig",
		"williamboman/mason-lspconfig.nvim",
		"folke/neodev.nvim",

		Mason,
		tele,
		tree,
		nTree
}
