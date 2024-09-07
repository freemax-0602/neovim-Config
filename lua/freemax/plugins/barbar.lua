-- lua/plugins/barbar.lua
return {
  {
    "romgrk/barbar.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },  -- Необязательно, но добавляет иконки
    config = function()
      -- Ваши настройки для barbar.nvim, если они нужны
      vim.g.bufferline = {
        -- пример настроек
        animation = true,
        auto_hide = false,
        tabpages = true,
        closable = true,
        clickable = true,
        icons = 'both',
        icon_separator_active = '▎',
        icon_separator_inactive = '▎',
        icon_close_tab = '',
        icon_close_tab_modified = '●',
        icon_pinned = '車',
      }
    end
  }
}
