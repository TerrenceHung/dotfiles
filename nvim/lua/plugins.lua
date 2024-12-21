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
  {
    "smoka7/hop.nvim",
    version = "*",
    opts = {
      keys = "etovxqpdygfblzhckisuran"
    },
    init = function()
      local hop = require("hop")
      local directions = require("hop.hint").HintDirection
      vim.keymap.set("", "<Leader><Leader>w", function()
        hop.hint_words({ direction = directions.AFTER_CURSOR })
      end, { remap=true })
      vim.keymap.set("", "<Leader><Leader>b", function()
        hop.hint_words({ direction = directions.BEFORE_CURSOR })
      end, { remap=true })
    end
  },
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
    "lewis6991/gitsigns.nvim",
    opts = {},
    lazy = true,
  }
}
