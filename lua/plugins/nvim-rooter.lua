return {
  "notjedi/nvim-rooter.lua",
  config = function()
    require("nvim-rooter").setup({ rooter_patterns = { "mix.exs", ".git" } })
  end,
}
