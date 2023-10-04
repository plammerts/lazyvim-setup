return {
  "elixir-tools/elixir-tools.nvim",
  lazy = true,
  ft = { "elixir", "heex", "eelixir" },
  config = function()
    local elixir = require("elixir")
    local elixirls = require("elixir.elixirls")

    elixir.setup({
      credo = { enable = true },
      elixirls = {
        tag = "v0.16.0",
        enable = true,
        settings = elixirls.settings({
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
