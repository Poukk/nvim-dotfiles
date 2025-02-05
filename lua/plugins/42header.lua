return {
	"Diogo-ss/42-header.nvim",
	cmd = { "Stdheader" },
	config = function()
		require("42header").setup({
			default_map = true,
			auto_update = true,
			user = "alexanfe",
			mail = "alexanfe@student.42sp.org.br",
		})
	end,
}
