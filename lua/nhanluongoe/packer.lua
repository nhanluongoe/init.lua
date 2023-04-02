-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- fuzzy finder
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- use({
	-- 	"navarasu/onedark.nvim",
	-- 	as = "onedark",
	-- })

	use({ "rebelot/kanagawa.nvim", as = "kanagawa" })

	-- indent indicator
	use("lukas-reineke/indent-blankline.nvim")

	-- bufferline
	use({ "akinsho/bufferline.nvim", tag = "v3.*", requires = "nvim-tree/nvim-web-devicons" })

	-- syntax highlighting
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })

	-- navigate between files
	use("theprimeagen/harpoon")

	-- undo history
	use("mbbill/undotree")

	-- git-related
	use("lewis6991/gitsigns.nvim")

	-- handle surroundings: parentheses, brackets, quotes, XML tags, and more
	use("tpope/vim-surround")

	-- lsp
	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v1.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{ "williamboman/mason.nvim" }, -- Optional
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" }, -- Required
			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
			{ "hrsh7th/cmp-buffer" }, -- Optional
			{ "hrsh7th/cmp-path" }, -- Optional
			{ "saadparwaiz1/cmp_luasnip" }, -- Optional
			{ "hrsh7th/cmp-nvim-lua" }, -- Optional

			-- Snippets
			{ "L3MON4D3/LuaSnip" }, -- Required
			{ "rafamadriz/friendly-snippets" }, -- Optional
		},
	})

  -- github copilot
  use({ "github/copilot.vim" })

	-- bottom information line
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})

	-- auto closing
	use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
	use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags

	-- formatting & linting
	use("jose-elias-alvarez/null-ls.nvim") -- configure formatters & linters
	use("jayp0521/mason-null-ls.nvim") -- bridges gap b/w mason & null-ls

	-- commenting
	use("numToStr/Comment.nvim")

	-- split window navigator
	use("christoomey/vim-tmux-navigator")
	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
		config = function()
			require("toggleterm").setup()
		end,
	})

	-- file explorer
	use("nvim-tree/nvim-tree.lua")

	-- file type icon
	use("nvim-tree/nvim-web-devicons")

  -- vim-go
  use({ "fatih/vim-go", run = ":GoUpdateBinaries" })
end)
