return {
	{
		"scottmckendry/cyberdream.nvim",
		lazy = false,
		priority = 1000,

		config = function()
			vim.cmd.colorscheme('cyberdream-muted')
			require'lualine'.setup {
				  options = {
				    theme = 'cyberdream'
				  }
				}
		end
	}
}
