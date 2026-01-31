return {
  {
    "lervag/vimtex",
    -- use `init` for vim.g.* so it’s set before VimTeX uses it
    init = function()
      -- These are Vim regexes. Match the log line(s) you want to hide.
      vim.g.vimtex_quickfix_ignore_filters = {
        [[Underfull \\hbox]], -- hide underfull hbox warnings
        -- [[Overfull \\hbox]], -- (optional) hide overfull hbox warnings too
        -- [[Underfull \\vbox]], -- (optional) hide underfull vbox warnings too
      }
    end,
  },
}
