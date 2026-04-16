return {
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    config = function()
      require("kanagawa").setup {
        theme = "dragon",
        transparent = true,
        colors = {
          theme = {
            all = {
              ui = {
                bg_gutter = "none",
              },
            },
          },
        },
        overrides = function(colors)
          local theme = colors.theme
          local palette = colors.palette
          return {
            NormalFloat = { bg = "none" },
            FloatBorder = { bg = "none" },
            FloatTitle = { bg = "none" },
            Folded = { bg = "none" },
            UfoFoldedEllipsis = { fg = palette.surimiOrange },
            WinSeparator = { fg = theme.ui.float.fg_border },

            TelescopeTitle = { fg = theme.ui.special, bold = true },
            TelescopePromptBorder = { fg = theme.ui.float.fg_border, bg = "none" },
            TelescopeResultsBorder = { fg = theme.ui.float.fg_border, bg = "none" },
            TelescopePreviewBorder = { fg = theme.ui.float.fg_border, bg = "none" },

            TabLine = { bg = "none" },
            TabLineFill = { bg = "none" },
            StatusLine = { bg = "none" },

            LazyNormal = { bg = "none", fg = theme.ui.fg_dim },
            MasonNormal = { bg = "none", fg = theme.ui.fg_dim },
            Pmenu = { fg = theme.ui.shade0, bg = "none" }, -- add `blend = vim.o.pumblend` to enable transparency
            PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
            PmenuSbar = { bg = theme.ui.bg_m1 },
            PmenuThumb = { bg = theme.ui.bg_p2 },
          }
        end,
      }
    end,
  },
}
