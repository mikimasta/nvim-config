require("mikimasta")


vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

vim.g.terminal_emulator='pwsh'
--vim.o.shell = vim.fn.executable('pwsh') and 'pwsh' or 'powershell'

vim.api.nvim_set_hl(0, 'conditionals', { italic = false })

-- setup must be called before loading


vim.o.background = "dark"
