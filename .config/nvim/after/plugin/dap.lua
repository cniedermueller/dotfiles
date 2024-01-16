vim.keymap.set('n', '<leader>dt', ':DapToggleBreakpoint<CR>')
vim.keymap.set('n', '<leader>dx', ':DapTerminate<CR>')
vim.keymap.set('n', '<leader>dn', ':DapStepOver<CR>')
vim.keymap.set('n', '<leader>di', ':DapStepInto<CR>')
vim.keymap.set('n', '<leader>df', ':DapStepOver<CR>')

vim.keymap.set('n', '<leader>dr', function() require('dap').repl.open() end)
vim.keymap.set('n', '<leader>dl', function() require('dap').run_last() end)
vim.keymap.set({ 'n', 'v' }, '<leader>dh', function()
    require('dap.ui.widgets').hover()
end)
vim.keymap.set({ 'n', 'v' }, '<leader>dp', function()
    require('dap.ui.widgets').preview()
end)
vim.keymap.set('n', '<leader>df', function()
    local widgets = require('dap.ui.widgets')
    widgets.centered_float(widgets.frames)
end)
vim.keymap.set('n', '<leader>ds', function()
    local widgets = require('dap.ui.widgets')
    widgets.centered_float(widgets.scopes)
end)

vim.keymap.set('n', '<leader>dc', function()
    if vim.fn.filereadable('launch.json') then
        require('dap.ext.vscode').load_launchjs(
            'launch.json',
            {
                codelldb = { 'rust' },
                coreclr = { 'cs' }
            })
    end
    require('dap').continue()
end)
