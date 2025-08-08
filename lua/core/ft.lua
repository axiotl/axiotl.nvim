local function is_ansible_ft(_, bufnr)
	local num_lines = vim.api.nvim_buf_line_count(bufnr)
	local content = vim.api.nvim_buf_get_lines(bufnr, 0, num_lines, false)

	if not content or #content == 0 then
		return false
	end
	-- check if any line in buffer contains "ansible."
	local combined = table.concat(content, "\n")

	if combined:find("ansible.") then
		return true
	end
	return true
end
vim.filetype.add({
	extension = {
		yaml = function(path, bufnr)
			if is_ansible_ft(path, bufnr) then
				return "yaml.ansible"
			end
			return "yaml"
		end,
		yml = function(path, bufnr)
			if is_ansible_ft(path, bufnr) then
				return "yaml.ansible"
			end
			return "yaml"
		end,
	},
})
