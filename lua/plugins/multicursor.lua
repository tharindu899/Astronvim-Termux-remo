return {
  "smoka7/multicursors.nvim",
  event = "VeryLazy",
  dependencies = { "smoka7/hydra.nvim" },
  opts = {},
  keys = {
    {
      mode = { "v", "n" },
      "<Leader>m",
      "<Cmd>MCstart<CR>",
      desc = "multicursor",
    },
  },
}
