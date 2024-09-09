return {
	{
		"romgrk/barbar.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			-- Настройка barbar.nvim
			vim.g.bufferline = {
				animation = true,
				auto_hide = false,
				tabpages = true,
				closable = true,
				clickable = true,
				icons = "both",
				icon_separator_active = "▎",
				icon_separator_inactive = "▎",
				icon_close_tab = "",
				icon_close_tab_modified = "●",
				icon_pinned = "車",
			}

			-- Пример настройки цветов для вкладок
			-- Вы можете настроить цветовую схему по своему вкусу
			vim.cmd([[
        highlight BufferCurrent guifg=#ffffff guibg=#1e1e1e gui=bold
        highlight BufferCurrentIndex guifg=#ffffff guibg=#1e1e1e
        highlight BufferCurrentMod guifg=#ff0000 guibg=#1e1e1e
        highlight BufferVisible guifg=#b0b0b0 guibg=#2e2e2e
        highlight BufferVisibleIndex guifg=#b0b0b0 guibg=#2e2e2e
        highlight BufferVisibleMod guifg=#ff0000 guibg=#2e2e2e
        highlight BufferInactive guifg=#6c6c6c guibg=#2e2e2e
        highlight BufferInactiveIndex guifg=#6c6c6c guibg=#2e2e2e
        highlight BufferInactiveMod guifg=#ff0000 guibg=#2e2e2e
      ]])
		end,
	},
}
