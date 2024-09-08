return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			size = 8, -- Начальный размер терминала в строках (или в процентах для float)
			open_mapping = [[<leader>tt]], -- Клавиша для открытия терминала (настраиваемая)
			hide_numbers = true, -- Скрыть номер строк в буфере терминала
			shade_filetypes = {},
			shade_terminals = true,
			shading_factor = "1", -- Темнее терминал (значение от 1 до 3)
			start_in_insert = true,
			insert_mappings = true, -- Использовать insert mode mappings
			terminal_mappings = true, -- Использовать terminal mode mappings
			persist_size = true, -- Сохранять размер терминала между сессиями
			direction = "horizontal", -- Открывать терминал горизонтально внизу
			close_on_exit = true, -- Закрывать терминал при выходе из шелла
			shell = vim.o.shell, -- Использовать текущую оболочку
			float_opts = {
				border = "curved", -- Стиль рамки
				winblend = 0,
				highlights = {
					border = "Normal",
					background = "Normal",
				},
			},
		})
	end,
}
