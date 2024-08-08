require("hotkeys.alias")

--[navigate between windows]--
nm("<C-l>", "<C-w>l")
nm("<C-h>", "<C-w>h")
nm("<C-k>", "<C-w>k")
nm("<C-j>", "<C-w>j")

--[resize windows]--
nm("<C-Up>", ":resize -2<CR>")
nm("<C-Down>", ":resize +2<CR>")
nm("<C-Left>", ":vertical resize -2<CR>")
nm("<C-Right>", ":vertical resize +2<CR>")

--[change buffers]--
nm("<S-l>", ":bnext<CR>")
nm("<S-h>", ":bprev<CR>")

--[move text in visual mode]--
--left and right
vm("<", "<gv")
vm(">", ">gv")

--up and down
vm("<A-j>", ":m .+1<CR>==")
vm("<A-k>", ":m .-2<CR>==")
