vim.keymap.set("n", "<leader>j", "<Plug>(VM-Select-Cursor-Down)")
vim.keymap.set("n", "<leader>k", "<Plug>(VM-Select-Cursor-Up)")
return {

  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  --
  -- },
  {
    "fynnfluegge/monet.nvim",
    name = "monet",
    opts = {
      transparent_background = true,
    },
  },
  {
    "mg979/vim-visual-multi",
    lazy = false,
  },
  {
    "kamykn/spelunker.vim",
    lazy = false,
    config = function()
      vim.api.nvim_command("highlight SpelunkerSpellBad cterm=underline ctermfg=247 gui=underline guifg=#ff7376")
    end,
  },
  {
    "kevinhwang91/nvim-ufo",
    enabled = false,
    ft = {
      "html",
      "javascript",
      "typescript",
      "typescriptreact",
      "vue",
      "svelte",
      "lua",
      "tsx",
      "xml",
      "jsx",
      "tsx",
      "cs",
      "csharp",
      "rs",
      "rust",
      "go",
    },
    dependencies = { "kevinhwang91/promise-async" },
    config = function()
      local ufo = require("ufo")
      vim.keymap.set("n", "zR", ufo.openAllFolds)
      vim.keymap.set("n", "zM", ufo.closeAllFolds)
      require("ufo").setup({
        provider_selector = function(bufnr, filetype, buftype)
          return { "treesitter", "indent" }
        end,
      })
    end,
  },
  {
    "tpope/vim-surround",
    lazy = false,
    config = function() end,
  },
  -- {
  --   "ThePrimeagen/harpoon",
  --   branch = "harpoon2",
  --   required = { "nvim-lua/plenary.nvim" },
  --   config = function()
  --     require("harpoon").setup()
  --   end,
  -- },
  {
    "andymass/vim-matchup",
    ft = { "html", "javascript", "typescript", "typescriptreact", "vue", "svelte", "lua", "tsx", "xml", "jsx" },
    config = function() end,
  },
  {
    "cbochs/grapple.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
}
