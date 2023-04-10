local tree = require("nvim-tree")

tree.setup({
  sort_by = "modification_time",
  diagnostics = {
    enable = true
  },
  view = {
    width = 30,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
        { key = "o", action = "" },
      },
    },
  },
  renderer = {
    group_empty = true,
    highlight_git = true,
    indent_markers = {
      enable = true,
    }
  },
})
