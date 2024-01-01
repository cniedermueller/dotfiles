local dap = require('dap')
local mason_bin_dir = os.getenv('HOME') .. '/.local/share/nvim/mason/bin/'

dap.adapters.codelldb = {
    type = 'server',
    port = '${port}',
    executable = {
        command = mason_bin_dir .. 'codelldb',
        args = { '--port', '${port}' },
    }
}

dap.adapters.coreclr = {
    type = 'executable',
    command = mason_bin_dir .. 'netcoredbg',
    args = { '--interpreter=vscode' }
}
