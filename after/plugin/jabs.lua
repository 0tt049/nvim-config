require'jabs'.setup{
  position = {'center','top'},

  relative = 'editor',
  clip_popup_size = false,

  width = 80,
  height = 20,
  border = 'single',

  offset = {
    top = 2,
    bottom = 2,
    left = 2,
    right = 2,
  },

  sort_mru = true,
  split_filename = true,
  split_filename_path_width = 20,

  preview_position = 'left',
  preview = {
    width = 40,
    height = 60,
    border = 'single',
  },

  highlight = {
    current = "Title",
    hidden = "StatusLineNC",
    split = "WarningMsg",
    alternate = "StatusLine"
  },

  symbols = {
    current = "C",
    split = "S",
    alternate = "A",
    hidden = "H",
    locked = "L",
    ro = "R",
    edited = "E",
    terminal = "T",
    default_file = "D",
    terminal_symbol = ">_"
  },

  keymap = {
    Open = "<space>o",
    close = "<c-d>",
    jump = "<space>",
    h_split = "h",
    v_split = "v",
    preview = "p",
  },
}
