return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    opts = {
      integrations = {
        aerial = true,
        alpha = true,
        cmp = true,
        dashboard = true,
        flash = true,
        gitsigns = true,
        headlines = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        leap = true,
        lsp_trouble = true,
        mason = true,
        markdown = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        neotree = true,
        noice = true,
        notify = true,
        semantic_tokens = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        which_key = true,
      },
      transparent_background = true,
    },
  },

  {
    "folke/tokyonight.nvim",
    lazy = true,
    priority = 1000,
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },

  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = true,
    priority = 1000,
    opts = {
      styles = {
        transparency = true,
      },
    },
  },

  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    lazy = true,
    priority = 1000,
    -- opts = {
    --   transparent = true,
    --   theme = "dragon", -- can choose between wave, dragon and lotus
    --   colors = {
    --     theme = {
    --       all = {
    --         ui = {
    --           bg_gutter = "none",
    --         },
    --       },
    --     },
    --   },
    --   overrides = function(colors)
    --     local theme = colors.theme
    --     return {
    --       NormalFloat = { bg = "none" },
    --       FloatBorder = { bg = "none" },
    --       FloatTitle = { bg = "none" },

    --       -- Save an hlgroup with dark background and dimmed foreground
    --       -- so that you can use it where your still want darker windows.
    --       -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
    --       NormalDark = { fg = theme.ui.fg_dim, bg = "none" },

    --       -- Popular plugins that open floats will link to NormalFloat by default;
    --       -- set their background accordingly if you wish to keep them dark and borderless
    --       LazyNormal = { bg = "none", fg = theme.ui.fg_dim },
    --       MasonNormal = { bg = "none", fg = theme.ui.fg_dim },
    --     }
    --   end,
    -- },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
  },
}
