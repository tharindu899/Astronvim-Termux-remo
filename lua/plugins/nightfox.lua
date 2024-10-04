-- ~/.config/nvim/lua/plugins/nightfox.lua
return {
  {
    "EdenEast/nightfox.nvim",
    config = function()
      require('nightfox').setup({
        options = {
          styles = {
            comments = "italic",
            keywords = "bold",
            functions = "bold",
          },
        },
      })
      -- No need for vim.cmd("colorscheme nightfox"), AstroNvim handles it
    end,
  }
}

