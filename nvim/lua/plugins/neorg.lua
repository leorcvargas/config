return {
  {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("neorg").setup({
        load = {
          ["core.defaults"] = {}, -- Loads default behaviour
          ["core.concealer"] = {}, -- Adds pretty icons to your documents
          ["core.esupports.metagen"] = {}, -- Metagen module
          ["core.summary"] = {}, -- Summary module
          ["core.journal"] = {}, -- Journal module
          ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
              workspaces = {
                home = "~/notes/home",
                work = "~/notes/work",
              },
              default_workspace = "home",
            },
          },
        },
      })
    end,
  },
}
