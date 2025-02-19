return {
  "nvim-treesitter/nvim-treesitter",
  build = ":tsupdate", -- use the command
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {"lua", "cpp", "python"},
      highlight = { enable = true },
      indent = { enable = true }, -- auto indent after brackets
    })
  end
}
