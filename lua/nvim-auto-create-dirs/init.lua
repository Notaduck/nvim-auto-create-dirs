-- File: lua/auto_create_dirs/init.lua
local M = {}

function M.setup()
	-- Automatically create directories when opening a file
	vim.api.nvim_create_autocmd("BufNewFile", {
		pattern = "*",
		callback = function()
			local file_path = vim.fn.expand("<afile>:p:h")
			if vim.fn.isdirectory(file_path) == 0 then
				vim.fn.mkdir(file_path, "p")
			end
		end,
	})

	-- Automatically create directories before saving a file
	vim.api.nvim_create_autocmd("BufWritePre", {
		pattern = "*",
		callback = function()
			local file_path = vim.fn.expand("<afile>:p:h")
			if vim.fn.isdirectory(file_path) == 0 then
				vim.fn.mkdir(file_path, "p")
			end
		end,
	})
end

M.setup()

return M
