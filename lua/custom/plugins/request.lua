return {
  'mistweaverco/kulala.nvim',
  -- Load immediately, do not use ft-based lazy loading
  lazy = false,
  ---@type kulala.SetupOpts
  opts = {},
  keys = {
    {
      '<leader>crb',
      function()
        require('kulala').scratchpad()
      end,
      desc = 'Open scratchpad',
    },
    {
      '<leader>crc',
      function()
        require('kulala').copy()
      end,
      desc = 'Copy as cURL',
    },
    {
      '<leader>crC',
      function()
        require('kulala').from_curl()
      end,
      desc = 'Paste from cURL',
    },
    {
      '<leader>crg',
      function()
        require('kulala').download_graphql_schema()
      end,
      desc = 'Download GraphQL schema',
    },
    {
      '<leader>cri',
      function()
        require('kulala').inspect()
      end,
      desc = 'Inspect current request',
    },
    {
      '<leader>crn',
      function()
        require('kulala').jump_next()
      end,
      desc = 'Jump to next request',
    },
    {
      '<leader>crp',
      function()
        require('kulala').jump_prev()
      end,
      desc = 'Jump to previous request',
    },
    {
      '<leader>crq',
      function()
        require('kulala').close()
      end,
      desc = 'Close window',
    },
    {
      '<leader>crr',
      function()
        require('kulala').replay()
      end,
      desc = 'Replay the last request',
    },
    {
      '<leader>crs',
      function()
        require('kulala').run()
      end,
      desc = 'Send the request',
    },
    {
      '<leader>crS',
      function()
        require('kulala').show_stats()
      end,
      desc = 'Show stats',
    },
    {
      '<leader>crt',
      function()
        require('kulala').toggle_view()
      end,
      desc = 'Toggle headers/body',
    },
  },
}
