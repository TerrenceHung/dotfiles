local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  vim.cmd([[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
    augroup end
  ]])

  use {
    'lewis6991/impatient.nvim',
    config = function()
      require('impatient')
    end
  }

  -- UI
  use {
    'cpea2506/one_monokai.nvim',
    config = function()
      vim.cmd.colorscheme 'one_monokai'
    end
  }
  use {
    'ojroques/nvim-hardline',
    config = function()
      require('hardline').setup()
    end
  }

  -- Editor
  use 'm4xshen/autoclose.nvim'
  use 'easymotion/vim-easymotion'
  use 'tpope/vim-sleuth'
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }
  use {
    'cappyzawa/trim.nvim',
    config = function()
      require('trim').setup({
        patterns = {
          [[%s/\(\n\n\)\n\+/\1/]],   -- replace multiple blank lines with a single line
        },
      })
    end
  }

  -- Misc
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end
  }
  use {
    'gelguy/wilder.nvim',
    config = function()
      local wilder = require('wilder')
      wilder.setup({modes = {':', '/', '?'}})
    end
  }
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  }

  if packer_bootstrap then
    require('packer').sync()
  end
end)
