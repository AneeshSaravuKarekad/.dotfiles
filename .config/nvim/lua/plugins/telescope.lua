return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		-- native telescope sorter to improve performance
		{
			"nvim-telescope/telescope-fzf-native.nvim",

			-- `build` is used to run some command when the plugin is installed/updated.
			-- This is only run then, not every time Neovim starts up.
			build = "make",

			-- `cond` is a condition used to determine whether this plugin should be
			-- installed and loaded.
			cond = function()
				return vim.fn.executable("make") == 1
			end,
		},
		-- Useful for getting pretty icons, but requires a Nerd Font.
		{ "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
	},
	opts = {
		pickers = {
			colorscheme = {
				enable_preview = true,
			},
		},
	},
	config = function()
		require("telescope").setup({
			pickers = {
				colorscheme = {
					enable_preview = true,
				},
			},
			-- ["ui-select"] = {
			-- 	require("telescope.themes").get_dropdown(),
			-- },
		})

		local set = vim.keymap.set
		local builtin = require("telescope.builtin")

		set("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
		set("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
		set("n", "<leader>sf", builtin.find_files, { desc = "[S]earch [F]iles" })
		set("n", "<leader>sw", builtin.grep_string, { desc = "[S]earch current [W]ord" })
		set("n", "<leader>sg", builtin.live_grep, { desc = "[S]earch [G]rep" })
		set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
		set("n", "<leader>sr", builtin.resume, { desc = "[S]earch [R]esume" })
		set("n", "<leader>so", builtin.oldfiles, { desc = "[S]earch [O]ld Files" })
		set("n", "<leader>sb", builtin.buffers, { desc = " [S]earch existing [B]uffers" })
		set("n", "<leader>sc", builtin.colorscheme, { desc = "[S]earch [C]olorscheme" })
	end,
}
