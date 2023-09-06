return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      if type(opts.sources) == "table" then
        local nls = require("null-ls")
        vim.list_extend(opts.sources, {
          nls.builtins.code_actions.gomodifytags,
          nls.builtins.code_actions.impl,
          nls.builtins.formatting.gofumpt,
          nls.builtins.formatting.goimports_reviser,
          nls.builtins.formatting.golines.with({
            extra_args = {
              "--max-len=80",
              "--base-formatter=gofumpt",
            },
          }),
          nls.builtins.diagnostics.golangci_lint,
        })
      end
    end,
  },
}
