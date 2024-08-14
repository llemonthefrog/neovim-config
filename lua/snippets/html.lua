local ls = require("luasnip")
local sn = ls.snippet
local ins = ls.insert_node
local txt = ls.text_node
local fmt = require("luasnip/extras/fmt").fmt

ls.add_snippets("html", {
		sn("boilerplate-html",
			fmt(
			[[
			<!DOCTYPE html>
			<html>
				<head>
					<meta charset = "utf-8">
					<title></title>
				</head>
				<body>
					{}
				</body>
			</html>	
			]], {ins(0)})
		)
	})

ls.add_snippets("html", {
		sn("link-css",
			fmt("<link rel=\"stylesheet\" href=\"{}\">",{ins(0)})
		)
	})
