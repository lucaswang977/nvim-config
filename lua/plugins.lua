return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme tokyonight-night]])
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("lualine").setup()
		end,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
	},
	{
		"numToStr/Comment.nvim",
		opts = {},
		lazy = false,
		config = function()
			require("Comment").setup()
		end,
	},
	{
		"nvim-tree/nvim-tree.lua",
		lazy = true,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
	},
	{
		"akinsho/bufferline.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("bufferline").setup()
		end,
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("nvim-autopairs").setup({
				disable_filetype = { "TelescopePrompt", "vim" },
			})
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		lazy = false,
		config = function()
			require("ibl").setup()
		end,
	},
	{
		"goolord/alpha-nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("alpha").setup(require("alpha.themes.startify").config)
		end,
	},
	{
		"ojroques/nvim-oscyank",
		config = function()
			vim.keymap.set("v", "<leader>y", require("osc52").copy_visual)
		end,
	},
	{
		"ggandor/leap.nvim",
		dependencies = { "tpope/vim-repeat" },
		config = function()
			require("leap").add_default_mappings()
		end,
	},
	{
		"ellisonleao/glow.nvim",
		config = true,
		cmd = "Glow",
	},
	{
		"simrat39/symbols-outline.nvim",
		config = function()
			require("symbols-outline").setup({
				autofold_depth = 0,
			})
		end,
	},
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		dependencies = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{ "williamboman/mason.nvim" }, -- Optional
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" }, -- Required
			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
			{ "L3MON4D3/LuaSnip" }, -- Required
		},
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local configs = require("nvim-treesitter.configs")
			configs.setup({
				ensure_installed = {
					"lua",
					"vim",
					"vimdoc",
					"query",
					"javascript",
					"html",
					"typescript",
					"tsx",
					"kdl",
					"prisma",
				},
				sync_install = false,
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},
	{
		"HiPhish/rainbow-delimiters.nvim",
		config = function()
			local rainbow_delimiters = require("rainbow-delimiters")

			vim.g.rainbow_delimiters = {
				strategy = {
					[""] = rainbow_delimiters.strategy["global"],
					vim = rainbow_delimiters.strategy["local"],
				},
				query = {
					[""] = "rainbow-delimiters",
					lua = "rainbow-blocks",
				},
				highlight = {
					"RainbowDelimiterRed",
					"RainbowDelimiterYellow",
					"RainbowDelimiterBlue",
					"RainbowDelimiterOrange",
					"RainbowDelimiterGreen",
					"RainbowDelimiterViolet",
					"RainbowDelimiterCyan",
				},
			}
		end,
	},
	{
		"levouh/tint.nvim",
		config = function()
			require("tint").setup({
				tint = -60, -- Darken colors, use a positive value to brighten
				saturation = 0.4, -- Saturation to preserve
				transforms = require("tint").transforms.SATURATE_TINT, -- Showing default behavior, but value here can be predefined set of transforms
				tint_background_colors = true, -- Tint background portions of highlight groups
				highlight_ignore_patterns = { "WinSeparator", "Status.*" }, -- Highlight group patterns to ignore, see `string.find`
				window_ignore_function = function(winid)
					local bufid = vim.api.nvim_win_get_buf(winid)
					local buftype = vim.api.nvim_buf_get_option(bufid, "buftype")
					local floating = vim.api.nvim_win_get_config(winid).relative ~= ""

					-- Do not tint `terminal` or floating windows, tint everything else
					return buftype == "terminal" or floating
				end,
			})
		end,
	},
	{
		"stevearc/conform.nvim",
		opts = {},
		config = function()
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
					javascript = { { "prettierd", "prettier" } },
					json = { "jq" },
				},
			})

			vim.api.nvim_create_autocmd("BufWritePre", {
				pattern = "*",
				callback = function(args)
					require("conform").format({ bufnr = args.buf })
				end,
			})
		end,
	},
	{
		"vladdoster/remember.nvim",
		config = [[ require('remember') ]],
	},
	{
		"gbprod/yanky.nvim",
		config = function()
			require("yanky").setup({})
		end,
	},
	{
		"fedepujol/move.nvim",
	},
	{
		"moll/vim-bbye",
	},
	{
		"kylechui/nvim-surround",
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	},
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end,
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	},
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
	},
	{
		"robitx/gp.nvim",
		config = function()
			require("gp").setup({
				agents = {
					{
						name = "ChatGPT3-5",
						chat = true,
						command = false,
						-- string with model name or table with model name and parameters
						model = { model = "gpt-3.5-turbo-1106", temperature = 1.1, top_p = 1 },
						-- system prompt (use this to specify the persona/role of the AI)
						system_prompt = "You are a general AI assistant.\n\n"
							.. "The user provided the additional info about how they would like you to respond:\n\n"
							.. "- If you're unsure don't guess and say you don't know instead.\n"
							.. "- Ask question if you need clarification to provide better answer.\n"
							.. "- Think deeply and carefully from first principles step by step.\n"
							.. "- Zoom out first to see the big picture and then zoom in to details.\n"
							.. "- Use Socratic method to improve your thinking and coding skills.\n"
							.. "- Don't elide any code from your output if the answer requires coding.\n"
							.. "- Take a deep breath; You've got this!\n",
					},
					{
						name = "CodeGPT3-5",
						chat = false,
						command = true,
						-- string with model name or table with model name and parameters
						model = { model = "gpt-3.5-turbo-1106", temperature = 0.8, top_p = 1 },
						-- system prompt (use this to specify the persona/role of the AI)
						system_prompt = "You are an AI working as a code editor.\n\n"
							.. "Please AVOID COMMENTARY OUTSIDE OF THE SNIPPET RESPONSE.\n"
							.. "START AND END YOUR ANSWER WITH:\n\n```",
					},
				},
			})

			-- or setup with your own config (see Install > Configuration in Readme)
			-- require("gp").setup(conf)

			-- shortcuts might be setup here (see Usage > Shortcuts in Readme)
		end,
	},
	{
		"rmagatti/auto-session",
		config = function()
			require("auto-session").setup({
				log_level = "error",
				auto_session_suppress_dirs = { "~/", "/" },
				auto_restore_enabled = false,
			})
		end,
	},
	{
		"smjonas/inc-rename.nvim",
		config = function()
			require("inc_rename").setup()
		end,
	},
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			-- add any options here
		},
		dependencies = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			"MunifTanjim/nui.nvim",
			-- OPTIONAL:
			--   `nvim-notify` is only needed, if you want to use the notification view.
			--   If not available, we use `mini` as the fallback
			"rcarriga/nvim-notify",
		},
		config = function()
			require("noice").setup({
				presets = {
					bottom_search = true,
					inc_rename = true,
					lsp_doc_border = true,
				},
				routes = {
					{
						filter = { find = "No information available" },
						opts = { skip = true },
					},
					{
						filter = { find = "clipboard: No provider" },
						opts = { skip = true },
					},
					{
						filter = { find = "error invoking xclip" },
						opts = { skip = true },
					},
				},
			})
		end,
	},
}
