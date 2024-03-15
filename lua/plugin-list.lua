-- 所有插件都放在这里
return {
  -------------------------- plugins -------------------------------------------
  {
    "rcarriga/nvim-notify",
    config = function()
      require("plugins.nvim-notify")
    end,
  },
  {
    "kyazdani42/nvim-tree.lua",
    config = function()
      require("plugins.nvim-tree")
    end,
  },
  {
    "akinsho/bufferline.nvim",
    config = function()
      require("plugins.bufferline")
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("plugins.lualine")
    end,
  },
  {
    "unblevable/quick-scope",
  },
  {
    "easymotion/vim-easymotion",
    config = function()
      require("plugins.easymotion")
    end,
  },
  { "vim-scripts/ReplaceWithRegister" },
  {
    "karb94/neoscroll.nvim",
    config = function()
      require("neoscroll").setup({
        mappings = { "<C-u>", "<C-d>", "<C-b>", "<C-y>", "<C-e>", "zt", "zz", "zb" }, -- 移除对<C-f>的映射，留给nvim-tree
      })
    end,
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
  {
    "HiPhish/rainbow-delimiters.nvim",
    config = function()
      require("plugins.rainbow-delimiters")
    end,
  },
  {
    "numToStr/Comment.nvim",
    config = function()
      require("plugins.comment")
    end,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = function()
      require("plugins.indent-blankline")
    end,
  },
  {
    "voldikss/vim-floaterm",
    config = function()
      require("plugins.floaterm")
    end,
  },
  -- {
  -- 	'gen740/SmoothCursor.nvim',
  -- 	config = function()
  -- 		require('plugins.smooth-cursor')
  -- 	end
  -- },
  {
    "folke/tokyonight.nvim",
    config = function()
      require("plugins.tokyonight")
    end,
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("plugins.gitsigns")
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("plugins.telescope")
    end,
  },
  {
    "yianwillis/vimcdoc",
    -- 中文文档插件（需要克隆文档参考https://github.com/yianwillis/vimcdocF
  },
  {
    "tpope/vim-surround",
  },
  {
    -- 格式化插件
    "sbdchd/neoformat",
    config = function()
      vim.cmd("command! Format Neoformat")
    end,
  },
  {
    -- lsp的配置
    "neovim/nvim-lspconfig",
  },
  {
    -- 折叠插件
    "kevinhwang91/nvim-ufo",
    dependencies = {
      "kevinhwang91/promise-async",
    },
    config = function()
      require("plugins.nvim-ufo")
    end,
  },
}
