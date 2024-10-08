local set_key = vim.api.nvim_set_keymap

local kOpt = {noremap = true, silent = true}

function nm(key, command)
		--register hotkey in normal mode
		set_key("n", key, command, kOpt)
end

function im(key, command)
		--register hotkey in input mode
		set_key("i", key, command, kOpt)
end

function vm(key, command)
		--register hotkey in visual mode
		set_key("v", key, command, kOpt)
end

function tm(key, command)
		--register hotkey in terminal mode
		set_key("t", key, command, kOpt)
end
