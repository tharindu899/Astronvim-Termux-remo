return {
  -- Define the plugin using lazy.nvim format
  "catppuccin/nvim",
  name = "catppuccin",
  config = function()
    -- Plugin setup according to catppuccin documentation
    require("catppuccin").setup({
      flavour = "mocha", -- Options: "latte", "frappe", "macchiato", "mocha"
      background = {
        light = "latte",
        dark = "macchiato",
      },
    })
    -- Set the colorscheme
    vim.cmd("colorscheme catppuccin")
  end,
}
