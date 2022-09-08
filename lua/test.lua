function DelHBuffer()
	local count = 0
	local buf_d = {}
	local buf_s = vim.api.nvim_command_output(":buffers")

	-- print(buf_s)
	for l in string.gmatch(buf_s, '%d*%s*.h ') do
		count = count + 1
    local temp = string.match(l, '%d*')
		-- print(count, temp)

    vim.cmd(':bdelete' .. temp)
		table.insert(buf_d, temp)
    -- print(buf_d[count])
	end

  print('Close', count, 'hidden buffers')
end

-- DelHBuffer()
vim.api.nvim_create_user_command('DelHBuffer', DelHBuffer, {bang = true})

