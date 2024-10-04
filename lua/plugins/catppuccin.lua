-- ~/.config/nvim/lua/plugins/catppuccin.lua
return {
  "catppuccin/nvim",
  name = "catppuccin",
  config = function()
    require("catppuccin").setup({
      flavour = "mocha", -- Options: "latte", "frappe", "macchiato", "mocha"
      background = {
        light = "latte",
        dark = "macchiato",
      },
    })
    -- No need for vim.cmd("colorscheme ..."), AstroNvim handles it
  end,
}

