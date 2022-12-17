local autocmd = vim.cmd



M.options = require "custom.options"

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })


-- vim.cmd[[
--   augroup cursor_moved
--     autocmd hi linenr guifg=green
--   augroup end
-- ]]
