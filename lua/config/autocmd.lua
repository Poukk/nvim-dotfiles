vim.api.nvim_create_user_command("Norminette", function()
	require("utils.norminette").run_norminette()
end, {})
