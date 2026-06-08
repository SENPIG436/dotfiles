return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").setup({
        highlight = {
          enable = true,
        },
        
        ensure_installed = {
          "lua",
        },

        auto_install = true,
      })
    end,
  },
}
