return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local configs = require("nvim-treesitter.configs")

			configs.setup({
				ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" },
				sync_install = false,
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},
}
-- return {
-- 	{
-- 		"nvim-treesitter/nvim-treesitter",
-- 		branch = "master",
-- 		lazy = false,
-- 		build = ":TSUpdate",
-- 		opts = {
-- 			auto_install = true,
-- 			ensure_installed = {
-- 				"python",
-- 				"javascript",
-- 				"lua",
-- 				"html",
-- 				"css",
-- 				"bash",
-- 				"json",
-- 				"yaml",
-- 				"markdown",
-- 				"markdown_inline",
-- 			},
-- 			hightlight = {
-- 				enable = true,
-- 				additional_vim_regex_highlighting = false,
-- 			},
-- 		},
-- 		config = function(_, opts)
-- 			-- print to console
-- 			print("Setting up nvim-treesitter with the following options:")
-- 			-- print options
-- 			for k, v in pairs(opts) do
-- 				if type(v) == "table" then
-- 					print(k .. ": " .. vim.inspect(v))
-- 				else
-- 					print(k .. ": " .. tostring(v))
-- 				end
-- 			end
-- 			require("nvim-treesitter.configs").setup(opts)
-- 		end,
-- 	},
-- }
