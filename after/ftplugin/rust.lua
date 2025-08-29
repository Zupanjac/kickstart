local bufnr = vim.api.nvim_get_current_buf()
vim.keymap.set('n', '<leader>cr', function()
  vim.cmd.Crun 'Crun'
  -- or vim.lsp.buf.codeAction() if you don't want grouping.
end, { desc = '[C]ode [r]un', silent = true, buffer = bufnr })
vim.keymap.set(
  'n',
  'K', -- Override Neovim's built-in hover keymap with rustaceanvim's hover actions
  function()
    vim.cmd.RustLsp { 'hover', 'actions' }
  end,
  { silent = true, buffer = bufnr }
)
vim.keymap.set(
  'n',
  '<leader>cd', -- Override Neovim's built-in hover keymap with rustaceanvim's hover actions
  function()
    vim.cmd.RustLsp { 'relatedDiagnostics', 'actions' }
  end,
  { desc = '[C]ode [d]iagnostics', silent = true, buffer = bufnr }
)
