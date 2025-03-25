return {
  'olimorris/codecompanion.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  config = function()
    require('codecompanion').setup {
      opts = {
        -- You can add more options here
        debug = true,
      },
      adapters = {
        qwen = function()
          return require('codecompanion.adapters').extend('ollama', {
            name = 'qwen', -- Give this adapter a different name to differentiate it from the default ollama adapter
            schema = {
              model = {
                default = 'qwen2.5:latest',
              },
              num_ctx = {
                default = 32768,
              },
              num_predict = {
                default = -1,
              },
            },
          })
        end,
      },
      strategies = {
        chat = {
          adapter = 'qwen',
          slash_commands = {
            ['file'] = {
              -- Location to the slash command in CodeCompanion
              callback = 'strategies.chat.slash_commands.file',
              description = 'Select a file using snacks',
              opts = {
                provider = 'snacks', -- Other options include 'default', 'mini_pick', 'fzf_lua', snacks
                contains_code = true,
              },
            },
            ['buffer'] = {
              -- Location to the slash command in CodeCompanion
              callback = 'strategies.chat.slash_commands.buffer',
              description = 'Select a file using snacks',
              opts = {
                provider = 'snacks', -- Other options include 'default', 'mini_pick', 'fzf_lua', snacks
                contains_code = true,
              },
            },
            ['symbols'] = {
              -- Location to the slash command in CodeCompanion
              callback = 'strategies.chat.slash_commands.symbols',
              description = 'Select a file using snacks',
              opts = {
                provider = 'snacks', -- Other options include 'default', 'mini_pick', 'fzf_lua', snacks
                contains_code = true,
              },
            },
          },
        },
        inline = {
          adapter = 'qwen',
        },
        -- You can add more strategies and their configurations here
      },
      -- Additional configuration options can be added here
    }
  end,
}
