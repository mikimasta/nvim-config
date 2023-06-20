require("toggleterm").setup({
	size = 12,
	open_mapping = [[<C-t>]],
	hide_numbers = true,
	start_in_insert = true,
	insert_mappings = true,
    shade_terminals = true;
	persist_size = true,
	direction = "horizontal",
	close_on_exit = true,
	shell = vim.g.terminal_emulator,
})
