return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl", -- указываем основное пространство имен для версии 3
	config = function()
		require("ibl").setup({
			indent = { char = "┊" }, -- Настройка символа для отображения отступов
			scope = { enabled = true, show_start = true }, -- Показ текущего контекста
			exclude = {
				filetypes = { "help", "dashboard", "nvim-tree", "packer" }, -- Исключаем из отображения в некоторых файлах
			},
		})
	end,
}
