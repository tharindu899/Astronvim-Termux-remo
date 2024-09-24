-- ~/.config/nvim/lua/plugins/rainbow-delimiters.lua
return {
  {
    "HiPhish/rainbow-delimiters.nvim",
    event = "BufRead",  -- Loads the plugin when a buffer is read
    config = function()
      -- Import the rainbow-delimiters library
      local rainbow_delimiters = require("rainbow-delimiters")

      -- Define custom colors for rainbow delimiters
      vim.api.nvim_set_hl(0, "RainbowDelimiterDarkRed", { fg = "#ff2c2c", bold = false })
      vim.api.nvim_set_hl(0, "RainbowDelimiterDarkYellow", { fg = "#FFE761", bold = false })
      vim.api.nvim_set_hl(0, "RainbowDelimiterDarkBlue", { fg = "#2a9df4", bold = false })
      vim.api.nvim_set_hl(0, "RainbowDelimiterDarkOrange", { fg = "#FFA652", bold = false })
      vim.api.nvim_set_hl(0, "RainbowDelimiterDarkGreen", { fg = "#39f077", bold = false })
      vim.api.nvim_set_hl(0, "RainbowDelimiterDarkViolet", { fg = "#924dbf", bold = false })
      vim.api.nvim_set_hl(0, "RainbowDelimiterDarkCyan", { fg = "#3337d8", bold = false })

      -- Configure rainbow delimiters
      vim.g.rainbow_delimiters = {
        strategy = {
          [''] = rainbow_delimiters.strategy["global"],
          vim = rainbow_delimiters.strategy["local"],
        },
        query = {
          [''] = "rainbow-delimiters",
          lua = "rainbow-blocks",
        },
        highlight = {
          "RainbowDelimiterDarkRed",
          "RainbowDelimiterDarkYellow",
          "RainbowDelimiterDarkBlue",
          "RainbowDelimiterDarkOrange",
          "RainbowDelimiterDarkGreen",
          "RainbowDelimiterDarkViolet",
          "RainbowDelimiterDarkCyan",
        },
      }
    end,
  }
}
