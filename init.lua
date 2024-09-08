require("freemax.settings")
require("freemax.maps")
require("freemax.lazy")

-- Открытие NeoTree и ToggleTerm при запуске с уменьшенными размерами и установкой фокуса на редактор
vim.cmd([[
  augroup OpenWindowsOnStart
    autocmd!
    " Открытие ToggleTerm с уменьшенным размером
    autocmd VimEnter * ToggleTerm

  " Открытие NeoTree с меньшей шириной
    autocmd VimEnter * Neotree toggle

     augroup END
]])
