return {
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      { 'nvim-lua/plenary.nvim', branch = 'master' },
    },
    build = 'make tiktoken',
    opts = {
      -- See Configuration section for options
    },
    ---create key bindings for CopilotChat use leader z for starting a chat
    keys = {
      {
        '<leader>zc',
        ':CopilotChat<CR>',
        mode = 'n',
        desc = 'Start Copilot Chat',
      },
      {
        '<leader>ze',
        ':CopilotChatExplain<CR>',
        mode = 'v',
        desc = 'Explain Selection with Copilot Chat',
      },
      --- insert for review code
      {
        '<leader>zr',
        ':CopilotChatReview<CR>',
        mode = 'v',
        desc = 'Review Selection with Copilot Chat',
      },
      {
        '<leader>zf',
        ':CopilotChatFix<CR>',
        mode = 'v',
        desc = 'Fix issue Copilot',
      },
    },
  },
}
