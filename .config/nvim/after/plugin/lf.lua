local lf = require('lf')
lf.setup({
    escape_quit = false,
    border = "rounded",
})

vim.keymap.set('n', '<leader>l', function() lf.start() end)
