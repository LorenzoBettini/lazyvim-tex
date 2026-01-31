return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.servers = opts.servers or {}
      opts.servers.texlab = opts.servers.texlab or {}

      local s = opts.servers.texlab.settings or {}
      local t = s.texlab or {}
      local d = t.diagnostics or {}

      d.ignoredPatterns = d.ignoredPatterns or {}
      table.insert(d.ignoredPatterns, [[Underfull \\hbox]])

      t.diagnostics = d
      s.texlab = t
      opts.servers.texlab.settings = s
    end,
  },
}
