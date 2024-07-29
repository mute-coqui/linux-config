-- TODO: find out why nvim_set_hl and disable background are not working ¯\_(ツ)_/¯
function ColorMyPencils(color)
	color = color or "kanagawa-wave"
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
	"rebelot/kanagawa.nvim",
	config = function()
		require("kanagawa").setup({
			ColorMyPencils()
		})
	end
}
