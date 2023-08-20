return {
  {
    "catppuccin/nvim",
    -- config = function()
    --   require("catppuccin").setup({
    --     dimInactive = { enabled = true, shade = "dark", percentage = 0.50 },
    --   })
    -- end,
    lazy = true,
    name = "catppuccin",
    opts = {
      flavour = "macchiato",
      integrations = {
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        flash = true,
        neotree = true,
        neotest = true,
        telescope = true,
        which_key = true,
      },
      dim_inactive = {
        enabled = true, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.01, -- percentage of the shade to apply to the inactive window
      },
    },
  },
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
      light_style = "day",
    },
  },
  {
    "rebelot/kanagawa.nvim",
    config = function()
      require("kanagawa").setup({
        dimInactive = true, -- dim inactive window `:h hl-NormalNC`
        theme = "dragon", -- Load "wave" theme when 'background' option is not set
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
