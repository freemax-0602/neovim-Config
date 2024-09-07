return {
	"TimUntersberger/neogit",
	dependencies = { "nvim-lua/plenary.nvim" }, -- Необходимая зависимость
	config = function()
		require("neogit").setup({
			integrations = {
				diffview = true, -- интеграция с diffview для просмотра различий
			},
		})
	end,
}
