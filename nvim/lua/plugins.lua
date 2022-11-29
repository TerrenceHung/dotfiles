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

    use {
        'lewis6991/impatient.nvim',
        config = function()
            require('impatient')
        end
    }
    use {
        'cpea2506/one_monokai.nvim',
        config = function()
            vim.cmd.colorscheme 'one_monokai'
        end
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
    use 'm4xshen/autoclose.nvim'
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    use {
        'ojroques/nvim-hardline',
        config = function()
            require('hardline').setup {}
        end
    }
    use 'easymotion/vim-easymotion'
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
