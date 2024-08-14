require("hotkeys/plugins")
require("plugins/configs/colorschemeConf")
require("plugins/configs/deviconsConf")
require("plugins/configs/lualineConf")
require("plugins/configs/cmpConf")
require("plugins/configs/masonConf")
require("plugins/configs/teleConf")
require("plugins/configs/treeConf")
require("plugins/configs/neoTreeConf")
require("plugins/configs/alphaConf")
require("plugins/configs/luaSnp")

return {
		colorSch,
		icons,
		line,
		codeComplition,
		snip,

		"neovim/nvim-lspconfig",
		"williamboman/mason-lspconfig.nvim",
		"folke/neodev.nvim",
		"ThePrimeagen/vim-be-good",

		Mason,
		tele,
		tree,
	  	nTree,
	  	alph
}
