return {
  {
    "xero/miasma.nvim",
    lazy = false,
    priority = 1000,
    config = function()
    end,
  },
  { "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        integrations = {
          term = true,
        },
      vim.cmd("colorscheme catppuccin")
    end,
  },
}

