return {
  'mistweaverco/kulala.nvim',
  -- Load immediately, do not use ft-based lazy loading
  lazy = false,
  ---@type kulala.SetupOpts
  opts = {},
  keys = {
    {
      '<leader>Rb',
      function()
        require('kulala').scratchpad()
      end,
      desc = 'Open scratchpad',
    },
    {
      '<leader>Rc',
      function()
        require('kulala').copy()
      end,
      desc = 'Copy as cURL',
    },
    {
      '<leader>RC',
      function()
        require('kulala').from_curl()
      end,
      desc = 'Paste from cURL',
    },
    {
      '<leader>Rg',
      function()
        require('kulala').download_graphql_schema()
      end,
      desc = 'Download GraphQL schema',
    },
    {
      '<leader>Ri',
      function()
        require('kulala').inspect()
      end,
      desc = 'Inspect current request',
    },
    {
      '<leader>Rn',
      function()
        require('kulala').jump_next()
      end,
      desc = 'Jump to next request',
    },
    {
      '<leader>Rp',
      function()
        require('kulala').jump_prev()
      end,
      desc = 'Jump to previous request',
    },
    {
      '<leader>Rq',
      function()
        require('kulala').close()
      end,
      desc = 'Close window',
    },
    {
      '<leader>Rr',
      function()
        require('kulala').replay()
      end,
      desc = 'Replay the last request',
    },
    {
      '<leader>Rs',
      function()
        require('kulala').run()
      end,
      desc = 'Send the request',
    },
    {
      '<leader>RS',
      function()
        require('kulala').show_stats()
      end,
      desc = 'Show stats',
    },
    {
      '<leader>Rt',
      function()
        require('kulala').toggle_view()
      end,
      desc = 'Toggle headers/body',
    },
  },
}
