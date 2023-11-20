return {
  "elixir-tools/elixir-tools.nvim",
  lazy = true,
  ft = { "elixir", "heex", "eelixir" },
  config = function()
    local elixir = require("elixir")
    local elixirls = require("elixir.elixirls")

    elixir.setup({
      credo = { enable = true },
      nextls = { enable = false, init_options = { experimental = { completions = { enable = true } } } },
      elixirls = {
        tag = "v0.17.1",
        enable = true,
        settings = elixirls.settings({
          fetchDeps = false,
          dialyzerEnabled = false,
          enableTestLenses = true,
        }),
      },
    })
  end,
  dependencies = {
    "folke/which-key.nvim",
    "nvim-lua/plenary.nvim",
  },
}
