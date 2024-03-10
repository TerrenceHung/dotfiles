return {
  -- UI
  {
    "cpea2506/one_monokai.nvim",
    config = function()
      vim.cmd([[colorscheme one_monokai]])
    end
  },
  {
    "ojroques/nvim-hardline",
    opts = {},
  },

  -- Editor
  "m4xshen/autoclose.nvim",
  "easymotion/vim-easymotion",
  "tpope/vim-sleuth",
  {
    "numToStr/Comment.nvim",
    opts = {},
  },
  {
    "cappyzawa/trim.nvim",
    opts = {
      patterns = {
        [[%s/\(\n\n\)\n\+/\1/]],   -- replace multiple blank lines with a single line
      },
    },
  },

  -- Misc
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },
  {
    "gelguy/wilder.nvim",
    opts = {
      modes = {":", "/", "?"},
    },
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = {},
    lazy = true,
  }
}
