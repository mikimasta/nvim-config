vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true


local function my_on_attach(bufnr)
    local api = require('nvim-tree.api')

    local function opts(desc)
      return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end


    -- add your mappings
    vim.keymap.set('n', 'g?',     api.tree.toggle_help,                  opts('Help'))

    vim.keymap.set('n', 'c',     api.fs.create,                         opts('Create'))

    vim.keymap.set('n', 'y',     api.fs.copy.node,                      opts('Copy'))

    vim.keymap.set('n', '<C-s>', api.node.open.vertical,                opts('Open: Vertical Split'))

    vim.keymap.set('n', 'r',     api.fs.rename,                         opts('Rename'))

    vim.keymap.set('n', 'Y',     api.fs.copy.relative_path,             opts('Copy Relative Path'))

    vim.keymap.set('n', 'p',     api.fs.paste,                          opts('Paste'))

    vim.keymap.set('n', 'd',     api.fs.remove,                         opts('Delete'))

    vim.keymap.set('n', '<CR>',  api.node.open.edit,                    opts('Open'))
    --
end



require("nvim-tree").setup({
  on_attach = my_on_attach,
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = false,
  },
  filters = {
    dotfiles = false,
  },
  update_focused_file = { enable = true },

})
