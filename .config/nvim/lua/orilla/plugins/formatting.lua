return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  keys = {
    {
      "<leader>=",
      function()
        require("conform").format({ async = true, lsp_format = "fallback" })
      end,
      mode = "",
      desc = "[F]ormat buffer",
    },
  },
  opts = {
    notify_on_error = true,
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "black" },
      rust = { "rustfmt" },
      c = { "clang_format" },
      cpp = { "clang_format" },
      cuda = { "clang_format" },
    },
    formatters = {
      clang_format = {
        prepend_args = { "--style=file", "--fallback-style=Google" },
      },
    },
    format_on_save = {
      -- These options will be passed to conform.format()
      timeout_ms = 1000,
      async = false,
      lsp_format = "fallback",
    },
  },
}
