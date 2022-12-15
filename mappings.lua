local M = {}

M.general = {
  n = {
    [";"] = { ":", "command mode", opts = { nowait = true } },
    ["<CR>"] = { "<cmd> w <CR>", "save file" },
    ["<C-c>"] = { "<cmd> noh <CR>", "no highlight" },
    ["<C-k>"] = { "<cmd>Lspsaga peek_definition<CR>", "lsp finder" },
    ["ca"] = { "<cmd>Lspsaga code_action<CR>", "code action" },
    ["gh"] = { "<cmd>Lspsaga lsp_finder<CR>", "no highlight" },
    ["<leader>ra"] = { 'y:%s/<c-r><c-w>//g<Left><Left>', "Replace Text" },
    ["<leader>r"] = { 'y:%s/<c-r><c-w>//gc<Left><Left><Left>', "Replace Text" },
    ["ge"]= {"<cmd>Lspsaga diagnostic_jump_next<CR>","SAMPLE"},
  },
}
M.telescope = {
  plugin = true,

  n = {
    -- find
    ["<C-f>"] = { "<cmd> Telescope find_files <CR>", "find files" },
    ["<leader>fa"] = { "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", "find all" },
    ["<leader>fw"] = { "<cmd> Telescope live_grep <CR>", "live grep" },
    ["<leader>fb"] = { "<cmd> Telescope buffers <CR>", "find buffers" },
    ["<leader>fh"] = { "<cmd> Telescope help_tags <CR>", "help page" },
    ["<leader>fo"] = { "<cmd> Telescope oldfiles <CR>", "find oldfiles" },
    ["<leader>tk"] = { "<cmd> Telescope keymaps <CR>", "show keys" },

    -- git
    ["<leader>cm"] = { "<cmd> Telescope git_commits <CR>", "git commits" },
    ["<leader>gt"] = { "<cmd> Telescope git_status <CR>", "git status" },

    -- pick a hidden term
    ["<leader>pt"] = { "<cmd> Telescope terms <CR>", "pick hidden term" },

    -- theme switcher
    ["<C-t>"] = { "<cmd> Telescope git_branches <CR>", "Git Branches" },
    ["<C-s>"] = { "<cmd> Telescope treesitter <CR>", "treesitter" },
    ["<C-<CR>>"] = { "<cmd> Telescope quickfix <CR>", "quickfix" },
  },
}

-- more keybinds!

return M
