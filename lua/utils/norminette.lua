local M = {}

local Popup = require("nui.popup")

function M.run_norminette()
	local file = vim.fn.expand("%:p")
	local ext = vim.fn.expand("%:e")

	if ext ~= "c" and ext ~= "cpp" and ext ~= "h" then
		return
	end

	local handle = io.popen("norminette " .. file)
	if not handle then
		return
	end
	local result = handle:read("*a")
	handle:close()

	local popup = Popup({
		enter = true,
		focusable = true,
		border = {
			style = "rounded",
			text = {
				top = " Norminette Output ",
				top_align = "center",
			},
		},
		position = "50%",
		size = {
			width = "80%",
			height = "50%",
		},
		buf_options = {
			modifiable = true, -- temporary modifiable for setting content
			readonly = false,
		},
	})

	popup:mount()

	-- Temporarily allow modification to set text, then lock it.
	vim.bo[popup.bufnr].modifiable = true
	vim.api.nvim_buf_set_lines(popup.bufnr, 0, -1, false, vim.split(result, "\n"))
	vim.bo[popup.bufnr].modifiable = false

	-- Map <Esc> and q to close the popup.
	popup:map("n", "<Esc>", function()
		popup:unmount()
	end, { noremap = true, silent = true })
	popup:map("n", "q", function()
		popup:unmount()
	end, { noremap = true, silent = true })

	-- Also auto-close on buffer leave, if desired.
	vim.api.nvim_create_autocmd("BufLeave", {
		buffer = popup.bufnr,
		callback = function()
			popup:unmount()
		end,
	})
end

return M
