on_attach = function(_, bufnr)
	local map = function (keys, func)
		vim.keymap.set("n", keys, func, {buffer = bufnr})
	end

	tele = require("telescope.builtin")

	map('<leader>r', vim.lsp.buf.rename)
	map('<leader>a', vim.lsp.buf.code_action)
	map('gd', vim.lsp.buf.definition)
	map('gD', vim.lsp.buf.declaration)
	map('gI', vim.lsp.buf.implementation)
	map('<leader>D', vim.lsp.buf.type_definition)
	map('K', vim.lsp.buf.hover)
	
	map('gr', tele.lsp_references)
	map('<leader>s', tele.lsp_document_symbols)
	map('<leader>S', tele.lsp_dynamic_workspace_symbols)

	--vim.api.nvim_buf_create_user_command(bufnr, "Format", function(_)
		--buf.format()
	--end, {})

end
