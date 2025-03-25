return {
  'nvim-orgmode/orgmode',
  event = 'VeryLazy',
  config = function()
    local Menu = require 'org-modern.menu'

    require('orgmode').setup {
      org_agenda_files = '~/orgfiles/**/*',
      org_default_notes_file = '~/orgfiles/refile.org',

      ui = {
        menu = {
          handler = function(data)
            Menu:new({
              window = {
                margin = { 1, 0, 1, 0 },
                padding = { 0, 1, 0, 1 },
                title_pos = 'center',
                border = 'single',
                zindex = 1000,
              },
              icons = {
                separator = '➜',
              },
            }):open(data)
          end,
        },
      },
    }
    require('blink.cmp').setup {
      fuzzy = {
        implementation = 'lua', -- Force Lua implementation
      },
      sources = {
        per_filetype = {
          org = { 'orgmode' },
        },
        providers = {
          orgmode = {
            name = 'Orgmode',
            module = 'orgmode.org.autocompletion.blink',
            fallbacks = { 'buffer' },
          },
        },
      },
    }

    require('org-bullets').setup()
  end,
}
