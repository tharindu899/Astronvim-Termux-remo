-- Remove the warning line to activate this file
-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize None-ls sources

---@type LazySpec
return {
  "nvimtools/none-ls.nvim",
  opts = function(_, opts)
    -- opts variable is the default configuration table for the setup function call

    -- Check supported formatters and linters
    -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics

    -- Only insert new sources, do not replace the existing ones
    -- (If you wish to replace, use `opts.sources = {}` instead of the `list_insert_unique` function)
    opts.sources = require("astrocore").list_insert_unique(opts.sources, {
      -- Add clang-format as a formatter
      require("null-ls").builtins.formatting.clang_format.with({
        filetypes = { "c", "cpp", "objc", "objcpp" }, -- Specify the filetypes for clang-format
      }),
      -- Add stylua as a formatter
      require("null-ls").builtins.formatting.stylua.with({
        filetypes = { "lua" }, -- Specify the filetypes for stylua
        command = "/data/data/com.termux/files/usr/bin/stylua", -- specify the path to stylua if necessary
      }),
    })
  end,
}
