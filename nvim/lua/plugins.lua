return {
  "lewis6991/impatient.nvim",
  {
    "cpea2506/one_monokai.nvim",
    config = function()
      vim.cmd([[colorscheme one_monokai]])
    end
  },
  {
    "ojroques/nvim-hardline",
    config = function()
      require("hardline").setup()
    end
  },
  "m4xshen/autoclose.nvim",
  "easymotion/vim-easymotion",
  "tpope/vim-sleuth",
  "numToStr/Comment.nvim",
  {
    "cappyzawa/trim.nvim",
    opts = {
      patterns = {
        [[%s/\(\n\n\)\n\+/\1/]],   -- replace multiple blank lines with a single line
      },
    },
  },
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
    config = function()
      require("gitsigns").setup()
    end
  }
}
