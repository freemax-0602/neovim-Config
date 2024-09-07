return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- для иконок
		"MunifTanjim/nui.nvim", -- для пользовательских интерфейсов
	},
	config = function()
		require("neo-tree").setup({
			filesystem = {
				follow_current_file = true,
				hijack_netrw_behavior = "open_current",
				use_libuv_file_watcher = true,
				window = {
					mappings = {
						["<CR>"] = "open",
						["o"] = "open",
						["<2-LeftMouse>"] = "open",
						["S"] = "split_with_window_picker",
						["s"] = "vsplit_with_window_picker",
						["t"] = "open_tabnew",
						["C"] = "close_node",
						["z"] = "close_all_nodes",
						["R"] = "refresh",
						["a"] = { "add", config = { show_path = "relative" } }, -- Добавление файлов/директорий
						["A"] = "add_directory", -- Добавление директории
						["d"] = "delete", -- Удаление файлов/директорий
						["r"] = "rename", -- Переименование файлов/директорий
						["m"] = "move", -- Перемещение файлов/директорий
						["c"] = "copy", -- Копирование файлов/директорий
						["q"] = "close_window",
						["?"] = "show_help",
					},
				},
			},
		})
	end,
}
