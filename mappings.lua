-- local harpoon = require("harpoon")
local grapple = require("grapple")
return {
  n = {
    [";"] = { ":" },
    ["<leader>e"] = {
      "<cmd>Neotree reveal_force_cwd<cr>",
      desc = "Open file explorer",
    },
    ["<leader>bl"] = {
      "<cmd>Neotree buffers<cr>",
      desc = "List of buffers",
    },
    ["<leader>mm"] = {
      function()
        grapple.toggle()
        -- harpoon:list():append()
        --
      end,
    },
    ["<leader>ml"] = {
      function()
        grapple.popup_tags()
        -- harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
    },
    L = {
      function()
        -- harpoon:list():next()
        grapple.cycle_forward()
        -- require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1)
      end,
      desc = "Next buffer",
    },
    H = {
      function()
        grapple.cycle_backward()
        -- harpoon:list():prev()
        require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1))
      end,
      desc = "Previous buffer",
    },
    ["<leader>bd"] = {
      function()
        require("astronvim.utils.buffer").close()
      end,
      desc = "Close buffer",
    },
    ["<leader>udi"] = {
      function()
        vim.diagnostic.config({ virtual_text = false })
      end,
    },
  },
}
