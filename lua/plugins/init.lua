return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "saadparwaiz1/cmp_luasnip",
      "L3MON4D3/LuaSnip",
    },
    config = function()
      require "configs.cmp"   -- ⭐ 这里加载你写的 cmp.lua
    end,
  },
  {
    "L3MON4D3/LuaSnip",
    event = { "BufReadPre", "BufNewFile" },
  },
  {
    'sheerun/vim-polyglot',
    event = { "BufReadPre", "BufNewFile" },
  },
  {
    "preservim/tagbar",
    event = { "BufReadPre", "BufNewFile" },
  },
  {
    "numToStr/Comment.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require('Comment').setup()
    end
  },

  {
    "mfussenegger/nvim-dap",
    event = { "BufReadPre", "BufNewFile" },
  },
  {
    "nvim-neotest/nvim-nio",
    event = { "BufReadPre", "BufNewFile" },
  },
  {
    "mfussenegger/nvim-dap-python",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require "configs.dap_python"
    end,
  },
  {
    "rcarriga/nvim-dap-ui",
    event = { "BufReadPre", "BufNewFile" },
  },
  {
    "theHamsta/nvim-dap-virtual-text",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require "configs.dap_config"
      require "configs.dap_cpp"
    end,
  },
  {
    "nvim-telescope/telescope-live-grep-args.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = function()
      require("telescope").load_extension("live_grep_args")
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
