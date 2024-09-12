return {
  "AstroNvim/astrolsp",
  opts = {
    features = {
      codelens = true,
      inlay_hints = false,
      semantic_tokens = true,
    },
    formatting = {
      format_on_save = {
        enabled = true,
        allow_filetypes = { "c", "cpp", "objc", "objcpp", "json", "jq", "rust" }, -- Add Rust filetype
      },
      timeout_ms = 1000,
    },
    servers = {
      "lua_ls",        -- Added lua-language-server
      "clangd",        -- Added clangd
      "ccls",          -- Added ccls
      "jq_lsp",        -- Added jq_lsp
      "rust_analyzer", -- Added rust-analyzer
    },
    config = {
      clangd = {
        capabilities = {
          offsetEncoding = { "utf-16" },
        },
        cmd = { "/data/data/com.termux/files/usr/bin/clangd" },
        filetypes = { "c", "cpp", "objc", "objcpp" },
        settings = {
          clangd = {
            format = {
              style = "file",
            },
          },
        },
      },
      ccls = {
        capabilities = {
          offsetEncoding = { "utf-16" },
        },
        cmd = { "/data/data/com.termux/files/usr/bin/ccls" },
        filetypes = { "c", "cpp", "objc", "objcpp" },
        settings = {
          ccls = {
            cache = {
              directory = ".ccls-cache",
            },
          },
        },
      },
      jq_lsp = {
        cmd = { "/data/data/com.termux/files/usr/bin/jq-lsp" }, -- Set jq-lsp binary path
        filetypes = { "json", "jq" },
        root_dir = require("lspconfig").util.root_pattern(".git", vim.fn.getcwd()),
      },
      rust_analyzer = {
        cmd = { "/data/data/com.termux/files/usr/bin/rust-analyzer" }, -- Set rust-analyzer binary path
        filetypes = { "rust" },
        root_dir = require("lspconfig").util.root_pattern("Cargo.toml", ".git", vim.fn.getcwd()), -- Use Cargo.toml as root
        settings = {
          ["rust-analyzer"] = {
            assist = {
              importMergeBehavior = "last",
              importPrefix = "by_self",
            },
            cargo = {
              loadOutDirsFromCheck = true,
            },
            procMacro = {
              enable = true,
            },
          },
        },
      },
      lua_ls = {
        cmd = { "/data/data/com.termux/files/usr/bin/lua-language-server" },
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
            workspace = {
              library = vim.api.nvim_get_runtime_file("", true),
              checkThirdParty = false,
            },
            telemetry = { enable = false },
          },
        },
      },
    },
    handlers = {
      function(server, opts)
        require("lspconfig")[server].setup(opts)
      end,
    },
    autocmds = {
      lsp_codelens_refresh = {
        cond = "textDocument/codeLens",
        {
          event = { "InsertLeave", "BufEnter" },
          desc = "Refresh codelens (buffer)",
          callback = function(args)
            if require("astrolsp").config.features.codelens then
              vim.lsp.codelens.refresh { bufnr = args.buf }
            end
          end,
        },
      },
    },
    mappings = {
      n = {
        gD = {
          function() vim.lsp.buf.declaration() end,
          desc = "Declaration of current symbol",
        },
        ["<Leader>uY"] = {
          function() require("astrolsp.toggles").buffer_semantic_tokens() end,
          desc = "Toggle LSP semantic highlight (buffer)",
        },
      },
    },
    on_attach = function(client, bufnr)
      -- Optional: Simplified on_attach function
    end,
  },
}
