return function()
  local filename = {
    "filename",
    path = 3,
  }
  require("lualine").setup {
    options = {
      icons_enabled = true,
      theme = "material",
      component_separators = { left = "", right = "" },
      section_separators = { left = "", right = "" },
      disabled_filetypes = {
        statusline = {},
        winbar = {},
      },
      ignore_focus = {},
      always_divide_middle = true,
      globalstatus = false,
      refresh = {
        statusline = 1000,
        tabline = 1000,
        winbar = 1000,
      },
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = { "branch", "diff", "diagnostics" },
      lualine_c = { filename },
      lualine_x = { "searchcount", "encoding", "filetype" },
      lualine_y = { "progress" },
      lualine_z = { "location", "buffers" },
    },
    inactive_sections = {
      lualine_a = { "mode" },
      lualine_b = {},
      lualine_c = { "filename" },
      lualine_x = { "encoding", "filetype" },
      lualine_y = { "progress" },
      lualine_z = { "location", "buffers" },
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {},
  }
end
