return {
	"nvim-telescope/telescope.nvim",
	-- tag = "0.1.6",
	-- dependencies = {
	-- 	"nvim-lua/plenary.nvim",
	-- 	{
	-- 		"nvim-telescope/telescope-fzf-native.nvim",
	-- 		build = "cmake -S, -Bbuild -DCMAKE_BUILD_TYPE=Release && 
	-- 			cmake --build build --config Release && 
	-- 			cmake install --prefix build"
	-- 	},
	-- 	"nvim-tree/nvim-web-devicons"
	-- },
	-- config = function()
	-- 	local builtin = require("telescope.builtin")
	-- 	vim.keymap.set("n", "<leader>ff", bultin.find_files, {}),
	-- 	vim.keymap.set("n", "<leader>fg", bultin.live_grep, {}),
	-- 	vim.keymap.set("n", "<leader>fb", bultin.buffers, {}),
	-- 	vim.keymap.set("n", "<leader>fh", bultin.help_tags, {}),
	-- end
}
