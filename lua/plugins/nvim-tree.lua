return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {
      filters = {
        dotfiles = false,  -- Set to false to show dotfiles like .env
        git_clean = false,
        no_buffer = false,
        custom = {
          -- You can add specific files to hide here if needed
          -- "^.git$",
        },
        exclude = {
          -- Files you always want to show even if they match other filters
          ".env",
          ".env.local",
          ".env.example",
          ".gitignore",
        },
      },
    }
  end,
}