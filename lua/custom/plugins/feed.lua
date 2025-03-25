return {
  'neo451/feed.nvim',
  cmd = 'Feed',
  ---@module 'feed'
  ---@type feed.config
  opts = {
    feeds = {
      {
        'https://neovim.io/news.xml',
        name = 'Neovim News',
        tags = { 'tech', 'news', 'nvim' },
      },
      {
        'https://www.reddit.com/r/neovim/.rss',
        name = 'Neovim reddit',
        tags = { 'tech', 'news', 'reddit', 'nvim' },
      },
      {
        'https://www.reddit.com/r/elixir/.rss',
        name = 'Elixir reddit',
        tags = { 'tech', 'news', 'reddit', 'elixir' },
      },
      {
        'https://openai.com/news/rss.xml',
        name = 'Openai news',
        tags = { 'tech', 'news', 'ai', 'openai' },
      },
    },
  },
}
