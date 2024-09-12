-- ~/.config/nvim/lua/plugins/rainbow-delimiters.lua
return {
  {
    "hiphish/rainbow-delimiters.nvim",
    config = function()
      local rainbow_delimiters = require('rainbow-delimiters')
      -- Define the custom colors
      vim.api.nvim_set_hl(0, "RainbowDelimiterDarkRed", { fg = "#ff2c2c", bold = true })      -- Dark Red
      vim.api.nvim_set_hl(0, "RainbowDelimiterDarkYellow", { fg = "#FFE761", bold = true })   -- Dark Yellow
      vim.api.nvim_set_hl(0, "RainbowDelimiterDarkBlue", { fg = "#2a9df4", bold = true })     -- Dark Blue
      vim.api.nvim_set_hl(0, "RainbowDelimiterDarkOrange", { fg = "#FFA652", bold = true })   -- Dark Orange
      vim.api.nvim_set_hl(0, "RainbowDelimiterDarkGreen", { fg = "#39f077", bold = true })    -- Dark Green
      vim.api.nvim_set_hl(0, "RainbowDelimiterDarkViolet", { fg = "#924dbf", bold = true })   -- Dark Violet
      vim.api.nvim_set_hl(0, "RainbowDelimiterDarkCyan", { fg = "#33c7d8", bold = true })     -- Dark Cyan

      -- Configure rainbow delimiters
      vim.g.rainbow_delimiters = {
        strategy = {
          [''] = rainbow_delimiters.strategy['global'],
          vim = rainbow_delimiters.strategy['local'],
        },
        query = {
          [''] = 'rainbow-delimiters',
          lua = 'rainbow-blocks',
        },
        highlight = {
          'RainbowDelimiterDarkRed',
          'RainbowDelimiterDarkYellow',
          'RainbowDelimiterDarkBlue',
          'RainbowDelimiterDarkOrange',
          'RainbowDelimiterDarkGreen',
          'RainbowDelimiterDarkViolet',
          'RainbowDelimiterDarkCyan',
        },
      }
    end,
  },
}

